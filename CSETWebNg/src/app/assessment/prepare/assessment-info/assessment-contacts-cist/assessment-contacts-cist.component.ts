////////////////////////////////
//
//   Copyright 2022 Battelle Energy Alliance, LLC
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//
////////////////////////////////
import { Component, OnInit, ViewChildren, Output, EventEmitter } from "@angular/core";
import { MatDialog, MatDialogRef } from "@angular/material/dialog";
import { AlertComponent } from "../../../../dialogs/alert/alert.component";
import { ConfirmComponent } from "../../../../dialogs/confirm/confirm.component";
import { EmailComponent } from "../../../../dialogs/email/email.component";
import { AssessmentContactsResponse } from "../../../../models/assessment-info.model";
import { User } from "../../../../models/user.model";
import { AssessmentService } from "../../../../services/assessment.service";
import { AuthenticationService } from "../../../../services/authentication.service";
import { ConfigService } from "../../../../services/config.service";
import { EmailService } from "../../../../services/email.service";
import { EditableUser } from "../../../../models/editable-user.model";
import { ContactItemCistComponent } from "./contact-item-cist/contact-item-cist.component";

@Component({
  selector: "app-assessment-contacts-cist",
  templateUrl: "./assessment-contacts-cist.component.html",
  // tslint:disable-next-line:use-host-property-decorator
  host: { class: 'white-panel d-flex flex-column flex-11a' }
})
export class AssessmentContactsCistComponent implements OnInit {
  @Output() triggerChange = new EventEmitter();

  contacts: EditableUser[] = [];
  emailDialog: MatDialogRef<EmailComponent>;
  userRole: any;
  userEmail: string;
  adding: boolean = false;

  // all child contact item components
  @ViewChildren(ContactItemCistComponent) contactItems: ContactItemCistComponent[];


  constructor(
    private assessSvc: AssessmentService,
    private auth: AuthenticationService,
    private dialog: MatDialog
  ) { }

  ngOnInit() {
    if (this.assessSvc.id()) {
      this.assessSvc
        .getCistAssessmentContacts()
        .then((data: AssessmentContactsResponse) => {
          for (const c of data.contactList) {
            this.contacts.push(new EditableUser(c));
          }
          // this.contacts = data.contactList;
          this.userRole = data.currentUserRole;
          this.userEmail = this.auth.email();
        });
    }
  }

  changeOccurred() {
    this.triggerChange.next();
  }

  hasNewContact() {
    if (this.contacts && this.contacts.length >= 1) {
      return !this.contacts[this.contacts.length - 1].userId;
    }
    return false;
  }

  /**
   * User just clicked 'add contact'
   */
  newContact() {
    this.adding = true;

    // disable the existing contacts' controls while in add/edit mode
    this.contactItems.forEach(x => x.enableMyControls = false);

    this.contacts.push(
      new EditableUser({
        assessmentRoleId: 1,
        isPrimaryPoc: false,
        isSiteParticipant: false,
        isCistContact: true
      })
    );
  }

  /**
   * User just clicked 'Save' in the add/edit dialog area
   */
  saveNewContact(contact: EditableUser) {
    this.contacts[this.contacts.length - 1] = contact;

    this.assessSvc.createCistContact(contact).subscribe(
      (response: { contactList: User[] }) => {
        const returnContact = response.contactList[0];
        contact.contactId = returnContact.contactId;
        contact.userId = returnContact.userId;
        contact.assessmentContactId = returnContact.assessmentContactId;
        contact.assessmentId = returnContact.assessmentId;
        contact.contactId = returnContact.contactId;
        contact.isPrimaryPoc = returnContact.isPrimaryPoc;
        contact.siteName = returnContact.siteName;
        contact.organizationName = returnContact.organizationName;
        contact.cellPhone = returnContact.cellPhone;
        contact.reportsTo = returnContact.reportsTo;
        contact.emergencyCommunicationsProtocol = returnContact.emergencyCommunicationsProtocol;
        contact.isSiteParticipant = returnContact.isSiteParticipant;

        this.changeOccurred();
      },
      error => {
        this.dialog
          .open(AlertComponent, {
            data: "Error adding assessment contact: " + error
          })
          .afterClosed()
          .subscribe();
        console.log(
          "Error adding assessment contact: " + JSON.stringify(contact)
        );
      }
    );
    this.adding = false;

    // done adding - show the contacts' controls
    this.contactItems.forEach(x => x.enableMyControls = true);
  }

  /**
   * This fires when the user clicks the trashcan icon of an existing contact
   * or cancels out of the add dialog.
   */
  removeContact(contact: EditableUser, indx: number) {
    this.contactItems.forEach(x => x.enableMyControls = true);

    if (this.adding && contact.isNew) {
      this.contacts.splice(indx, 1);
      this.adding = false;
      this.changeOccurred();
      return;
    }
    this.adding = false;
    if (contact.firstName === undefined
      || contact.lastName === undefined
      || contact.primaryEmail === undefined
    ) {
      this.dropContact(contact);
      this.changeOccurred();
      return;
    }

    const dialogRef = this.dialog.open(ConfirmComponent);
    dialogRef.componentInstance.confirmMessage =
      "Are you sure you want to remove " +
      contact.firstName +
      " " +
      contact.lastName +
      " from this assessment?";

    dialogRef.afterClosed().subscribe(result => {
      if (result) {
        this.dropContact(contact);
        this.changeOccurred();
      }
    });
  }

  /**
   * Fires when the user clicks 'change' on one of the children contact items.
   */
  startEdit() {
    // disable the existing contacts' controls while in add/edit mode
    this.contactItems.forEach(x => x.enableMyControls = false);
  }

  /**
   * Fires when an edit of one of the children contact items is abandoned.
   */
  abandonEdit() {
    this.contactItems.forEach(x => x.enableMyControls = true);
  }

  /**
   * Fires when a contact's edit is complete.
   */
  editContact(contact: User) {
    this.assessSvc.updateCistContact(contact).subscribe(() => {
      this.contactItems.forEach(x => x.enableMyControls = true);
      this.changeOccurred();
    });
  }

  /**
   * Removes a contact from the assessment.
   */
  dropContact(contact: User) {
    // modify the client array
    this.contacts.splice(
      this.contacts.findIndex(c => c.assessmentContactId === contact.assessmentContactId),
      1
    );

    // update the API
    this.assessSvc.removeCistContact(contact.assessmentContactId).subscribe(
      (response: { ContactList: User[] }) => { this.changeOccurred(); },
      error => {
        this.dialog
          .open(AlertComponent, { data: {title: "Error removing assessment contact" }})
          .afterClosed()
          .subscribe();
        console.log(
          "Error removing assessment contact: " + JSON.stringify(contact)
        );
      }
    );
  }

  showControls() {
    if (this.userRole === 2) {
      return true;
    }
    return false;
  }
}