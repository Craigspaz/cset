import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-edm-toc',
  templateUrl: './edm-toc.component.html',
  styleUrls: ['../../reports.scss']
})
export class EdmTocComponent implements OnInit {

  /**
   * 
   */
  constructor() { }

  /**
   * 
   */
  ngOnInit(): void {
  }

  /**
   * 
   * @param el 
   */
  scroll(eId: string) {
    const element = document.getElementById(eId);
    if (element) {
      element.scrollIntoView({ behavior: 'smooth' });
    }
  }
}