/*
Run this script on:

(localdb)\INLLocalDB2022.CSETWeb12263    -  This database will be modified

to synchronize it with:

(localdb)\INLLocalDB2022.CSETWeb12300

You are recommended to back up your database before running this script

Script created by SQL Data Compare version 14.10.9.22680 from Red Gate Software Ltd at 10/10/2024 4:05:30 PM

*/
		
SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL Serializable
GO
BEGIN TRANSACTION

PRINT(N'Drop constraints from [dbo].[REQUIREMENT_QUESTIONS_SETS]')
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_NEW_QUESTION]
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_SETS]

PRINT(N'Drop constraints from [dbo].[PARAMETER_REQUIREMENTS]')
ALTER TABLE [dbo].[PARAMETER_REQUIREMENTS] NOCHECK CONSTRAINT [FK_Parameter_Requirements_NEW_REQUIREMENT]
ALTER TABLE [dbo].[PARAMETER_REQUIREMENTS] NOCHECK CONSTRAINT [FK_Parameter_Requirements_Parameters]

PRINT(N'Drop constraints from [dbo].[NEW_QUESTION_LEVELS]')
ALTER TABLE [dbo].[NEW_QUESTION_LEVELS] NOCHECK CONSTRAINT [FK_NEW_QUESTION_LEVELS_NEW_QUESTION_SETS]
ALTER TABLE [dbo].[NEW_QUESTION_LEVELS] NOCHECK CONSTRAINT [FK_NEW_QUESTION_LEVELS_UNIVERSAL_SAL_LEVEL]

PRINT(N'Drop constraints from [dbo].[NCSF_FULL_TO_MID]')
ALTER TABLE [dbo].[NCSF_FULL_TO_MID] NOCHECK CONSTRAINT [FK_NCSF_FULL_TO_MID_NCSF_CONVERSION_MAPPINGS_FULL]
ALTER TABLE [dbo].[NCSF_FULL_TO_MID] NOCHECK CONSTRAINT [FK_NCSF_FULL_TO_MID_NCSF_CONVERSION_MAPPINGS_MID]

PRINT(N'Drop constraints from [dbo].[NCSF_ENTRY_TO_MID]')
ALTER TABLE [dbo].[NCSF_ENTRY_TO_MID] NOCHECK CONSTRAINT [FK_NCSF_ENTRY_TO_MID_NCSF_CONVERSION_MAPPINGS_ENTRY]
ALTER TABLE [dbo].[NCSF_ENTRY_TO_MID] NOCHECK CONSTRAINT [FK_NCSF_ENTRY_TO_MID_NCSF_CONVERSION_MAPPINGS_MID]

PRINT(N'Drop constraints from [dbo].[MATURITY_QUESTIONS]')
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK__MATURITY___Matur__5B638405]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_GROUPINGS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_LEVELS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_MODELS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_OPTIONS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_QUESTION_TYPES]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_QUESTIONS]

PRINT(N'Drop constraint FK__HYDRO_DAT__Mat_Q__38652BE2 from [dbo].[HYDRO_DATA]')
ALTER TABLE [dbo].[HYDRO_DATA] NOCHECK CONSTRAINT [FK__HYDRO_DAT__Mat_Q__38652BE2]

PRINT(N'Drop constraint FK_MATURITY_QUESTIONS_MAT_QUESTION_ID from [dbo].[ISE_ACTIONS]')
ALTER TABLE [dbo].[ISE_ACTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MAT_QUESTION_ID]

PRINT(N'Drop constraint FK_MATURITY_ANSWER_OPTIONS_MATURITY_QUESTIONS1 from [dbo].[MATURITY_ANSWER_OPTIONS]')
ALTER TABLE [dbo].[MATURITY_ANSWER_OPTIONS] NOCHECK CONSTRAINT [FK_MATURITY_ANSWER_OPTIONS_MATURITY_QUESTIONS1]

PRINT(N'Drop constraint FK_MATURITY_QUESTION_PROPS_MATURITY_QUESTIONS from [dbo].[MATURITY_QUESTION_PROPS]')
ALTER TABLE [dbo].[MATURITY_QUESTION_PROPS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTION_PROPS_MATURITY_QUESTIONS]

PRINT(N'Drop constraint FK_MATURITY_REFERENCE_TEXT_MATURITY_QUESTIONS from [dbo].[MATURITY_REFERENCE_TEXT]')
ALTER TABLE [dbo].[MATURITY_REFERENCE_TEXT] NOCHECK CONSTRAINT [FK_MATURITY_REFERENCE_TEXT_MATURITY_QUESTIONS]

PRINT(N'Drop constraint FK_MATURITY_REFERENCES_MATURITY_QUESTIONS from [dbo].[MATURITY_REFERENCES]')
ALTER TABLE [dbo].[MATURITY_REFERENCES] NOCHECK CONSTRAINT [FK_MATURITY_REFERENCES_MATURITY_QUESTIONS]

PRINT(N'Drop constraint FK_MATURITY_SUB_MODEL_QUESTIONS_MATURITY_QUESTIONS from [dbo].[MATURITY_SUB_MODEL_QUESTIONS]')
ALTER TABLE [dbo].[MATURITY_SUB_MODEL_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_SUB_MODEL_QUESTIONS_MATURITY_QUESTIONS]

PRINT(N'Drop constraint FK_TTP_MAT_QUESTION_MATURITY_QUESTIONS from [dbo].[TTP_MAT_QUESTION]')
ALTER TABLE [dbo].[TTP_MAT_QUESTION] NOCHECK CONSTRAINT [FK_TTP_MAT_QUESTION_MATURITY_QUESTIONS]

PRINT(N'Drop constraints from [dbo].[GALLERY_GROUP_DETAILS]')
ALTER TABLE [dbo].[GALLERY_GROUP_DETAILS] NOCHECK CONSTRAINT [FK_GALLERY_GROUP_DETAILS_GALLERY_GROUP]
ALTER TABLE [dbo].[GALLERY_GROUP_DETAILS] NOCHECK CONSTRAINT [FK_GALLERY_GROUP_DETAILS_GALLERY_ITEM]

PRINT(N'Drop constraint FK_ASSESSMENT_PARAMETERS_PARAMETERS from [dbo].[PARAMETER_ASSESSMENT]')
ALTER TABLE [dbo].[PARAMETER_ASSESSMENT] NOCHECK CONSTRAINT [FK_ASSESSMENT_PARAMETERS_PARAMETERS]

PRINT(N'Drop constraint FK_PARAMETER_VALUES_PARAMETERS from [dbo].[PARAMETER_VALUES]')
ALTER TABLE [dbo].[PARAMETER_VALUES] NOCHECK CONSTRAINT [FK_PARAMETER_VALUES_PARAMETERS]

PRINT(N'Drop constraints from [dbo].[NEW_REQUIREMENT]')
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_NCSF_Category]
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_QUESTION_GROUP_HEADING]
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_SETS]
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_STANDARD_CATEGORY]

PRINT(N'Drop constraint FK_FINANCIAL_REQUIREMENTS_NEW_REQUIREMENT from [dbo].[FINANCIAL_REQUIREMENTS]')
ALTER TABLE [dbo].[FINANCIAL_REQUIREMENTS] NOCHECK CONSTRAINT [FK_FINANCIAL_REQUIREMENTS_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_NERC_RISK_RANKING_NEW_REQUIREMENT from [dbo].[NERC_RISK_RANKING]')
ALTER TABLE [dbo].[NERC_RISK_RANKING] NOCHECK CONSTRAINT [FK_NERC_RISK_RANKING_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_LEVELS_NEW_REQUIREMENT from [dbo].[REQUIREMENT_LEVELS]')
ALTER TABLE [dbo].[REQUIREMENT_LEVELS] NOCHECK CONSTRAINT [FK_REQUIREMENT_LEVELS_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_REFERENCE_TEXT_NEW_REQUIREMENT from [dbo].[REQUIREMENT_REFERENCE_TEXT]')
ALTER TABLE [dbo].[REQUIREMENT_REFERENCE_TEXT] NOCHECK CONSTRAINT [FK_REQUIREMENT_REFERENCE_TEXT_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_REFERENCES_NEW_REQUIREMENT from [dbo].[REQUIREMENT_REFERENCES]')
ALTER TABLE [dbo].[REQUIREMENT_REFERENCES] NOCHECK CONSTRAINT [FK_REQUIREMENT_REFERENCES_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_SETS_NEW_REQUIREMENT from [dbo].[REQUIREMENT_SETS]')
ALTER TABLE [dbo].[REQUIREMENT_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_SETS_NEW_REQUIREMENT]

PRINT(N'Drop constraints from [dbo].[NEW_QUESTION_SETS]')
ALTER TABLE [dbo].[NEW_QUESTION_SETS] NOCHECK CONSTRAINT [FK_NEW_QUESTION_SETS_NEW_QUESTION]
ALTER TABLE [dbo].[NEW_QUESTION_SETS] NOCHECK CONSTRAINT [FK_NEW_QUESTION_SETS_SETS]

PRINT(N'Drop constraints from [dbo].[MATURITY_MODELS]')
ALTER TABLE [dbo].[MATURITY_MODELS] NOCHECK CONSTRAINT [FK_MATURITY_MODELS_MATURITY_LEVEL_USAGE_TYPES]

PRINT(N'Drop constraint FK_ANALYTICS_MATURITY_GROUPINGS_MATURITY_MODELS from [dbo].[ANALYTICS_MATURITY_GROUPINGS]')
ALTER TABLE [dbo].[ANALYTICS_MATURITY_GROUPINGS] NOCHECK CONSTRAINT [FK_ANALYTICS_MATURITY_GROUPINGS_MATURITY_MODELS]

PRINT(N'Drop constraint FK__AVAILABLE__model__6F6A7CB2 from [dbo].[AVAILABLE_MATURITY_MODELS]')
ALTER TABLE [dbo].[AVAILABLE_MATURITY_MODELS] NOCHECK CONSTRAINT [FK__AVAILABLE__model__6F6A7CB2]

PRINT(N'Drop constraint FK_MATURITY_LEVELS_MATURITY_MODELS from [dbo].[MATURITY_LEVELS]')
ALTER TABLE [dbo].[MATURITY_LEVELS] NOCHECK CONSTRAINT [FK_MATURITY_LEVELS_MATURITY_MODELS]

PRINT(N'Drop constraint FK_MODES_SETS_MATURITY_MODELS_MATURITY_MODELS from [dbo].[MODES_SETS_MATURITY_MODELS]')
ALTER TABLE [dbo].[MODES_SETS_MATURITY_MODELS] NOCHECK CONSTRAINT [FK_MODES_SETS_MATURITY_MODELS_MATURITY_MODELS]

PRINT(N'Drop constraints from [dbo].[GEN_FILE]')
ALTER TABLE [dbo].[GEN_FILE] NOCHECK CONSTRAINT [FK_GEN_FILE_FILE_REF_KEYS]
ALTER TABLE [dbo].[GEN_FILE] NOCHECK CONSTRAINT [FK_GEN_FILE_FILE_TYPE]

PRINT(N'Drop constraint FILE_KEYWORDS_GEN_FILE_FK from [dbo].[FILE_KEYWORDS]')
ALTER TABLE [dbo].[FILE_KEYWORDS] NOCHECK CONSTRAINT [FILE_KEYWORDS_GEN_FILE_FK]

PRINT(N'Drop constraint FK_GEN_FILE_LIB_PATH_CORL_GEN_FILE from [dbo].[GEN_FILE_LIB_PATH_CORL]')
ALTER TABLE [dbo].[GEN_FILE_LIB_PATH_CORL] NOCHECK CONSTRAINT [FK_GEN_FILE_LIB_PATH_CORL_GEN_FILE]

PRINT(N'Drop constraint FK_MATURITY_REFERENCES_GEN_FILE from [dbo].[MATURITY_REFERENCES]')
ALTER TABLE [dbo].[MATURITY_REFERENCES] NOCHECK CONSTRAINT [FK_MATURITY_REFERENCES_GEN_FILE]

PRINT(N'Drop constraint FK_REQUIREMENT_REFERENCES_GEN_FILE from [dbo].[REQUIREMENT_REFERENCES]')
ALTER TABLE [dbo].[REQUIREMENT_REFERENCES] NOCHECK CONSTRAINT [FK_REQUIREMENT_REFERENCES_GEN_FILE]

PRINT(N'Drop constraint FK_SET_FILES_GEN_FILE from [dbo].[SET_FILES]')
ALTER TABLE [dbo].[SET_FILES] NOCHECK CONSTRAINT [FK_SET_FILES_GEN_FILE]

PRINT(N'Drop constraint FK_ASSESSMENTS_GALLERY_ITEM from [dbo].[ASSESSMENTS]')
ALTER TABLE [dbo].[ASSESSMENTS] NOCHECK CONSTRAINT [FK_ASSESSMENTS_GALLERY_ITEM]

PRINT(N'Update rows in [dbo].[MATURITY_QUESTIONS]')
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'Is two-factor authentication implemented for all privileged (e.g. system administrators) and remote users?' WHERE [Mat_Question_Id] = 1915
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>  <ul>  <li>Organization has implemented a documented System Lifecycle management process for applications and assets throughout the facility networks.  The process is enforced, reviewed, and updated at least annually.  As part of this process, any applications or assets that are no longer supported have been removed from the system.</li>    </ul>    <div class="sub-header-2">In Progress</div>  <ul>  <li>Organization has began drafting the required documented System Lifecycle management process for applications and assets throughout the facility networks.  Unsupported applications and assets have been identified and the removal process has started</li>    </ul>    <div class="sub-header-2">Scoped</div>  <ul>  <li>Organization has identified the required documented System Lifecycle management process for applications and assets throughout the facility networks.  Unsupported applications and assets have been identified</li>    </ul>    <div class="sub-header-2">Not Implemented</div>  <ul>  <li>Organization does not have a documented System Lifecycle management process for applications and assets throughout the facility networks.  Unsupported applications and assets have not been identified or removed.</li>  </ul>  </div>' WHERE [Mat_Question_Id] = 8500
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>  <ul>  <li>Organization has implemented an ongoing program to identify and inventory unused IT/OT services and devices on the networks, and then disable and/or remove them within a specified amount of time not to exceed 180 days.</li>    </ul>    <div class="sub-header-2">In Progress</div>  <ul>  <li>Facility has documented all systems, applications, and services running on their network and has started to disable all unnecessary systems, applications, and services.</li>    </ul>    <div class="sub-header-2">Scoped</div>  <ul>  <li>Facility has documented all systems, applications, and services running on their network and has not disables all unnecessary systems, applications, and services.</li>    </ul>    <div class="sub-header-2">Not Implemented</div>  <ul>  <li>Organization does not have a program to detect unused IT/OT services and devices on the networks.  Unused services and devices have not been removed.</li>  </ul>  </div>' WHERE [Mat_Question_Id] = 8501
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>  <ul>  <li>Organization has established a Mobile Device Management program that is enforced, documented, and reviewed and updated at least annually.  The MDM program requires asset and application inventory of any mobile device on the the network.  The program should also clearly define and publish an acceptable use policy for mobile devices. The program should also include policies about Bring Your Own Device (BYOD) requirements.</li>    </ul>    <div class="sub-header-2">In Progress</div>  <ul>  <li>Organization has  a Mobile Device Management program that enforcement has started. It is documented, and has a requirement to be reviewed and updated at least annually.  The MDM program requires asset and application inventory of any mobile device on the the network.  The program should also clearly define and publish an acceptable use policy for mobile devices. The program should also include policies about Bring Your Own Device (BYOD) requirements.</li>    </ul>    <div class="sub-header-2">Scoped</div>  <ul>  <li>Organization has documented  a Mobile Device Management program. It is currently unforced.   The MDM program requires asset and application inventory of any mobile device on the the network.  The program should also clearly define and publish an acceptable use policy for mobile devices. The program should also include policies about Bring Your Own Device (BYOD) requirements.</li>    </ul>    <div class="sub-header-2">Not Implemented</div>  <ul>  <li>Organization does not have a mobile device management program.  The organization doesn''t track either assets or applications, and has no insight into what devices may be present on their network.</li>  </ul>  </div>' WHERE [Mat_Question_Id] = 8502
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Are sensitive data, including credentials, not stored in plaintext anywhere in the organization and can it only be accessed by authenticated and authorized users?</li>
<li>Are credentials stored in a secure manner, such as with a credential/password manager or vault, or other privileged account management solution?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9880
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Do necessary communications paths between the IT and OT networks pass through an intermediary, such as a properly configured firewall, bastion host, “jump box,” or a demilitarized zone?  Do these get closely monitored, capture network logs, and only allow connections from approved assets?</li>
<li>Are all connections to the OT network denied by default unless explicitly allowed (e.g., by IP address and port) for specific system functionality?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9881
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>On all corporate email infrastructure are the following in place: (1) STARTTLS is enabled, (2) SPF and DKIM are enabled, and (3) DMARC is enabled and set to “reject"?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9882
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Are all unsuccessful logins logged and sent to an organization''s security team or relevant logging system?</li>
<li>Are security teams notified (e.g., by an alert) after a specific number of consecutive, unsuccessful login attempts in a short period (e.g., five failed attempts in two minutes)?</li>
<li>Is the alert logged and stored in the relevant security or ticketing system for retroactive analysis?</li>
<li>Does a system-enforced policy prevent future logins for the suspicious account?  (for some minimum time, or until the account is re-enabled by a privileged user, if such a policy is available, e.g., Windows 11 can automatically lock out accounts for 10 minutes after 10 incorrect logins over a 10-minute period. )</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9883
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>In addition to basic cybersecurity training, do personnel who maintain or secure OT as part of their regular duties receive OT-specific cybersecurity training on at least an annual basis?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9884
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organization implement MFA for access to assets using the strongest available method for that asset (see questions below for scope). MFA options sorted by strength, high to low, are as follows: 
   1. Hardware-based, phishing-resistant MFA (e.g., FIDO/WebAuthn or PKI based - see CISA guidance in “Resources”); 
   2. If such hardware-based MFA is not available, then mobile app-based soft tokens (preferably push notification with number matching) or emerging technology such as FIDO passkeys are used; 
   3. MFA via SMS or voice only used when no other options are possible. 

IT: All IT accounts leverage MFA to access organizational resources. Prioritize accounts with highest risk, such as privileged administrative accounts for key IT systems.</li>
<li>Same question as above but here answer for OT, if applicable.
OT: Within OT environments, MFA is enabled on all accounts and systems that can be accessed remotely, including vendors/maintenance accounts, remotely accessible user and engineering workstations, and remotely accessible human-machine interfaces (HMIs).</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9885
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Do all organizational employees and contractors receive at least annual trainings that cover basic security concepts, such as phishing, business email compromise, basic operational security (OPSEC), password security, etc., as well as foster an internal culture of security and cyber awareness?</li>
<li>Do new employees receive initial cybersecurity training within 10 days of onboarding and recurring training on at least an annual basis?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9886
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organization implement an administrative policy or automated process that requires approval before new hardware, firmware, or software/ software version is installed or deployed?</li>
<li>Does the organization maintain a risk-informed allowlist of approved hardware, firmware, and software that includes specification of approved versions, when technically feasible?</li>
<li>For OT assets specifically, are these actions also aligned with defined change control and testing activities?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9887
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Is there a system-enforced policy that disables Microsoft Office macros, or similar embedded code, enforced by default on all devices?</li>
<li>If macros must be enabled in specific circumstances, is there a policy for authorized users to request that macros are enabled on specific assets?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9888
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organization maintain an inventory of all assets with an IP address, including OT?</li>
<li>Is the inventory updated periodically, at least on a monthly basis?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9889
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organizations maintain policies and processes to ensure that unauthorized media and hardware are not connected to IT and OT assets, such as by limiting use of USB devices and removable media or disabling AutoRun?</li>
<li>OT: When feasible, does the organization establish procedures to remove, disable, or otherwise secure physical ports to prevent the connection of unauthorized devices, or establish procedures for granting access through approved exceptions?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9890
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organization maintain accurate documentation describing the baseline and current configuration details of all critical IT and OT assets?</li>
<li>Are periodic reviews and updates performed and tracked on a recurring basis?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9891
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Are access- and security-focused (e.g., IDS/IDPS, firewall, DLP, VPN) logs collected and stored for use in both detection and incident response activities (e.g., forensics)?</li>
<li>Are security teams notified when a critical log source is disabled, such as Windows Event Logging?</li>
<li>OT: For OT assets where logs are non-standard or not available, are network traffic and communications to and from logless assets collected?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9892
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Are logs stored in a central system, such as a security information and event management (SIEM) tool or central database, and can only be accessed or modified by authorized and authenticated users?</li>
<li>Are logs stored for a duration informed by risk or pertinent regulatory guidelines?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9893
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organizations provision unique and separate credentials for similar services and asset access on  IT and OT networks? (E.g., users do not (or cannot) reuse passwords for accounts, applications, services, etc.  Service accounts/machine accounts have passwords that are unique from all member user accounts.)</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9894
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organization apply a defined and enforced administrative process to all departing employees by the day of their departure that revokes and securely returns all physical badges, key cards, tokens, etc.,?</li>
<li>Does the organization apply a defined and enforced administrative process to all departing employees by the day of their departure that  disables all user accounts and access to organizational resources?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9895
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organization have a designated individual identified as responsible and accountable for planning, resourcing, and execution of cybersecurity activities?  (e.g., a CISO)</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9896
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organization have a designated individual identified as responsible and accountable for planning, resourcing, and execution of OT cybersecurity activities?  (this may be the same position as identified in 1.B)</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9897
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p>
<div class="sub-header-2">Implemented</div>  <ul>
<li>Does the organization enforce an organization-wide policy and/or process that requires changing default manufacturer passwords for any/all hardware, software, and firmware before putting on any internal or external network?  (This includes IT assets for OT, such as OT administration web pages)</li>
<li>In instances where changing default passwords is not feasible (e.g., a control system with a hard-coded password), does the organization implement and document appropriate compensating security controls, and monitor logs for network traffic and login attempts on those devices?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>    
<div class="sub-header-2">In Progress</div>  <ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>    
<div class="sub-header-2">Scoped</div>  <ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>    
<div class="sub-header-2">Not Implemented</div>  <ul>
<li>None of the above implementation levels are met.</li>
</ul>  
</div>' WHERE [Mat_Question_Id] = 9898
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p>
<div class="sub-header-2">Implemented</div>  <ul>
<li><p>Does the organization have a system-enforced policy that requires a minimum password length of 15* or more characters for all password-protected IT assets, and all OT assets where technically feasible?**  Organizations should consider leveraging passphrases and password managers to make it easier for users to maintain sufficiently long passwords.</p>
<p>* Modern attacker tools can crack eight-character passwords quickly. Length is a more impactful and important factor in password strength than complexity or frequent password rotations. Long passwords are also easier for users to create and remember.</p>
<p>** OT assets that use a central authentication mechanism (such as Active Directory) are most important to address. Examples of low-risk OT assets that may not be technically feasible include those in remote locations, such as on offshore rigs or wind turbines.</p>
</li>
<li>In instances where minimum password lengths are not technically feasible, are compensating controls applied and recorded, and all login attempts to those assets logged?</li>
<li>Are assets that cannot support passwords of sufficient strength length prioritized for upgrade or replacement?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>    
<div class="sub-header-2">In Progress</div>  <ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>    
<div class="sub-header-2">Scoped</div>  <ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>    
<div class="sub-header-2">Not Implemented</div>  <ul>
<li>None of the above implementation levels are met.</li>
</ul>  
</div>' WHERE [Mat_Question_Id] = 9899
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organization sponsor at least one “pizza party” or equivalent social gathering per year that is focused on strengthening working relationships between IT and OT security personnel, and is not a working event (such as providing meals during an incident response)?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9900
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>1.E (IT) Are all Known Exploited Vulnerabilities in internet-facing systems mitigated within a risk-informed span of time?</li>
<li>1.E (OT) For OT assets where patching is either not possible or may substantially compromise availability or safety, are compensating controls applied and recorded, such that the ability of threat actors to exploit the vulnerabilities is reduced?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9901
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organization maintain codified policy and procedures on to whom and how to report all confirmed cybersecurity incidents to appropriate external entities (e.g., state/federal regulators or SRMA''s as required, ISAC/ISAO, as well as CISA)?</li>
<li>Does the organization report known incidents to CISA as well as other necessary parties within time frames directed by applicable regulatory guidance or in the absence of guidance, as soon as safely capable?
(This goal will be revisited following full implementation of the Cyber Incident Reporting for Critical Infrastructure Act of 2022.)</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9902
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Consistent with NIST SP 800-53 Revision 5 (https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final), does the organization maintain a public, easily discoverable method for security researchers to notify (e.g., via email address or web form) its security teams of vulnerable, misconfigured, or otherwise exploitable assets?</li>
<li>Are valid submissions acknowledged and responded to in a timely manner, taking into account the completeness and complexity of the vulnerability?</li>
<li>Are validated and exploitable weaknesses mitigated consistent with their severity?</li>
<li>Does the organization protect security researchers sharing vulnerabilities discovered in good faith under Safe Harbor rules?</li>
<li>In instances where vulnerabilities are validated and disclosed, does the organization give public acknowledgement to the researcher who originally submitted the notification?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9903
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Do all organiztional assets on the public internet expose no exploitable services, such as RDP?  If exploitable services must be exposed, are appropriate compensating controls implemented to prevent common forms of abuse and exploitation?</li>
<li>Are all unnecessary OS applications and network protocols disabled on internet-facing assets?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9904
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organization have no OT assets on the public internet, unless explicitly required for operation?</li>
<li>Are all exceptions (i.e., OT assets on the public internet) justified and documented, anddo they have additional protections in place to prevent and detect exploitation attempts (e.g., logging, MFA, mandatory access via proxy or other intermediary)?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9905
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organization engage with a third party with demonstrated expertise in cybersecurity to regularly validate the effectiveness and coverage of its cybersecurity defenses?  (e.g., does a third party conduct penetration tests, bug bounties, incident simulations, or table-top exercises, both unannounced and announced tests?)</li>
<li>Are high-impact findings from previous tests mitigated in a timely manner and not re-observed in future tests?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9906
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organizations’ procurement documents include cybersecurity requirements and questions, which are evaluated in vendor selection such that, given two offerings of roughly similar cost and function, the more secure offering and/or supplier is preferred?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9907
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Do procurement documents and contracts, such as service-level agreements (SLAs), stipulate that vendors and/or service providers notify the procuring customer of security incidents within a risk-informed time frame, as determined by the organization?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9908
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organization''s procurement documents and contracts, such as SLAs, stipulate that vendors and/or service providers notify the procuring customer of confirmed security vulnerabilities in their assets within a risk informed time frame, as determined by the organization?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9909
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p>
<div class="sub-header-2">Implemented</div>  <ul>
<li>Does the organization deploy security.txt files that conform to the recommendations in RFC 9116 on all public-facing web domains?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>    
<div class="sub-header-2">In Progress</div>  <ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>    
<div class="sub-header-2">Scoped</div>  <ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>    
<div class="sub-header-2">Not Implemented</div>  <ul>
<li>None of the above implementation levels are met.</li>
</ul>  
</div>' WHERE [Mat_Question_Id] = 9910
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organization have, maintain, update, and regularly drill IT and OT cybersecurity incident response plans for both common and organization-specific (e.g., by sector, locality) threat scenarios and TTPs?</li>
<li>When conducted, are tests or drills as realistic as feasible?</li>
<li>Are IR plans drilled at least annually and are they updated within a risk-informed time frame following the lessons learned portion of any exercise or drill?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9911
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Are all systems that are necessary for operations backed up on a regular cadence, no less than once per year?</li>
<li>Are backups stored separately from the source systems and tested on a recurring basis, no less than once per year?</li>
<li>Does stored information for OT assets include at a minimum: configurations, roles, PLC logic, engineering drawings, and tools?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9912
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organization maintain accurate documentation describing updated network topology and relevant information across all IT and OT networks?</li>
<li>Are periodic reviews and updates performed and tracked on a recurring basis?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9913
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Is properly configured and up-to-date transport layer security (TLS) used toprotect data in transit, when technically feasible?</li>
<li>Does the organization also plan to identify any use of outdated or weak encryption, update these to sufficiently strong algorithms, and consider managing implications of post-quantum cryptography?</li>
<li>OT: To minimize the impact to latency and availability; is encryption used where feasible, usually for OT communications connecting with remote/external assets?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9914
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organization have a list of threat and cyber actor TTPs that are relevant to it?</li>
<li>Does the organization maintain the ability (such as via rules, alerting, or commercial prevention and detection systems) to detect instances of those key threats?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9915
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organization have no user accounts with administrator or super-user privileges?</li>
<li>Do administrators maintain separate user accounts for all actions and activities not associated with the administrator role (e.g., for business email, web browsing)?</li>
<li>Are privileges reevaluated on a recurring basis to validate continued need for a given set of permissions?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9916
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Implementation_Guides]=N'<p class="fst-italic">All bullets for an answer option must be satisfied to meet the criteria for that answer.</p><div class="sub-header-2">Implemented</div>
<ul>
<li>Does the organization develop, maintain, and execute plans to recover and restore to service business or mission-critical assets or systems that might be impacted by a cybersecurity incident?</li>
<li>Is the control in place, such that any remaining gaps are relatively minor?  (< 3% gaps)</li>
</ul>
<div class="sub-header-2">In Progress</div>
<ul>
<li>Is the organization actively working to implement this control, such that it is at least 10% implemented?</li>
</ul>
<div class="sub-header-2">Scoped</div>
<ul>
<li>Does the organization have a plan and funding allocated to implement this goal?  (i.e., at least a POA&M with allocated funding for it?)</li>
</ul>
<div class="sub-header-2">Not Implemented</div>
<ul>
<li>None of the above implementation levels are met.</li>
</ul>
' WHERE [Mat_Question_Id] = 9917
PRINT(N'Operation applied to 42 rows out of 42')

PRINT(N'Update row in [dbo].[GALLERY_GROUP_DETAILS]')
UPDATE [dbo].[GALLERY_GROUP_DETAILS] SET [Column_Index]=3 WHERE [Group_Detail_Id] = 115

PRINT(N'Update rows in [dbo].[NEW_REQUIREMENT]')
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=6 WHERE [Requirement_Id] = 36403
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=13 WHERE [Requirement_Id] = 36404
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=29 WHERE [Requirement_Id] = 36405
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=18 WHERE [Requirement_Id] = 36406
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=24 WHERE [Requirement_Id] = 36407
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=12 WHERE [Requirement_Id] = 36408
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=14 WHERE [Requirement_Id] = 36409
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=11 WHERE [Requirement_Id] = 36410
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=20 WHERE [Requirement_Id] = 36411
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=16 WHERE [Requirement_Id] = 36412
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=17 WHERE [Requirement_Id] = 36413
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=21 WHERE [Requirement_Id] = 36414
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=5 WHERE [Requirement_Id] = 36415
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=4 WHERE [Requirement_Id] = 36416
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=26 WHERE [Requirement_Id] = 36417
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=1 WHERE [Requirement_Id] = 36418
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=25 WHERE [Requirement_Id] = 36419
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=10 WHERE [Requirement_Id] = 36420
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=30 WHERE [Requirement_Id] = 36421
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=22 WHERE [Requirement_Id] = 36422
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=28 WHERE [Requirement_Id] = 36423
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=2 WHERE [Requirement_Id] = 36424
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=35 WHERE [Requirement_Id] = 36425
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=7 WHERE [Requirement_Id] = 36426
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=8 WHERE [Requirement_Id] = 36427
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=27 WHERE [Requirement_Id] = 36428
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=19 WHERE [Requirement_Id] = 36429
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=31 WHERE [Requirement_Id] = 36430
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=32 WHERE [Requirement_Id] = 36431
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=33 WHERE [Requirement_Id] = 36432
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=3 WHERE [Requirement_Id] = 36433
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=66 WHERE [Requirement_Id] = 36434
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=15 WHERE [Requirement_Id] = 36435
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=23 WHERE [Requirement_Id] = 36436
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=34 WHERE [Requirement_Id] = 36437
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=9 WHERE [Requirement_Id] = 36438
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=36 WHERE [Requirement_Id] = 36439
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=37 WHERE [Requirement_Id] = 36440
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=38 WHERE [Requirement_Id] = 36441
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=39 WHERE [Requirement_Id] = 36442
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=40 WHERE [Requirement_Id] = 36443
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=41 WHERE [Requirement_Id] = 36444
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=42 WHERE [Requirement_Id] = 36445
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=43 WHERE [Requirement_Id] = 36446
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=44 WHERE [Requirement_Id] = 36447
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=45 WHERE [Requirement_Id] = 36448
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=46 WHERE [Requirement_Id] = 36449
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=47 WHERE [Requirement_Id] = 36450
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=48 WHERE [Requirement_Id] = 36451
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=49 WHERE [Requirement_Id] = 36452
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=50 WHERE [Requirement_Id] = 36453
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=51 WHERE [Requirement_Id] = 36454
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=52 WHERE [Requirement_Id] = 36455
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=53 WHERE [Requirement_Id] = 36456
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=54 WHERE [Requirement_Id] = 36457
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=55 WHERE [Requirement_Id] = 36458
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=56 WHERE [Requirement_Id] = 36459
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=57 WHERE [Requirement_Id] = 36460
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=58 WHERE [Requirement_Id] = 36461
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=59 WHERE [Requirement_Id] = 36462
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=60 WHERE [Requirement_Id] = 36463
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=61 WHERE [Requirement_Id] = 36464
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=62 WHERE [Requirement_Id] = 36465
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=63 WHERE [Requirement_Id] = 36466
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=64 WHERE [Requirement_Id] = 36467
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=65 WHERE [Requirement_Id] = 36468
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=67 WHERE [Requirement_Id] = 36469
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=68 WHERE [Requirement_Id] = 36470
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=69 WHERE [Requirement_Id] = 36471
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=70 WHERE [Requirement_Id] = 36472
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=71 WHERE [Requirement_Id] = 36473
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=72 WHERE [Requirement_Id] = 36474
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=73 WHERE [Requirement_Id] = 36475
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=74 WHERE [Requirement_Id] = 36476
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=75 WHERE [Requirement_Id] = 36477
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=76 WHERE [Requirement_Id] = 36478
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=77 WHERE [Requirement_Id] = 36479
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=78 WHERE [Requirement_Id] = 36480
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=79 WHERE [Requirement_Id] = 36481
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=80 WHERE [Requirement_Id] = 36482
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=81 WHERE [Requirement_Id] = 36483
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=82 WHERE [Requirement_Id] = 36484
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=83 WHERE [Requirement_Id] = 36485
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=84 WHERE [Requirement_Id] = 36486
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=85 WHERE [Requirement_Id] = 36487
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=86 WHERE [Requirement_Id] = 36488
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=87 WHERE [Requirement_Id] = 36489
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=88 WHERE [Requirement_Id] = 36490
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=89 WHERE [Requirement_Id] = 36491
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=90 WHERE [Requirement_Id] = 36492
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=91 WHERE [Requirement_Id] = 36493
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=92 WHERE [Requirement_Id] = 36494
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=93 WHERE [Requirement_Id] = 36495
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=94 WHERE [Requirement_Id] = 36496
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=95 WHERE [Requirement_Id] = 36497
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=96 WHERE [Requirement_Id] = 36498
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=97 WHERE [Requirement_Id] = 36499
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=98 WHERE [Requirement_Id] = 36500
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=99 WHERE [Requirement_Id] = 36501
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=100 WHERE [Requirement_Id] = 36502
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=101 WHERE [Requirement_Id] = 36503
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=102 WHERE [Requirement_Id] = 36504
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=103 WHERE [Requirement_Id] = 36505
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=104 WHERE [Requirement_Id] = 36506
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=105 WHERE [Requirement_Id] = 36507
UPDATE [dbo].[NEW_REQUIREMENT] SET [Ranking]=106 WHERE [Requirement_Id] = 36508
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Is the security management plan exercised at least once per year?' WHERE [Requirement_Id] = 37243
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Has the security management plan been coordinated with local law enforcement?' WHERE [Requirement_Id] = 37246
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Is mail and/or packages stored in a secure area while awaiting further processing?' WHERE [Requirement_Id] = 37260
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Are all items secured immediately once delivered to the receiving point/loading dock by the courier?' WHERE [Requirement_Id] = 37261
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'What percentage of the facility is enclosed in fencing?  (Please explain in the comments section)' WHERE [Requirement_Id] = 37271
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Are all external air intakes at least 10 feet from the ground or have adequate access control to prevent unauthorized access?' WHERE [Requirement_Id] = 37280
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Is the footage monitored proactively (select "yes"), or only when an incident needs to be reviewed (select "no")?', [Supplemental_Info]=N'Monitoring the footage in real-time provides inceased situational awareness.' WHERE [Requirement_Id] = 37285
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Does the video surveillance system store footage for at least 30 days without being prompted to save the footage for a longer period of time?' WHERE [Requirement_Id] = 37290
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'When in full bloom, is all foliage and vegetation at a clear distance as to not interfere with the camera system?' WHERE [Requirement_Id] = 37307
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Are the alarm arming and de-arming codes issued on a limited basis and to the appropriate people?' WHERE [Requirement_Id] = 37315
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Is it policy to limit access to the facility to any group not affiliated with tenant organizations (i.e. gatherings in an auditorium, etc.)?' WHERE [Requirement_Id] = 37324
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Are all primary access doors secured and require a staff member (physically or electronically) to access as appropriate?' WHERE [Requirement_Id] = 37336
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Is proper standoff in place to prevent any unauthorized vehicle be placed (legally or illegally) within 400 feet of the facility?' WHERE [Requirement_Id] = 37351
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Does the facility designed in such a way to prevent one or more avenues of high speed approach?', [Supplemental_Info]=N'The security working group should explore options which best fit the needs of the organization and facility.' WHERE [Requirement_Id] = 37352
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Are some interior lights activated during off hours?' WHERE [Requirement_Id] = 37358
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'When in full bloom, is all foliage and vegetation at a clear distance as to not interfere with security lighting?' WHERE [Requirement_Id] = 37359
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Does the security working group actively participate in the planning process of all special events held at the facility that draw large crowds or increased visibility to the event/venue?' WHERE [Requirement_Id] = 37385
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Are local first responders made aware of the increase in population due to special events and/or potential threats?' WHERE [Requirement_Id] = 37386
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'When calling 911, can a caller simply pick up the phone and call without a prefix digit to get an outside line? (i.e. 8 or 9 to dial outside)' WHERE [Requirement_Id] = 37392
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Is the organization free of any surrounding areas/facilities/operations/objects, etc. beyond the control of the organization that could pose a potential hazard to the facility?' WHERE [Requirement_Id] = 37394
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Is the organization free of any high crime areas which could pose a potential hazard to the facility?' WHERE [Requirement_Id] = 37395
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Does the security working group oversee policy and operations for all situations  regarding employees having regular contact with children or other high vulnerability groups as part of their daily responsibilities/duties/tasks?                           ' WHERE [Requirement_Id] = 37411
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Are employees accused or convicted of any offense requiring compliance with sex offender registry/restrictions required by policy to notify the appropriate personnel?' WHERE [Requirement_Id] = 37413
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'How are uniforms stored in a secure manner before they are issued and after they are collected?' WHERE [Requirement_Id] = 37425
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Does the organization prohibit former employees from gaining casual access to the facility and sensitive areas?' WHERE [Requirement_Id] = 37426
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Are trees and roots located at an adequate distance of the lines/cables/pipes in such a way to prevent an interruption of services?' WHERE [Requirement_Id] = 37439
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Are utility assets in parking areas secured, to prevent being struck by a vehicle?' WHERE [Requirement_Id] = 37440
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Are utility assets in loading dock areas secured, to prevent being struck by a vehicle?' WHERE [Requirement_Id] = 37441
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Are utility assets secured from accidental damage, vandalism or sabotage?' WHERE [Requirement_Id] = 37442
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Are the dumpsters/recycling bins located at a safe distance to prevent a potential fire hazard? ' WHERE [Requirement_Id] = 37470
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Is the facility/grounds free from the threat of standing water or flooding? (Please explain in the comments section)' WHERE [Requirement_Id] = 37476
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Are exterior electrical outlets controlled by a switch or secured from unauthorized use?  ' WHERE [Requirement_Id] = 37480
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Are fuels and/or other hazardous items stored in a secure manner which meets or exceeds regulations?' WHERE [Requirement_Id] = 37481
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Is the facility free of any exterior areas near the facility that are infrequently observed by a staff member?' WHERE [Requirement_Id] = 37485
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Are all exterior doors equipped with outward facing hinges secured in a manner to prevent unauthorized access?' WHERE [Requirement_Id] = 37490
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Do all persons with access to PII have a valid need-to-know?' WHERE [Requirement_Id] = 37505
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Reference P/I 15.28 Cybersecurity Policy for requirements. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> The policy specifically addresses the unique properties and requirements of OT and the relationship to non-OT systems. OT access by vendors and maintenance staff can occur over a very large facility footprint or geographic area and into unobserved spaces such as mechanical/electrical rooms, ceilings, floors, field substations, switch and valve vaults, and pump stations. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: IA-1, PM-9, PM-24, PS-8, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The policy specifically addresses the unique properties and requirements of OT and the relationship to non-OT systems. OT access by vendors and maintenance staff can occur over a large facility footprint or geographic area and into unobserved spaces, such as mechanical or electrical rooms, ceilings, floors, field substations, switch and valve vaults, and pump stations. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Access Control Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:

1. [Selection (one or more): Organization-level; Mission/business process-level; System level] access control policy that:
(a) Addresses purpose, scope, roles, responsibilities, management commitment,
coordination among organizational entities, and compliance; and
(b) Is consistent with applicable laws, executive orders, directives, regulations, policies,
standards, and guidelines; and

2. Procedures to facilitate the implementation of the access control policy and the
associated access controls;
b. Designate an [Assignment: organization-defined official] to manage the development,
documentation, and dissemination of the access control policy and procedures; and
c. Review and update the current access control:
1. Policy [Assignment: organization-defined frequency] and following [Assignment: organization-defined events]; and
2. Procedures [Assignment: organization-defined frequency] and following [Assignment: organization-defined events].
' WHERE [Requirement_Id] = 37523
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Limit the number of concurrent sessions for each system account and/or account type to one session for both general and privileged users, unless documented in the SSP and approved by the AO. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> The number, account type, and privileges of concurrent sessions considers the roles and responsibilities of the affected individuals. Example compensating controls include providing increased auditing measures. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: SC-23

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The number, account type, and privileges of concurrent sessions consider the roles and responsibilities of the affected individuals. Example compensating controls include providing increased auditing measures. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Concurrent Session Control</b></p>Limit the number of concurrent sessions for each [Assignment: organization-defined account and/or account type] to [Assignment: organization-defined number].' WHERE [Requirement_Id] = 37524
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Prevent further access to the system by automatically initiating a device lock after 15 minutes of inactivity. [a: WMATA System Implementation Statement]</li>
<li>b. Retain the device lock until the user reestablishes access using established identification and authentication procedures. [b: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> This control assumes a staffed environment where users interact with system displays. This control may be tailored appropriately where systems do not have displays configured, systems are placed in an access-controlled facility or locked enclosure, or immediate operator response is required in emergency situations. Example compensating controls include locating the display in an area with physical access controls that limit access to individuals with permission and need-to-know for the displayed information. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AC-2, AC-7, IA-11, PL-4
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: This control assumes a staffed environment where users interact with system displays. This control may be tailored appropriately where systems do not have displays configured, systems are placed in an access-controlled facility or locked enclosure, or immediate operator response is required in emergency situations. Example compensating controls include locating the display in an area with physical access controls that limit access to individuals with permission and need-to-know for the displayed information. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Device Lock</b></p>a. Prevent further access to the system by [Selection (one or more): initiating a device lock after [Assignment: organization-defined time period] of inactivity; requiring the user to initiate a device lock before leaving the system unattended]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Conceal, via the device lock, information previously visible on the display with a publicly viewable image. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Physical protection may be employed to prevent access to a display or prevent attachment of a display. In situations where the OT cannot conceal displayed information, the organization employs nonautomated mechanisms or procedures as compensating controls in accordance with the general tailoring guidance. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Physical protection may be employed to prevent access to a display or the attachment of a display. When the OT cannot conceal displayed information, the organization employs nonautomated mechanisms or procedures as compensating controls in accordance with the general tailoring guidance. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Device Lock | Pattern-hiding Displays</b></p>Conceal, via the device lock, information previously visible on the display with a publicly viewable image.' WHERE [Requirement_Id] = 37526
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Automatically terminate a user session when it has been idle for more than 15 minutes, as a result of a targeted response to certain types of incidents, or time-of-day restrictions on system use as documented in the SSP. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Example compensating controls include providing increased auditing measures or limiting remote access privileges to key personnel. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: MA-4, SC-10, SC-23

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Example compensating controls include providing increased auditing measures or limiting remote access privileges to key personnel. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Session Termination</b></p>Automatically terminate a user session after [Assignment: organization-defined conditions or trigger events requiring session disconnect].' WHERE [Requirement_Id] = 37527
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Actions permitted within information systems or networks that do not require identification and authentication are: [a: WMATA System Implementation Statement]</li>
<li>i) General user and general public access to public websites or other publicly accessible WMATA systems, not otherwise protected by security controls; or [a.i: WMATA System Implementation Statement]</li>
<li>ii) Other defined and approved use cases. [a.ii: WMATA System Implementation Statement]</li>
<li>b. System/business owners must identify and provide justification in the Account Management Plan user actions that can be performed on systems not requiring identification and authentication. Justification must specify the following: [b: WMATA System Implementation Statement]</li>
<li>i) Actions that can be performed on the information system without identification and authentication limited to the extent necessary to accomplish Mission/Business Objectives; [b.i: WMATA System Implementation Statement]</li>
<li>ii) Identification of the responsible entity for ensuring access control and monitoring is conducted; [b.ii: WMATA System Implementation Statement]</li>
<li>iii) Supporting rationale for not requiring identification and authentication; and [b.iii: WMATA System Implementation Statement]</li>
<li>iv) Identification of compensating security controls at the directory and file level for all application specific and system accounts which do not require authentication. Implement only using least privilege, with access given only to necessary directories and files. [b.iv: WMATA System Implementation Statement]</li>

Related Controls: AC-8, IA-2, PL-2

', [Supplemental_Info]=N'<p><b>Permitted Actions Without Identification or Authentication</b></p>a. Identify [Assignment: organization-defined user actions] that can be performed on the system without identification or authentication consistent with organizational mission and business functions; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Establish and document usage restrictions, configuration/connection requirements, and implementation guidance for each type of remote access allowed; and [a: WMATA System Implementation Statement]</li>
<li>b. Authorize each type of remote access to the system prior to allowing such connections. Such connections shall include, but are not limited to: [b: WMATA System Implementation Statement]</li>
<li>i) For access to the WMATA network, users shall leverage Secure Socket Layer (SSL) VPN, IPSec VPN, or an alternate Virtual Infrastructure as approved by the AO under the following use cases: [b.i: WMATA System Implementation Statement]</li>
<li>(1) Third-party vendors who require access to WMATA systems and networks; [b.i.1: WMATA System Implementation Statement]</li>
<li>(2) Personnel or systems requiring secure Site-to-site connection; [b.i.2: WMATA System Implementation Statement]</li>
<li>(3) Users not using WMATA corporate systems; and [b.i.3: WMATA System Implementation Statement]</li>
<li>(4) Privileged remote access users [b.i.4: WMATA System Implementation Statement]</li>
<li>ii) Multi-factor Authentication (MFA) is required for remote access. [b.ii: WMATA System Implementation Statement]</li>
<li>iii) Data shall not be transferred from Virtual Infrastructure to a local device. [b.iii: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> In situations where the OT cannot implement any or all of the components of this control, the organization employs other mechanisms or procedures as compensating controls in accordance with the general tailoring practice. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AC-2, AC-3, AC-4, AC-18, AC-19, AC-20, CA-3, CM-10, IA-2, IA-3, IA-8, MA-4, PE-17, PL-2, PL-4, SC-10, SC-12, SC-13, SI-4
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: When the OT cannot implement any or all of the components of this control, the organization employs other mechanisms or procedures as compensating controls in accordance with the general tailoring guidance. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Remote Access</b></p>a. Establish and document usage restrictions, configuration/connection requirements, and implementation guidance for each type of remote access allowed; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Employ automated mechanisms to monitor and control remote access methods. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Example compensating controls include employing nonautomated mechanisms or procedures as compensating controls. Compensating controls could include limiting remote access to a specified period of time or placing a call from the OT site to the authenticated remote entity. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AU-2, AU-6, AU-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Example compensating controls include employing nonautomated mechanisms or procedures as compensating controls. Compensating controls could include limiting remote access to a specified period of time or placing a call from the OT site to the authenticated remote entity. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Remote Access | Monitoring and Control</b></p>Employ automated mechanisms to monitor and control remote access methods.' WHERE [Requirement_Id] = 37530
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Implement [Assignment: organization-defined mechanisms] to authenticate [Assignment: organization-defined remote commands]. [WMATA System Implementation Statement]

Related Controls: SC-12, SC-13, SC-23

<b><u>NIST 800-82 Rev 3:</u></b>
Rationale for adding AC-17 (10) to MOD and HIGH baselines: The ability to authenticate remote commands is important to prevent unauthorized commands that may have immediate or serious consequences, such as injury, death, property damage, the loss of high-value assets, the failure of mission or business functions, or compromise of sensitive information. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Remote Access | Authenticate Remote Commands</b></p>Implement [Assignment: organization-defined mechanisms] to authenticate [Assignment: organization-defined remote commands].' WHERE [Requirement_Id] = 37531
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Implement cryptographic mechanisms to protect the confidentiality and integrity of remote access sessions. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Encryption-based technologies should be used to support the confidentiality and integrity of remote access sessions. While OT devices often lack the ability to support modern encryption, additional devices (e.g., VPNs) can be added to support these features. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: SC-8, SC-12, SC-13

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Encryption-based technologies should be used to support the confidentiality and integrity of remote access sessions. While OT devices often lack the ability to support modern encryption, additional devices (e.g., VPNs) can be added to support these features. This control should not be confused with SC-8 – Transmission Confidentiality and Integrity, which discusses confidentiality and integrity requirements for general communications, including between OT devices. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Remote Access | Protection of Confidentiality and Integrity Using Encryption</b></p>Implement cryptographic mechanisms to protect the confidentiality and integrity of remote access sessions.' WHERE [Requirement_Id] = 37532
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Route remote accesses through authorized and managed network access control points. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Example compensating controls include connection-specific manual authentication of the remote entity. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: SC-7

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Example compensating controls include connection-specific manual authentication of the remote entity. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Remote Access | Managed Access Control Points</b></p>Route remote accesses through authorized and managed network access control points.' WHERE [Requirement_Id] = 37533
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Authorize the execution of privileged commands and access to security-relevant information via remote access only in a format that provides assessable evidence and for the following needs: [WMATA System Implementation Statement]

<li>(1) Administrators (security or system) managing devices in a secure zone via an AO- approved dedicated host (e.g., Virtual Desktop Infrastructure (VDI), jump server, or bastion host); and [1: WMATA System Implementation Statement]</li>
<li>(2) Document the rationale for remote access in the security plan for the system. [2: WMATA System Implementation Statement]</li>

Related Controls: AC-6, SC-12, SC-13


', [Supplemental_Info]=N'<p><b> Privileged Commands and Access</b></p>(a) Authorize the execution of privileged commands and access to security-relevant information via remote access only in a format that provides assessable evidence and for the following needs: [Assignment: organization-defined needs]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Provide the capability to disconnect or disable remote access to the system within [Assignment: organization-defined time period]. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Implementation of the remote access disconnect should not impact OT operations. OT personnel should be trained on how to use the remote access disconnect. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Implementation of the remote access disconnect should not impact OT operations. OT personnel should be trained on how to use the remote access disconnect. [NIST 800-82 Rev 3_OT Discussion: WMATA System Implementation Statement]

Rationale for adding AC-17 (9) to LOW, MOD, and HIGH baselines: As more OT systems become accessible remotely, the capability to disconnect or disable remote access is critical to managing risk and may be required to provide stable and safe operations. [NIST 800-82 Rev 3_Rationale: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Remote Access | Disconnect or Disable Access</b></p>Provide the capability to disconnect or disable remote access to the system within [Assignment: organization-defined time period].' WHERE [Requirement_Id] = 37535
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Establish and document configuration requirements, connection requirements, and implementation guidance for each type of wireless access; and [a: WMATA System Implementation Statement]</li>
<li>b. The AO shall authorize each type of wireless access to the system prior to allowing such connections. [b: WMATA System Implementation Statement]</li>
<li>c. The following wireless technologies are prohibited in the WMATA environment unless otherwise authorized by the CISO: [c: WMATA System Implementation Statement]</li>
<li>i) Microwave; [c.i: WMATA System Implementation Statement]</li>
<li>ii) Packet radio (ultra-high frequency, very high frequency, satellite communications, and Internet of Things (IoT) wireless radio frequency); [c.ii: WMATA System Implementation Statement]</li>
<li>iii) 802.11 technologies; [c.iii: WMATA System Implementation Statement]</li>
<li>iv) Bluetooth in accordance with NIST SP 800-121 Rev. 2, Guide to Bluetooth Security; and [c.iv: WMATA System Implementation Statement]</li>
<li>v) Cellular [c.v: WMATA System Implementation Statement]</li>
<li>d. No other forms of hotspots (e.g., Windows 10 as a hotspot) shall be permitted. [d: WMATA System Implementation Statement]</li>
<li>e. Tethering shall only be permitted between WMATA issued devices. Devices with network access used for tethering shall be on the WMATA corporate network. [e: WMATA System Implementation Statement]</li>
<li>f. In addition, the following requirements shall be met in the deployment, configuration, administration of wireless networks: [f: WMATA System Implementation Statement]</li>
<li>i) Wireless network design and implementation must incorporate WIPS. [f.i: WMATA System Implementation Statement]</li>
<li>ii) Only wireless access points authorized by the AO shall be connected to an internal WMATA network. [f.ii: WMATA System Implementation Statement]</li>
<li>iii) Only WMATA-owned or leased equipment with installed authentication certificates shall be permitted access to an internal WLAN. Systems and devices without approved authentication certificates shall be restricted to the WMATA guest network. [f.iii: WMATA System Implementation Statement]</li>
<li>iv) With the exception of public and guest wireless access, all wireless networks shall use authentication protocols that provide authenticator protection and mutual authentication. [f.iv: WMATA System Implementation Statement]</li>
<li>v) Contractors, vendors and visitors to WMATA facilities permitted to use personal or non- WMATA issued devices shall be restricted to the WMATA guest network. [f.v: WMATA System Implementation Statement]</li>
<li>vi) All system configurations shall be hardened using DISA STIGs as specified in Control 3.4 Configuration Management, Section 6, “CM-6 Configuration Settings.” [f.iv: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> In situations where OT cannot implement any or all of the components of this control, the organization employs other mechanisms or procedures as compensating controls in accordance with eh the general tailoring guidance. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AC-2, AC-3, AC-17, AC-19, CA-9, CM-6, CM-7, IA-2, IA-3, IA-8, PL-4, SI-4
<li>g. Security Controls Enhancement(s): [g: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: When OT cannot implement any or all of the components of this control, the organization employs other mechanisms or procedures as compensating controls in accordance with the general tailoring guidance. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Wireless Access</b></p>a. Establish configuration requirements, connection requirements, and implementation guidance for each type of wireless access; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>(1) Protect wireless access to the system using authentication of devices leveraging requirements in accordance with Control 3.17 System and Communications Protection, Section 10, “SC-13 Cryptographic Protection”; and [1: WMATA System Implementation Statement]</li>
<li>(2) Enhance the protection of wireless access to the system using authentication of users if deemed necessary by the AO [2: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Implementation of authentication and encryption is driven by the OT environment. There are some scenarios where devices and users cannot all be authenticated and encrypted due to operational or technology constraints. In such scenarios, compensating controls include providing increased auditing for wireless access, limiting wireless access privileges to key personnel, or using AC-18 (5) to reduce the boundary of wireless access. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: SC-8, SC-12, SC-13

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The implementation of authentication and encryption is driven by the OT environment. If devices and users cannot all be authenticated and encrypted due to operational or technology constraints, compensating controls include providing increased auditing for wireless access, limiting wireless access privileges to key personnel, or using AC-18 (5) to reduce the boundary of wireless access. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Wireless Access | Authentication and Encryption</b></p>Protect wireless access to the system using authentication of [Selection (one or more): users; devices] and encryption.' WHERE [Requirement_Id] = 37537
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Disable, when not intended for use, wireless networking capabilities embedded within system components prior to issuance and deployment. [WMATA System Implementation Statement]



', [Supplemental_Info]=N'<p><b> Disable Wireless Networking</b></p>Disable, when not intended for use, wireless networking capabilities embedded within system components prior to issuance and deployment.' WHERE [Requirement_Id] = 37538
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Identify and explicitly authorize users allowed to independently configure wireless networking capabilities. [WMATA System Implementation Statement]

Related Controls: SC-7, SC-15

', [Supplemental_Info]=N'<p><b> Restrict Configurations by Users</b></p>Identify and explicitly authorize users allowed to independently configure wireless networking capabilities.' WHERE [Requirement_Id] = 37539
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Select radio antennas and calibrate transmission power levels to reduce the probability that signals from wireless access points can be received outside of organization-controlled boundaries. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Availability and interference for wireless signals may be a concern within OT environments. Antennas and power levels should be designated to overcome and achieve availability goals. Where confidentiality is concerned, antennas and power levels can also be designed to minimize signal exposure outside of the facility. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Availability and interference for wireless signals may be a concern within OT environments. Antennas and power levels should be designed to overcome and achieve availability goals. Where confidentiality is concerned, antennas and power levels can also be designed to minimize signal exposure outside of the facility. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Wireless Access | Antennas and Transmission Power Levels</b></p>Select radio antennas and calibrate transmission power levels to reduce the probability that signals from wireless access points can be received outside of organization-controlled boundaries.' WHERE [Requirement_Id] = 37540
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Establish configuration requirements, connection requirements, and implementation guidance for organization-controlled mobile devices, to include when such devices are outside of controlled areas; [a: WMATA System Implementation Statement]</li>
<li>i) All mobile devices shall receive updates minimally every 30 days, or more frequently based on the risk profile of the system as determined by the AO. [a.i: WMATA System Implementation Statement]</li>
<li>ii) Emergency updates may require a system to connect or be capable of connecting in advance of scheduled updates. [a.ii: WMATA System Implementation Statement]</li>
<li>iii) All mobile devices must connect to the WMATA network via VPN, direct connection, or must have updates managed by an approved Mobile Device Management (MDM) solution. [a.iii: WMATA System Implementation Statement]</li>
<li>b. Authorize the connection of mobile devices to organizational systems; [b: WMATA System Implementation Statement]</li>
<li>c. All mobile devices shall be configured with a secure baseline in accordance with Control 3.4 Configuration Management, Section 6, “CM-6 Configuration Settings”; [c: WMATA System Implementation Statement]</li>
<li>d. Enable wireless connectivity in compliance with Control 3.1 Access Control, Section 14, “AC- 18 Wireless Access”; [d: WMATA System Implementation Statement]</li>
<li>e. All mobile devices shall have a screen lock and/or timeout set in accordance with Control 3.1 Access Control, Section 11, “AC-12 Session Termination”; and [e: WMATA System Implementation Statement]</li>
<li>f. Purge or wipe information from mobile devices remotely if systems or components are lost or obtained by unauthorized individuals. [f: WMATA System Implementation Statement]</li>
Related Controls: AC-3, AC-4, AC-7, AC-11, AC-12, AC-17, AC-18, AC-20, CA-9, CM-2, CM-6, IA-2, IA-3, MP-2, MP-4, MP-5, MP-7, PL-4, SC-7, SI-3, SI-4
<li>g. Security Controls Enhancement(s): [g: WMATA System Implementation Statement]</li>

', [Supplemental_Info]=N'<p><b>Access Control for Mobile Devices</b></p>a. Establish configuration requirements, connection requirements, and implementation guidance for organization-controlled mobile devices, to include when such devices are outside of controlled areas; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>(1) Employ full-device encryption or container-based encryption to protect the confidentiality and integrity of information on all devices (e.g., laptops, desktops, servers, mobile devices, tablets, thumb drives, etc.) which are authorized to process and store WMATA data, specifically: [1: WMATA System Implementation Statement]</li>
<li>(a) Devices leveraging Microsoft Windows shall employ full disk encryption via BitLocker; [1.a: WMATA System Implementation Statement]</li>
<li>(b) Devices leveraging non-Windows operating systems shall leverage full disk encryption as approved by the AO; [1.b: WMATA System Implementation Statement]</li>
<li>(c) Personal or WMATA owned mobile devices shall leverage container-based encryption using an MDM solution. Container configuration shall consider access to, processing, storage and transmission capabilities of WMATA data (e.g., email, text, pictures, documents, downloads, on-board sensors that allow the device to capture information, and/or built-in features for synchronizing local data with remote locations). Container based solutions shall include functionality for the remote wiping, purging, or disablement of the container and all contents therein. [1.c: WMATA System Implementation Statement]</li>
<li>(2) When available, systems shall employ products on the NIST Cryptographic Module Validation Program, WMATA Approved Product List, and as defined in WMATA policy. [2: WMATA System Implementation Statement]</li>

Related Controls: SC-12, SC-13, SC-28

', [Supplemental_Info]=N'<p><b> Full Device or Container-based Encryption</b></p>Employ [Selection: full-device encryption; container-based encryption] to protect the confidentiality and integrity of information on [Assignment: organization-defined mobile devices].' WHERE [Requirement_Id] = 37542
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Define and document the types of accounts allowed and specifically prohibited for use within the system; [a: WMATA System Implementation Statement]</li>
<li>b. Assign account managers; [b: WMATA System Implementation Statement]</li>
<li>c. Require approval and role-based training for group and role membership; [c: WMATA System Implementation Statement]</li>
<li>d. Specify: [d: WMATA System Implementation Statement]</li>
<li>i) Authorized users of the system; [d.i: WMATA System Implementation Statement]</li>
<li>ii) Group and role membership; and [d.ii: WMATA System Implementation Statement]</li>
<li>iii) Access authorizations (i.e., privileges and entitlements) and account attributes for each account when applicable. [d.iii: WMATA System Implementation Statement]</li>
<li>e. Require approvals by required stakeholders with access control responsibilities of the accreditation boundary for requests to create accounts; [e: WMATA System Implementation Statement]</li>
<li>f. Create, enable, modify, disable, and remove accounts in accordance with: [f: WMATA System Implementation Statement]</li>
<li>i) Control 3.1 Access Control, Section 5, “AC-5 Separation of Duties” and Section 6, “AC- 6 Least Privilege”; [f.i: WMATA System Implementation Statement]</li>
<li>ii) Standard Operating Procedures (SOP) and Work Instructions (WI); and [f.ii: WMATA System Implementation Statement]</li>
<li>iii) Security Configuration Checklists to include Defense Information Systems Agency (DISA) Security Technical Implementation Guides (STIGs) and Center for Internet Security (CIS) Benchmarks; [f.iii: WMATA System Implementation Statement]</li>
<li>g. Monitor the use of accounts; [g: WMATA System Implementation Statement]</li>
<li>h. Notify account managers, other required stakeholders, and designated organizational personnel with access control responsibilities of the accreditation boundary immediately, but no later than twenty-four hours when: [h: WMATA System Implementation Statement]</li>
<li>i) accounts are no longer required; [h.i: WMATA System Implementation Statement]</li>
<li>ii) users are terminated or transferred; and [h.ii: WMATA System Implementation Statement]</li>
<li>iii) system usage or need-to-know changes for an individual; [h.iii: WMATA System Implementation Statement]</li>
<li>i. Authorize access to the system based on the following: [i: WMATA System Implementation Statement]</li>
<li>i) A valid access authorization; [i.i: WMATA System Implementation Statement]</li>
<li>ii) Intended system usage (i.e., based on role, type of account, time of day, day of week, and point of origin); and [i.ii: WMATA System Implementation Statement]</li>
<li>iii) Control 3.1 Access Control, Section 5, “AC-5 Separation of Duties” and Section 6, “AC- 6 Least Privilege”. [i.iii: WMATA System Implementation Statement]</li>
<li>j. Review accounts for compliance with account management requirements: [j: WMATA System Implementation Statement]</li>
<li>i) Annual recertification is required for all user accounts; and [j.i: WMATA System Implementation Statement]</li>
<li>ii) Quarterly recertification is required for all privileged user accounts in accordance with Control 3.1 Access Control, Section 6, “AC-6 Least Privilege”. [ j.ii: WMATA System Implementation Statement]</li>
<li>k. Establish and implement a process for changing shared or group account authenticators (if deployed) when individuals are removed from the group in accordance with Control 3.9 Identification and Authentication, Section 5, “IA-5 Authenticator Management”; and [k: WMATA System Implementation Statement]</li>
<li>l. Align account management processes with personnel termination and transfer processes. [l: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> In OT systems, physical security, personnel security, intrusion detection, or auditing measures may assist in supporting this control objective. [OT Systems Only 1: WMATA System Implementation Statement]
<b><u>OT Systems Only:</u></b> OT systems may assist in supporting this control objective through physical security, personnel security, intrusion detection, or auditing. [OT Systems Only 2: WMATA System Implementation Statement]
Related Controls : AC-3, AC-5, AC-6, AC-17, AC-18, AC-20, AU-2, AU-12, CM-5, IA-2, IA-4, IA-5, IA-8, MA-3, MA-5, PE-2, PL-4, PS-2, PS-4, PS-5, PS-7, PT-2, PT-3, SC-7, SC-12, SC-13
<li>m. Security Controls Enhancement(s): [m: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: In OT systems, physical security, personnel security, intrusion detection, or auditing measures may support this control objective. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Account Management</b></p>a. Define and document the types of accounts allowed and specifically prohibited for use within the system;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Automate the management of system accounts. [WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b> Automated System Account Management</b></p>Support the management of system accounts using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37544
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>(1) Enforce only authorized access as specified in Control 3.1 Access Control, Section 2, “AC-2 Account Management”, for all accounts. [1: WMATA System Implementation Statement]</li>
<li>(2) No users of WMATA systems have an inherent right to WMATA electronic access, and such access is at the discretion of executive and senior leadership. [2: WMATA System Implementation Statement]</li>
<li>(3) Information technology equipment availability and/or limitations may preclude an employee or contractor from having electronic access. [3: WMATA System Implementation Statement]</li>
<li>(4) Use of WMATA electronic access for non-WMATA purposes may be revoked or limited at any time by appropriate WMATA department heads/office directors. [4: WMATA System Implementation Statement]</li>

', [Supplemental_Info]=N'<p><b> Usage Conditions</b></p>Enforce [Assignment: organization-defined circumstances and/or usage conditions] for [Assignment: organization-defined system accounts].' WHERE [Requirement_Id] = 37545
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>(1) Monitor all accounts for atypical or suspicious usage; and [1: WMATA System Implementation Statement]</li>
<li>(2) Report atypical usage of accounts to required stakeholders. [2: WMATA System Implementation Statement]</li>

Related Controls: AU-6, AU-7, CA-7, IR-8, SI-4

', [Supplemental_Info]=N'<p><b> Account Monitoring for Atypical Usage</b></p>(a) Monitor system accounts for [Assignment: organization-defined atypical usage]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Disable accounts of individuals as referenced in Control 3.1 Access Control, Section 2, “AC-2 (3) Disable Accounts." [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Close coordination occurs between OT, Human Resources (HR), IT, and Physical Security personnel to ensure timely removal of high-risk individuals. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AU-6, SI-4

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Close coordination occurs between OT, HR, IT, and physical security personnel to ensure the timely removal of high-risk individuals. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Disable Accounts for High-risk Individuals</b></p>Disable accounts of individuals within [Assignment: organization-defined time period] of discovery of [Assignment: organization-defined significant risks].' WHERE [Requirement_Id] = 37547
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Under normal usage temporary or emergency accounts are not authorized except where approved by the CISO. The removal or disabling of such accounts shall be automatic after a predefined time period. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> In situations where the OT (e.g., field devices) cannot support temporary or emergency accounts, this enhancement does not apply. Example compensating controls include employing nonautomated mechanisms or procedures. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: When the OT (e.g., field devices) cannot support temporary or emergency accounts, this enhancement does not apply. Example compensating controls include employing nonautomated mechanisms or procedures. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Automated Temporary and Emergency Account Management</b></p>Automatically [Selection: remove; disable] temporary and emergency accounts after [Assignment: organization-defined time period for each type of account].' WHERE [Requirement_Id] = 37548
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Accounts will be disabled when they: [1: WMATA System Implementation Statement]</li>
<li>(a) Have expired; [1.a: WMATA System Implementation Statement]</li>
<li>(b) Are no longer associated with a user or individual; or [1.b: WMATA System Implementation Statement]</li>
<li>(c) Are in violation of organizational policy. [1.c: WMATA System Implementation Statement]</li>
<li>(2) Accounts shall be disabled within designated timeframes based on the following: [2: WMATA System Implementation Statement]</li>
<li>(a) For high categorized systems, high-risk individuals and privileged accounts, access shall be disabled within 30 minutes. [2.a: WMATA System Implementation Statement]</li>
<li>(b) For systems categorized as moderate, access shall be disabled within 60 minutes. [2.b: WMATA System Implementation Statement]</li>
<li>(c) For all other systems, access shall be disabled no later than 24 hours. [2.c: WMATA System Implementation Statement]</li>
<li>(3) Inactive accounts shall be disabled: [3: WMATA System Implementation Statement]</li>
<li>(a) For general users, not to exceed 90 days of inactivity; and [3.a: WMATA System Implementation Statement]</li>
<li>(b) For privileged users, 90 days or less of inactivity, based on the categorization of the system, individual risk levels, and account type. [3.b: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b> Disable Accounts</b></p>Disable accounts within [Assignment: organization-defined time period] when the accounts:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Information systems shall automatically audit account creation, modification, enabling, disabling, and removal actions, and notify the appropriate personnel of these events. [WMATA System Implementation Statement]

Related Controls: AU-2, AU-6

', [Supplemental_Info]=N'<p><b> Automated Audit Actions</b></p>Automatically audit account creation, modification, enabling, disabling, and removal actions.' WHERE [Requirement_Id] = 37550
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Require that users are logged out when the session inactivity time has exceeded the designated threshold as established by the AO. At a minimum, users are required to log out after 24 hours. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> This control enhancement defines situations or timeframes in which users log out of accounts in policy; automatic enforcement is not addressed by this control enhancement. Organizations determine if this control enhancement is appropriate for the mission and/or functions of the OT system and define the timeframe or scenarios. If no timeframe or scenario(s) apply, the organization-defined parameter reflects as such. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-11 

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: This control enhancement defines situations or timeframes in which users log out of accounts in the policy. Automatic enforcement is not addressed by this control enhancement. Organizations determine whether this control enhancement is appropriate for the mission and/or functions of the OT system and define the timeframe or scenarios. If no timeframe or scenarios apply, the organization-defined parameter reflects as much. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Inactivity Logout</b></p>Require that users log out when [Assignment: organization-defined time period of expected inactivity or description of when to log out].' WHERE [Requirement_Id] = 37551
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Establish terms, conditions, and controls that shall be implemented on external systems, consistent with the trust relationships established with other organizations owning, operating, and/or maintaining external systems, allowing authorized individuals to: [a: WMATA System Implementation Statement]</li>
<li>i) Access the system from external systems; and a.i) [a.i: WMATA System Implementation Statement]</li>
<li>ii) Process, store, or transmit organization-controlled information using external systems; or a.ii) [a.ii: WMATA System Implementation Statement]</li>
<li>b. Prohibit the use of unauthorized systems and devices. [b: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b>Organizations refine the definition of “external” to reflect lines of authority and responsibility; granularity of organization entity; and their relationships. An organization may consider a system to be external if that system performs different functions, implements different policies, falls under different management authorities, or does not provide sufficient visibility into the implementation of controls to allow the establishment of a satisfactory trust relationship. For example, an OT system and a business data processing system may be considered external to each other depending on the organization’s system boundaries. [OT Systems Only 1: WMATA System Implementation Statement]
Access to an OT for support by a business partner, such as a vendor or support contractor, is another common example. The definition and trustworthiness of external systems is reexamined with respect to OT functions, purposes, technology, and limitations to establish a clearly documented technical or business case for use and acceptance of the risk inherent in the use of an external system. [OT Systems Only 2: WMATA System Implementation Statement]
Related Controls: AC-2, AC-3, AC-17, AC-19, CA-3, PL-2, PL-4, SA-9, SC-7
<li>c. Security Controls Enhancement(s): [WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Organizations refine the definition of “external” to reflect lines of authority and responsibility, the granularity of an organization entity, and their relationships. An organization may consider a system to be external if that system performs different functions, implements different policies, falls under different management authorities, or does not provide sufficient visibility into the implementation of controls to allow the establishment of a satisfactory trust relationship. For example, an OT system and a business data processing system may be considered external to each other depending on the organization’s system boundaries. [NIST 800-82 Rev 3_OT Discussion: WMATA System Implementation Statement]

Access to an OT for support by a business partner, such as a vendor or support contractor, is another common example. The definition and trustworthiness of external systems is reexamined with respect to OT functions, purposes, technology, and limitations to establish a clearly documented technical or business case for use and an acceptance of the risk inherent in the use of an external system. [NIST 800-82 Rev 3_Access to OT: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Use of External Systems</b></p>a. [Selection (one or more): Establish [Assignment: organization-defined terms and conditions]; Identify [Assignment: organization-defined controls asserted to be implemented on external systems]], consistent with the trust relationships established with other organizations owning, operating, and/or maintaining external systems, allowing authorized individuals to:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>(1) Permit authorized individuals to use an external system to access the system or to process, store, or transmit organization-controlled information only after: [1: WMATA System Implementation Statement]</li>
<li>(a) Verification of the implementation of controls on the external system as specified in the organization’s security and privacy policies and security and privacy plans; or [1.a: WMATA System Implementation Statement]</li>
<li>(b) Retention of approved system connection or processing agreements with the organizational entity hosting the external system. [1.b: WMATA System Implementation Statement]</li>

Related Controls: CA-2

', [Supplemental_Info]=N'<p><b> Limits on Authorized Use</b></p>Permit authorized individuals to use an external system to access the system or to process, store, or transmit organization-controlled information only after:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>(1) Restrict the use of organization-controlled portable storage devices on external systems using encryption. [1: WMATA System Implementation Statement]</li>

Related Controls: MP-7, SC-41

', [Supplemental_Info]=N'<p><b> Portable Storage Devices — Restricted Use</b></p>Restrict the use of organization-controlled portable storage devices by authorized individuals on external systems using [Assignment: organization-defined restrictions].' WHERE [Requirement_Id] = 37554
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Enable authorized users to determine whether access authorizations assigned to a sharing partner match the information’s access and use restrictions for information sharing circumstances; and [a: WMATA System Implementation Statement]</li>
<li>b. Employ automated mechanisms when possible, to assist users in making information sharing and collaboration decisions. [b: WMATA System Implementation Statement]</li>
<li>c. Information sharing shall apply to information that may be restricted in some manner based on formal or administrative determination. Examples of such information include, contract- sensitive information, Health Insurance Portability and Accountability Act (HIPAA) information, Payment card industry (PCI) information, privileged information, proprietary information, and personally identifiable information. [c: WMATA System Implementation Statement]</li>
<li>d. Organizational data and systems approved for sharing with external partners must have written agreements regarding the responsibilities of the external partner that address the business, security and technical requirements regarding the use and custodial responsibilities of the data and systems. [d: WMATA System Implementation Statement]</li>
<li>e. If the sharing of data or systems with external partners is a component of a service, and not otherwise governed by legal requirements, the organizations may choose to use a Service Level Agreement (SLA) that clearly defines the responsibilities, services, priorities and performance metrics of the services to be provided. [e: WMATA System Implementation Statement]</li>
<li>f. Organization software or information systems that allow the sharing of files and data containing restricted and/or highly restricted information shall be used to share data only if the appropriate security controls, as documented in the SSP, are properly configured and implemented. Appropriate security controls shall include the following: [f: WMATA System Implementation Statement]</li>
<li>i) Authentication controls to ensure that authorized users are identified. [f.i: WMATA System Implementation Statement]</li>
<li>ii) Access controls to limit an individual’s access to only the restricted and/or highly restricted data necessary for that person to perform his/her role. [f.ii: WMATA System Implementation Statement]</li>
<li>iii) Authorization controls to enforce version control and record retention requirements such that only designated individuals are able to modify or delete sensitive or critical records. [f.iii: WMATA System Implementation Statement]</li>
<li>iv) Audit controls that record individual actions on files and records, such as file fication. [f.iv: WMATA System Implementation Statement]</li>
<li>v) Audit logs shall be retained in accordance with the Audit and Accountability control. [f.v: WMATA System Implementation Statement]</li>

Related Controls: AC-3, AC-4, PT-2, PT-7, RA-3, SC-15

', [Supplemental_Info]=N'<p><b>Information Sharing</b></p>a. Enable authorized users to determine whether access authorizations assigned to a sharing partner match the information’s access and use restrictions for [Assignment: organization-defined information sharing circumstances where user discretion is required]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Designate individuals authorized to make information publicly accessible; [a: WMATA System Implementation Statement]</li>
<li>b. Train authorized individuals to ensure that publicly accessible information does not contain nonpublic information in accordance with Control 3.8 Data Sensitivity, Section 9, “Categorization of Information." [b: WMATA System Implementation Statement]</li>
<li>c. Review the proposed content of information prior to posting onto the publicly accessible system to ensure that nonpublic information is not included; and [c: WMATA System Implementation Statement]</li>
<li>d. Review the content on the publicly accessible system for nonpublic information quarterly, and remove such information, if discovered. [d: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Generally, public access to OT systems is not permitted. Select information may be transferred to a publicly accessible system, possibly with added controls. The organization should review what information is being made accessible prior to publication. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-3, AT-2, AT-3

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Generally, public access to OT systems is not permitted. Select information may be transferred to a publicly accessible system, possibly with added controls. The organization should review what information is being made accessible prior to publication. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Publicly Accessible Content</b></p>a. Designate individuals authorized to make information publicly accessible;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Implement a reference monitor for operating systems. [a: WMATA System Implementation Statement]</li>

Related Controls: AC-3, SA-8, SA-17, SC-3, SC-39, SI-13

', [Supplemental_Info]=N'<p><b>Reference Monitor</b></p>Implement a reference monitor for [Assignment: organization-defined access control policies] that is tamperproof, always invoked, and small enough to be subject to analysis and testing, the completeness of which can be assured.' WHERE [Requirement_Id] = 37557
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Enforce approved authorizations for logical access to information and system resources in accordance with applicable access control processes and procedures. [a: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> The organization ensures that access enforcement mechanisms do not adversely impact the operational performance of the OT. Example compensating controls include encapsulation. Policy for logical access control to non-addressable and non-routable system resources and the associated information is made explicit. Access control mechanisms include hardware, firmware, and software that control the device or have device access, such as device drivers and communications controllers. Physical access control may serve as a compensating control for logical access control; however, it may not provide sufficient granularity in situations where users require access to different functions. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AC-2, AC-4, AC-5, AC-6, AC-17, AC-18, AC-19, AC-20, AC-21, AC-22, AC-25, AT-2, AT-3, AU-9, CA-9, CM-5, CM-11, IA-2, IA-5, IA-6, IA-7, IA-11, MA-3, MA-4, MA-5, MP-4, PM-2, PS-3, PT-2, PT-3, SA-17, SC-2, SC-3, SC-4, SC-12, SC-13, SC-28, SI-4, SI-8
<li>b. Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The organization ensures that access enforcement mechanisms do not adversely impact the operational performance of the OT. Example compensating controls include encapsulation. The policy for logical access control to non-addressable and non-routable system resources and the associated information is made explicit. Access control mechanisms include hardware, firmware, and software that control the device or have device access, such as device drivers and communications controllers. Physical access control may serve as a compensating control for logical access control. However, it may not provide sufficient granularity when users require access to different functions. [NIST 800-82 Rev 3: WMATA System Implementation Statement]




', [Supplemental_Info]=N'<p><b>Access Enforcement</b></p>Enforce approved authorizations for logical access to information and system resources in accordance with applicable access control policies.' WHERE [Requirement_Id] = 37558
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Restrict access to data repositories containing [Assignment: organization-defined information types]. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> The organization identifies and restricts access to information that could impact the OT environment, accounting for information types that are sensitive, proprietary, contain trade secrets, or support safety functions. [OT Systems Only: WMATA System Implementation Statement]
	
Related Controls: CM-8, CM-12, PM-5

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The organization identifies and restricts access to information that could impact the OT environment and accounts for information types that are sensitive, proprietary, contain trade secrets, or support safety functions. [NIST 800-82 Rev 3_OT Discussion: WMATA System Implementation Statement]

Rationale for adding AC-3 (11) to HIGH baseline: The loss of availability, integrity, and confidentiality of certain types of information that reside on a high-impact OT system may result in severe or catastrophic adverse effects on operations, assets, or individuals, including severe 
degradation or loss of mission capability, major damage to organizational assets, or harm to individuals involving the loss of life or life-threatening injuries. [NIST 800-82 Rev 3_Rationale: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Access Enforcement | Restrict Access to Specific Information Types</b></p>Restrict access to data repositories containing [Assignment: organization-defined information types].' WHERE [Requirement_Id] = 37559
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Provide mechanisms, such as request forms and applications interfaces to enable individuals to access their personally identifiable information (PII). [WMATA System Implementation Statement]

Related Controls: IA-8, PM-20, PM-21, PM-22, PT-6

', [Supplemental_Info]=N'<p><b> Individual Access</b></p>Provide [Assignment: organization-defined mechanisms] to enable individuals to have access to the following elements of their personally identifiable information: [Assignment: organization-defined elements].' WHERE [Requirement_Id] = 37560
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Enforce role-based access control over defined subjects and objects by controlling access. Each system shall establish an account management plan, inclusive of roles and responsibilities required to execute the plan, pursuant to Control 3.1 Access Control, Section 2, “AC-2 Account Management.” [WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b> Role Based Access Control</b></p>Enforce a role-based access control policy over defined subjects and objects and control access based upon [Assignment: organization-defined roles and users authorized to assume such roles].' WHERE [Requirement_Id] = 37561
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Ensure that the flow of information within the system, and between connected systems, is documented and authorized. All WMATA systems shall have a Data Flow Diagram that documents the storage movement, and processing of data in the system. [a: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Information flow policy may be achieved using a combination of logical and physical flow restriction techniques. Inspection of message content may enforce information flow policy. For example, industrial OT protocols may be restricted using inbound and outbound traffic rules on a network control device between OT and IT networks. For non-routable communication such as serial connections, devices may be configured to limit commands to and from specific tags within the OT device. Information flow policy may be supported by labeling or coloring physical connectors to aid in connecting networks. Devices that do not have a business need to communicate should not be connected (i.e., air gapped). [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AC-3, AC-6, AC-17, AC-19, AC-21, AU-10, CA-3, CA-9, CM-7, PL-9, PM-24, SA-17, SC-4, SC-7
<li>b. Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Information flow policy may be achieved using a combination of logical and physical flow restriction techniques. The inspection of message content may enforce information flow policy. For example, industrial OT protocols may be restricted using inbound and outbound traffic rules on a network control device between OT and IT networks. For non-routable communication, such as serial connections, devices may be configured to limit commands to and from specific tags within the OT device. The information flow policy may be supported by labeling or coloring physical connectors to aid in connecting networks. Devices that do not have a business need to communicate should not be connected (i.e., air gapped). [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Information Flow Enforcement</b></p>Enforce approved authorizations for controlling the flow of information within the system and between connected systems based on [Assignment: organization-defined information flow control policies].' WHERE [Requirement_Id] = 37562
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Prevent encrypted information from bypassing flow control mechanisms to include content checking, security policy filters, and data type identifiers by: [WMATA System Implementation Statement]

<li>(1) Decrypting the information; [1: WMATA System Implementation Statement]</li>
<li>(2) Blocking the flow of the unauthorized encrypted information; [2: WMATA System Implementation Statement]</li>
<li>(3) Terminating communications sessions attempting to pass unauthorized encrypted information; [3: WMATA System Implementation Statement]</li>

Related Controls: SI-4

', [Supplemental_Info]=N'<p><b> Flow Control of Encrypted Information</b></p>Prevent encrypted information from bypassing [Assignment: organization-defined information flow control mechanisms] by [Selection (one or more): decrypting the information; blocking the flow of the encrypted information; terminating communications sessions attempting to pass encrypted information; [Assignment: organization-defined procedure or method]].' WHERE [Requirement_Id] = 37563
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. The following roles shall have duties separated: [a: WMATA System Implementation Statement]</li>
<li>i) General user activities (e.g., resource or file access); [a.i: WMATA System Implementation Statement]</li>
<li>ii) System and application development (e.g., programmers); [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Database administration and management (e.g., database administrators) [a.iii: WMATA System Implementation Statement]</li>
<li>iv) Technical operations and system or network administration (e.g., system administrator, and network administrator, system maintenance personnel); and [a.iv: WMATA System Implementation Statement]</li>
<li>v) Security Administration and Management (e.g., Security Administrator, ISSM/O). [a.v: WMATA System Implementation Statement]</li>
<li>b. Define system access authorizations to support separation of duties. [b: WMATA System Implementation Statement]</li>
<li>c. An individual user may have a general user account and one privileged level account only unless additional accesses are documented and approved in the Account Management Plan. [c: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Example compensating controls include providing increased personnel security and auditing. The organization carefully considers the appropriateness of a single individual performing multiple critical roles. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-2, AC-3, AC-6, AU-9, CM-5, CM-11, CP-9, IA-2, IA-4, IA-5, IA-12, MA-3, MA-5, PS-2, SA-8, SA-17

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Example compensating controls include providing increased personnel security and auditing. The organization carefully considers the appropriateness of a single individual performing multiple critical roles. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Separation of Duties</b></p>a. Identify and document [Assignment: organization-defined duties of individuals requiring separation]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Employ the principle of least privilege, allowing only authorized accesses for users (or processes acting on behalf of users) that are necessary to accomplish assigned organizational tasks in accordance with WMATA missions and business functions. Least privilege applies to all stages of the System Development Lifecycle (SDLC). [a: WMATA System Implementation Statement]</li>
<li>b. Only authorized individuals shall access, manage, and perform updates to sensitive information as classified in Control 3.8 Data Sensitivity. [b: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Example compensating controls include providing increased personnel security and auditing. The organization carefully considers the appropriateness of a single individual having multiple critical privileges. System privilege models may be tailored to enforce integrity and availability (e.g., lower privileges include read access and higher privileges include write access). [OT Systems Only: WMATA System Implementation Statement]
Related Controls : AC-2, AC-3, AC-5, CM-5, CM-11, PL-2, PM-12, SA-8, SA-15, SA-17
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Example compensating controls include providing increased personnel security and auditing. The organization carefully considers the appropriateness of a single individual having multiple critical privileges. System privilege models may be tailored to enforce integrity and availability (e.g., lower privileges include read access, and higher privileges include write access). [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Least Privilege</b></p>Employ the principle of least privilege, allowing only authorized accesses for users (or processes acting on behalf of users) that are necessary to accomplish assigned organizational tasks.' WHERE [Requirement_Id] = 37565
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>(1) All security functions deployed in hardware, software, and firmware shall be documented in the System Security Plan (SSP) and all security functions shall be clearly annotated. [1: WMATA System Implementation Statement]</li>
<li>(2) Authorize access for individuals or roles to security functions, to include security administrators, system administrators, system security officers, system programmers, and other privileged users, inclusive of: [2: WMATA System Implementation Statement]</li>
<li>(a) Security functions (deployed in hardware, software, and firmware) to include establishing system accounts, configuring access authorizations (i.e., permissions, privileges), configuring settings for events to be audited, and establishing intrusion detection parameters; and [2.a: WMATA System Implementation Statement]</li>
<li>(b) Security-relevant information, to include filtering rules for routers or firewalls, configuration parameters for security services, cryptographic key management information, and access control lists. [2.b: WMATA System Implementation Statement]</li>
<li>(c) All other security functions defined in the SSP. [2.c: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> In situations where the OT components (e.g., PLCs) cannot support logging of privileged functions, other system components within the authorization boundary may be used (e.g., engineering workstations or physical access monitoring). [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-17, AC-18, AC-19, AU-9, PE-2

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: When OT components (e.g., PLCs) cannot support the logging of privileged functions, other system components within the authorization boundary may be used (e.g., engineering workstations or physical access monitoring). [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Least Privilege | Authorize Access to Security Functions</b></p>Authorize access for [Assignment: organization-defined individuals or roles] to:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Prevent non-privileged users from executing privileged functions. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Example compensating controls include enhanced auditing. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Example compensating controls include enhanced auditing. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Least Privilege | Prohibit Non-privileged Users from Executing Privileged Functions</b></p>Prevent non-privileged users from executing privileged functions.' WHERE [Requirement_Id] = 37567
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Require that users of system accounts (or roles) with access to security functions or security-relevant information use non-privileged accounts or roles, when accessing non- security functions. Security functions include but are not limited to those functions described in Control 3.1 Access Control, Section 6, (b), (i), “AC-6 (1) Authorize Access to Security Function.” [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> In situations where the OT components (e.g., PLCs) cannot support logging of privileged functions, other system components within the authorization boundary may be used (e.g., engineering workstations or physical access monitoring). [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-17, AC-18, AC-19, PL-4

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: When OT components (e.g., PLCs) cannot support the logging of privileged functions, other system components within the authorization boundary may be used (e.g., engineering workstations or physical access monitoring). [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Least Privilege | Non-privileged Access for Nonsecurity Functions</b></p>Require that users of system accounts (or roles) with access to [Assignment: organization-defined security functions or security-relevant information] use non-privileged accounts or roles, when accessing nonsecurity functions.' WHERE [Requirement_Id] = 37568
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Authorize network access to privileged commands only for assigned duties and/or responsibilities and document the rationale for such access in the SSP. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> In situations where the OT components (e.g., PLCs) cannot support logging of privileged functions, other system components within the authorization boundary may be used (e.g., engineering workstations or physical access monitoring). [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-17, AC-18, AC-19

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: When OT components (e.g., PLCs) cannot support the logging of privileged functions, other system components within the authorization boundary may be used (e.g., engineering workstations or physical access monitoring). [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Least Privilege | Network Access to Privileged Commands</b></p>Authorize network access to [Assignment: organization-defined privileged commands] only for [Assignment: organization-defined compelling operational needs] and document the rationale for such access in the security plan for the system.' WHERE [Requirement_Id] = 37569
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Restrict privileged accounts on the system to authorized personnel as documented in the Enterprise Identity and Access Management (EIAM) system. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> In situations where the OT components (e.g., PLCs) cannot support logging of privileged functions, other system components within the authorization boundary may be used (e.g., engineering workstations or physical access monitoring). [OT Systems Only: WMATA System Implementation Statement]

Related Controls: IA-2, MA-3, MA-4

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: When OT components (e.g., PLCs) cannot support the logging of privileged functions, other system components within the authorization boundary may be used (e.g., engineering workstations or physical access monitoring). [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Least Privilege | Privileged Accounts</b></p>Restrict privileged accounts on the system to [Assignment: organization-defined personnel or roles].' WHERE [Requirement_Id] = 37570
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>(1) Review and recertify annually the privileges assigned to general users and roles or classes of users to validate the need for such privileges; and [1: WMATA System Implementation Statement]</li>
<li>(2) Review and recertify quarterly the privileges assigned to privileged users and any associated roles to validate the need for such privileges; and [2: WMATA System Implementation Statement]</li>
<li>(3) Reassign or remove privileges, if necessary, to correctly reflect organizational mission and business needs. [3: WMATA System Implementation Statement]</li>

Related Controls: CA-7

', [Supplemental_Info]=N'<p><b> Review of User Privileges</b></p>(a) Review [Assignment: organization-defined frequency] the privileges assigned to [Assignment: organization-defined roles or classes of users] to validate the need for such privileges; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Log the execution of privileged functions. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> In situations where the OT components (e.g., PLCs) cannot support logging of privileged functions, other system components within the authorization boundary may be used (e.g., engineering workstations or physical access monitoring). [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AU-2, AU-3, AU-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: When OT components (e.g., PLCs) cannot support the logging of privileged functions, other system components within the authorization boundary may be used (e.g., engineering workstations or physical access monitoring). [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Least Privilege | Log Use of Privileged Functions</b></p>Log the execution of privileged functions.' WHERE [Requirement_Id] = 37572
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
When the maximum number of unsuccessful attempts is exceeded: [WMATA System Implementation Statement]

<li>a. Enforce a limit of three failed invalid logon attempts by a user during a 15-minute time period; [a: WMATA System Implementation Statement]</li>
<li>b. Automatically lock the account or node until released by an administrator when the maximum number of unsuccessful attempts is exceeded. See Control 3.9 Identification and Authentication control; [b: WMATA System Implementation Statement]</li>
<li>c. Automate unlocking of a system as documented in the SSP and approved by the AO; and [c: WMATA System Implementation Statement]</li>
<li>d. For public-facing or Intranet web-based applications, automatically lock the account until released by an administrator or prompt the user to answer a secret question in addition to requiring a Completely Automated Public Turing test to tell Computer and Humans Apart (CAPTCHA) or answering challenge questions to prevent automated attacks. [d: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Many OT systems remain in continuous operation and operators remain logged onto the system at all times. A “log-over” capability may be employed. Example compensating controls include logging or recording all unsuccessful login attempts and alerting OT security personnel through alarms or other means when the number of organization-defined consecutive invalid access attempts is exceeded. Unsuccessful logon attempt limits are enforced for accounts (e.g., administrator) or systems (e.g., engineering workstations) not required for continuous operation. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-2, AU-2, AU-6, IA-5

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Many OT systems remain in continuous operation, and operators remain logged onto the system at all times. A “log-over” capability may be employed. Example compensating controls include logging or recording all unsuccessful logon attempts and alerting OT security personnel through alarms or other means when the number of organization-defined consecutive invalid access attempts is exceeded. Unsuccessful logon attempt limits are enforced for accounts (e.g., administrator) or systems (e.g., engineering workstations) that are not required for continuous operation. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Unsuccessful Logon Attempts</b></p>a. Enforce a limit of [Assignment: organization-defined number] consecutive invalid logon attempts by a user during a [Assignment: organization-defined time period]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Display the official WMATA system use notification to users before granting access to the system that provides privacy and security notices consistent with applicable laws, directives, regulations, policies, standards, and guidelines and state that: [a: WMATA System Implementation Statement]</li>
<li>i) Users are accessing a WMATA system; [a.i: WMATA System Implementation Statement]</li>
<li>ii) System usage may be monitored, recorded, and subject to audit; [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Unauthorized use of the system is prohibited and subject to criminal and civil penalties; and [a.iii: WMATA System Implementation Statement]</li>
<li>iv) Use of the system indicates consent to monitoring and recording; [a.iv: WMATA System Implementation Statement]</li>
<li>b. Retain the notification message or banner on the screen until users acknowledge the usage conditions and take explicit actions to logon to or further access the system; and [b: WMATA System Implementation Statement]</li>
<li>c. For publicly accessible systems: [c: WMATA System Implementation Statement]</li>
<li>i) Display the official WMATA system use notice before granting access to publicly accessible systems. System use notices shall be displayed on all user logon pages. [c.i: WMATA System Implementation Statement]</li>
<li>ii) Display references, if any, to monitoring, recording, or auditing that are consistent with privacy accommodations for such systems that generally prohibit those activities; and [c.ii: WMATA System Implementation Statement]</li>
<li>iii) Include a description of the authorized uses of the system. [c.iii: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Many OT systems must remain in continuous operation and system use notification may not be supported or effective. Example compensating controls include posting physical notices in OT facilities or providing recurring training on system use prior to permitting access. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-14, PL-4, SI-4

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Many OT systems must remain in continuous operation, and system use notification may not be supported or effective. Example compensating controls include posting physical notices in OT facilities or providing recurring training on system use prior to permitting access. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>System Use Notification</b></p>a. Display [Assignment: organization-defined system use notification message or banner] to users before granting access to the system that provides privacy and security notices consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines and state that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Reference P/I 15.28 Cybersecurity Policy for requirements. [WMATA System Implementation Statement] 

Related Controls: PM-9, PS-8, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The policy specifically addresses the unique properties and requirements of OT and the relationship to non-OT systems. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Awareness and Training Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Provide security and privacy literacy training to users: [a: WMATA System Implementation Statement]</li>
<li>i) As part of initial training for new users and annually thereafter; and [a.i: WMATA System Implementation Statement]</li>
<li>ii) When required by system changes or following events that may precipitate an update to literacy training and awareness content. [a.ii: WMATA System Implementation Statement]</li>
<li>b. Employ techniques to increase the security and privacy awareness of users, such as: [b: WMATA System Implementation Statement]</li>
<li>i) Displaying posters; [b.i: WMATA System Implementation Statement]</li>
<li>ii) Offering supplies inscribed with security and privacy reminders; [b.ii: WMATA System Implementation Statement]</li>
<li>iii) Displaying logon screen and screensaver messages; [b.iii: WMATA System Implementation Statement]</li>
<li>iv) Generating email advisories or notices from organizational officials; and [b.iv: WMATA System Implementation Statement]</li>
<li>v) Conducting awareness events. [b.v: WMATA System Implementation Statement]</li>
<li>c. Update literacy training and awareness content annually and following events that may precipitate an update, including but not limited to assessment or audit findings, cybersecurity or privacy incidents, or changes in applicable laws, directives, regulations, policies, standards, and guidelines; and [c: WMATA System Implementation Statement]</li>
<li>d. Incorporate lessons learned from internal or external cybersecurity incidents or breaches into literacy training and awareness techniques. [d: WMATA System Implementation Statement]</li>
<li>e. Mandate security awareness and training for users within 90 days of initial employment and annually thereafter; and [e: WMATA System Implementation Statement]</li>
<li>f. For suspended accounts, reinstate network access after successfully completing the Security Awareness Training course. [f: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Security awareness training includes initial and periodic review of OT-specific policies, standard operating procedures, security trends, and vulnerabilities. The OT security awareness program is consistent with the requirements of the security awareness and training policy established by the organization. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AC-3, AC-17, AC-22, AT-3, AT-4, CP-3, IA-4, IR-2, IR-7, IR-9, PL-4, PM-13, PM-21, PS-7, PT-2, SA-8, SA-16
<li>g. Security Controls Enhancement(s): [g: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Security awareness training includes initial and periodic review of OT-specific policies, standard operating procedures, security trends, and vulnerabilities. The OT security awareness program is consistent with the requirements of the security awareness and training policy established by the organization. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Literacy Training and Awareness</b></p>a. Provide security and privacy literacy training to system users (including managers, senior executives, and contractors):
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Provide literacy training on recognizing and reporting potential indicators of insider threat. [WMATA System Implementation Statement]

Related Controls: IR-9, PM-12

', [Supplemental_Info]=N'<p><b> Insider Threat</b></p>Provide literacy training on recognizing and reporting potential indicators of insider threat.' WHERE [Requirement_Id] = 37577
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>(1) Provide literacy training on recognizing and reporting potential and actual instances of social engineering and social mining. [1: WMATA System Implementation Statement]</li>
<li>f. Mandate security awareness and training for users within 90 days of initial employment and annually thereafter; and [f: WMATA System Implementation Statement]</li>
<li>g. For suspended accounts, reinstate network access after successfully completing the Security Awareness Training course. [g: WMATA System Implementation Statement]</li>


', [Supplemental_Info]=N'<p><b> Social Engineering and Mining</b></p>Provide literacy training on recognizing and reporting potential and actual instances of social engineering and social mining.' WHERE [Requirement_Id] = 37578
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Provide literacy training on recognizing suspicious communications and anomalous behavior in organizational systems using [Assignment: organization-defined indicators of malicious code]. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Identify and communicate suspicious and anomalous behaviors within the OT environment. Some examples of OT suspicious or anomalous behavior may include a PLC still in programming mode when it is expected to be in run mode, process trips with undetermined root cause, malware on an HMI, unexpected mouse movement, or process changes that are not being performed by the operator. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Identify and communicate suspicious and anomalous behaviors within the OT environment. Some examples of OT suspicious or anomalous behavior may include a PLC still in programming mode when it is expected to be in run mode, process trips with an undetermined root cause, malware on an HMI, unexpected mouse movement, or process changes that are not being performed by the operator. [NIST 800-82 Rev 3_OT Discussion: WMATA System Implementation Statement]

Rationale for adding AT-2 (4) to MOD and HIGH baselines: Training OT personnel on potentially suspicious communications and anomalous behaviors as well as the actions to take if anomalous system behavior occurs can supplement system detection and protection mechanisms 
for improved response. [NIST 800-82 Rev 3_Rationale: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Literacy Training and Awareness | Suspicious Communications and Anomalous System Behavior</b></p>Provide literacy training on recognizing suspicious communications and anomalous behavior in organizational systems using [Assignment: organization-defined indicators of malicious code].' WHERE [Requirement_Id] = 37579
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Provide role-based (e.g., user, privileged user, etc.) security and privacy training to personnel: [a: WMATA System Implementation Statement]</li>
<li>i) Before authorizing access to the system, information, or performing assigned duties, and annually thereafter; and [a.i: WMATA System Implementation Statement]</li>
<li>ii) When required by system changes; [a.ii: WMATA System Implementation Statement]</li>
<li>b. Update role-based training content annually and following events that may precipitate an update, including but not limited to, assessment or audit findings, cybersecurity or privacy incidents, or changes in applicable laws, directives, regulations, policies, standards, and guidelines; and [b: WMATA System Implementation Statement]</li>
<li>c. Incorporate lessons learned from internal or external cybersecurity incidents or breaches into role-based training. [c: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Security training includes initial and periodic review of OT-specific policies, standard operating procedures, security trends, and vulnerabilities. The OT security training program is consistent with the requirements of the security awareness and training policy established by the organization. The training may be customized for specific OT roles, which could include operators, maintainers, engineers, supervisors, and administrators. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AC-3, AC-17, AC-22, AT-2, AT-4, CP-3, IR-2, IR-4, IR-7, IR-9, PL-4, PM-13, PM-23, PS-7, PS-9, SA-3, SA-8, SA-11, SA-16, SR-5, SR-6, SR-11
<li>d. Security Controls Enhancement(s): [d: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Security training includes initial and periodic review of OT-specific policies, standard operating procedures, security trends, and vulnerabilities. The OT security training program is consistent with the requirements of the security awareness and training policy 
established by the organization. The training may be customized for specific OT roles, which could include operators, maintainers, engineers, supervisors, and administrators. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Role-based Training</b></p>a. Provide role-based security and privacy training to personnel with the following roles and responsibilities: [Assignment: organization-defined roles and responsibilities]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Provide applicable personnel with initial and annual training in the employment and operation of personally identifiable information processing and transparency controls. [WMATA System Implementation Statement]

Related Controls: PT-2, PT-3, PT-5, PT-6

', [Supplemental_Info]=N'<p><b> Processing Personally Identifiable Information</b></p>Provide [Assignment: organization-defined personnel or roles] with initial and [Assignment: organization-defined frequency] training in the employment and operation of personally identifiable information processing and transparency controls.' WHERE [Requirement_Id] = 37581
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Document and monitor information security and privacy training activities, including security and privacy awareness training and specific role-based security and privacy training; [a: WMATA System Implementation Statement]</li>
<li>b. Retain individual training records to align with enterprise learning and management application requirements; and [b: WMATA System Implementation Statement]</li>
<li>c. Reporting training compliance minimally on a quarterly basis. [c: WMATA System Implementation Statement]</li>

Related Controls: AT-2, AT-3, CP-3, IR-2, PM-14, SI-12




', [Supplemental_Info]=N'<p><b>Training Records</b></p>a. Document and monitor information security and privacy training activities, including security and privacy awareness training and specific role-based security and privacy training; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Reference P/I 15.28 Cybersecurity Policy for requirements. [WMATA System Implementation Statement]

Related Controls: PM-9, PS-8, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The policy specifically addresses the unique properties and requirements of OT and the relationship to non-OT systems. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Audit and Accountability Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Provide irrefutable evidence that an individual (or process acting on behalf of an individual) has performed actions to include creating information, sending and receiving messages, and approving information. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> OT devices may not enforce non-repudiation of audit records and may require compensating controls. Example compensating controls include physical security systems, cameras to monitor user access, or a separate device for log collection. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AU-9, SA-8, PM-12, SC-8, SC-12, SC-13, SC-17, SC-23

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: OT devices may not enforce non-repudiation of audit records and may require compensating controls. Example compensating controls include physical security systems, cameras to monitor user access, or a separate device for log collection. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Non-repudiation</b></p>Provide irrefutable evidence that an individual (or process acting on behalf of an individual) has performed [Assignment: organization-defined actions to be covered by non-repudiation].' WHERE [Requirement_Id] = 37584
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Retain audit records for all WMATA systems for at least five years or longer if specified by applicable regulation, law, or external compliance mandate to provide support for after-the- fact investigations of incidents and to meet regulatory and organizational information retention requirements. [a: WMATA System Implementation Statement]</li>

Related Controls: AU-2, AU-4, AU-5, AU-6, AU-9, MP-6, RA-5, SI-12



', [Supplemental_Info]=N'<p><b>Audit Record Retention</b></p>Retain audit records for [Assignment: organization-defined time period consistent with records retention policy] to provide support for after-the-fact investigations of incidents and to meet regulatory and organizational information retention requirements.' WHERE [Requirement_Id] = 37585
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Provide audit record generation capability for the event types the system is capable of auditing in accordance with Control 3.3 Audit and Accountability, Section 2, (a), “AU-2 Event Logging”, on all system components; [a: WMATA System Implementation Statement]</li>
<li>b. Allow required stakeholders to select the event types that are to be logged by specific components of the system; and [b: WMATA System Implementation Statement]</li>
<li>c. Generate audit records for the event types in accordance with Control 3.3 Audit and Accountability, Section 2, (c), “AU-2 Event Logging”, that includes the audit record content in accordance with Control 3.3 Audit and Accountability, Section 3, “AU-3 Content of Audit Records. [c: WMATA System Implementation Statement]</li>

Related Controls: AC-6, AC-17, AU-2, AU-3, AU-4, AU-5, AU-6, AU-7, CM-5, MA-4, MP-4, PM-12, SA-8, SC-18, SI-3, SI-4, SI-7, SI-10

<li>d. Security Controls Enhancement(s): [d: WMATA System Implementation Statement]</li>




', [Supplemental_Info]=N'<p><b>Audit Record Generation</b></p>a. Provide audit record generation capability for the event types the system is capable of auditing as defined in AU-2a on [Assignment: organization-defined system components];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Compile audit records from all system components into a system-wide (logical or physical) audit trail that is time-correlated to within 30 seconds of WMATA standard time as defined in WMATA policy. All systems shall use network time. [WMATA System Implementation Statement]

Related Controls: AU-8, SC-45

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Example compensating controls include providing time-correlated audit records on a separate system. [NIST 800-82 Rev 3: WMATA System Implementation Statement]




', [Supplemental_Info]=N'<p><b>Audit Record Generation | System-wide and Time-correlated Audit Trail</b></p>Compile audit records from [Assignment: organization-defined system components] into a system-wide (logical or physical) audit trail that is time-correlated to within [Assignment: organization-defined level of tolerance for the relationship between time stamps of individual records in the audit trail].' WHERE [Requirement_Id] = 37587
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Provide and implement the capability for system administrators to change the criteria for logging to be performed on information systems based on System Owner requirements as approved by the AO. [WMATA System Implementation Statement] 

Related Controls: AC-3

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Example compensating controls include employing nonautomated mechanisms or procedures. [NIST 800-82 Rev 3: WMATA System Implementation Statement]


', [Supplemental_Info]=N'<p><b>Audit Record Generation | Changes by Authorized Individuals</b></p>Provide and implement the capability for [Assignment: organization-defined individuals or roles] to change the logging to be performed on [Assignment: organization-defined system components] based on [Assignment: organization-defined selectable event criteria] within [Assignment: organization-defined time thresholds].' WHERE [Requirement_Id] = 37588
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Provide and implement the capability for [Assignment: organization-defined users or roles] to [Selection (one or more): record; view; hear; log] the content of a user session under [Assignment: organization-defined circumstances]; and [a: WMATA System Implementation Statement] </li>
<li>b. Develop, integrate, and use session auditing activities in consultation with legal counsel and in accordance with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines. [b: WMATA System Implementation Statement] </li>

', [Supplemental_Info]=N'<p><b>Session Audit</b></p>a. Provide and implement the capability for [Assignment: organization-defined users or roles] to [Selection (one or more): record; view; hear; log] the content of a user session under [Assignment: organization-defined circumstances]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Identify the types of events that the system is capable of logging in support of the audit function and document those events in the System Security Plans (SSP). Additionally, all exceptions to the audit event types shall be authorized by the AO and documented in SSPs. This list includes but is not limited to: [a: WMATA System Implementation Statement]</li>
<li>i) Password changes; [a.i: WMATA System Implementation Statement]</li>
<li>ii) Failed or successful logons or accesses related to systems; [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Logoffs; [a.iii: WMATA System Implementation Statement]</li>
<li>iv) Security or privacy attribute changes; [a.iv: WMATA System Implementation Statement]</li>
<li>v) Administrative privilege usage; [a.v: WMATA System Implementation Statement]</li>
<li>vi) Personal Identity Verification (PIV) credential usage; [a.vi: WMATA System Implementation Statement]</li>
<li>vii) Data action changes; [a.vii: WMATA System Implementation Statement]</li>
<li>viii) Query parameters; [a.viii: WMATA System Implementation Statement]</li>
<li>ix) External credential usage; [a.ix: WMATA System Implementation Statement]</li>
<li>x) Encryption errors or failures occur; [a.x: WMATA System Implementation Statement]</li>
<li>xi) Authentication events to include successful and unsuccessful (failed): [a.xi: WMATA System Implementation Statement]</li>
<li>(1) Information Requests and Server Responses; [a.xi.1: WMATA System Implementation Statement]</li>
<li>(2) Identities of individuals or processes; [a.xi.2: WMATA System Implementation Statement]</li>
<li>(3) IP addresses involved; [a.xi.3: WMATA System Implementation Statement]</li>
<li>(4) Use of credentials for logical access to systems or physical access to facilities; [a.xi.4: WMATA System Implementation Statement]</li>
<li>xii) User activities to include event types, locations, dates and times of activities within the system; event success and failure; data and object access, modifications and deletions; queries and query parameter access, modifications and deletions; and attempts to access system objects (e.g., files, folders, registry keys, and printers); [a.xii: WMATA System Implementation Statement]</li>
<li>xiii) Privileged functions to include the creation, modification, disablement, and deletion (removal) of accounts; audit logs; sensitive information (includes security or privacy attributes or data); administrator events and event success and failure (activities, such as windows “runas” or Linux “su” use, use of suid/guid, chown, su); starting and stopping of services and audit functions, installation and modifications to system software/application, firmware, processes and services; [a.xiii: WMATA System Implementation Statement]</li>
<li>xiv) Software, firmware and hardware errors, and system resources involved; [a.xiv: WMATA System Implementation Statement]</li>
<li>xv) Web applications shall log all user and administrator activity to include application and service startup, shutdown and failure; authentication and authorization successes and failures; data access, account creation, modifications, deletions, and permission changes; and [a.xv: WMATA System Implementation Statement]</li>
<li>xvi) Additional types of events may be required based on emerging threats or federal recommendations. [a.xvi: WMATA System Implementation Statement]</li>
<li>b. Coordinate the event logging function with other organizational entities requiring audit-related information to guide and inform the selection criteria for events to be logged. [b: WMATA System Implementation Statement]</li>
<li>c. All events in accordance with Control 3.3 Audit and Accountability, Section 2, “AU-2 Event Logging”, shall be logged as they occur, and for each incidence of the occurrence, and any required alert and/or notifications shall be implemented in compliance with Control 3.3 Audit and Accountability, Section 5, (b), (iv), “AU-5 (2) Real-Time Alerts”; [c: WMATA System Implementation Statement]</li>
<li>d. Provide a rationale for why the event types selected for logging are deemed to be adequate to support after-the-fact investigations of incidents; and [d:WMATA System Implementation Statement]</li>
<li>e. Review and update the event types selected for logging annually. [e: WMATA System Implementation Statement]</li>
<li>f. All systems or applications that store, process, or transmit sensitive information as defined in WMATA policy, shall log access, modification, and deletion to sensitive information. When feasible, the content associated with the sensitive information (e.g., credit card numbers, Social Security Numbers (SSN), Protected Health Information (PHI), Electronic (ePHI), etc.) shall not be stored in audit records in accordance with Control 3.3 Audit and Accountability, Section 3, (f), (i), AU-3 (1) “Additional Audit Information” and Section 3, (f), (ii), AU-3 (3) “Limit Personally Identifiable Information (PII) Elements.” [f: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Organizations may want to include relevant OT events (e.g., alerts, alarms, configuration and status changes, operator actions) in their event logging, which may be designated as audit events. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-2, AC-3, AC-6, AC-7, AC-8, AC-17, AU-3, AU-4, AU-5, AU-6, AU-7, AU-11, AU-12, CM-3, CM-5, CM-6, IA-3, MA-4, MP-4, PE-3, PM-21, PT-2, PT-7, RA-8, SA-8, SC-7, SC-18, SI-3, SI-4, SI-7, SI-10, SI-11

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Organizations may want to include relevant OT events (e.g., alerts, alarms, configuration and status changes, operator actions) in their event logging, which may be designated as audit events. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Event Logging</b></p>a. Identify the types of events that the system is capable of logging in support of the audit function: [Assignment: organization-defined event types that the system is capable of logging];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Ensure that audit records contain information that establishes the following: [WMATA System Implementation Statement]

<li>a. What type of event occurred; [a: WMATA System Implementation Statement]</li>
<li>b. When the event occurred; [b: WMATA System Implementation Statement]</li>
<li>c. Where the event occurred; [c: WMATA System Implementation Statement]</li>
<li>d. Source of the event; [d: WMATA System Implementation Statement]</li>
<li>e. Outcome of the event; and [e: WMATA System Implementation Statement]</li>
<li>f. Identity of any individuals, subjects, or objects/entities associated with the event. [f: WMATA System Implementation Statement]</li>
Related Controls: AU-2, AU-8, AU-12, MA-4, PL-9, SA-8, SI-7, SI-11
<li>g. Security Controls Enhancement(s): [g: WMATA System Implementation Statement]</li>

', [Supplemental_Info]=N'<p><b>Content of Audit Records</b></p>a. What type of event occurred;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Generate audit records that contain content specified in Control 3.3 Audit and Accountability, Section 3, AU-3 (a) – (c), “Content of Audit Records”. In addition, ensure that audit records contain access control or flow control rules that are invoked, and individual user identities are used for access to group accounts. [WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b> Additional Audit Information</b></p>Generate audit records containing the following additional information: [Assignment: organization-defined additional information].' WHERE [Requirement_Id] = 37592
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Limit PII and other forms of sensitive data in accordance with Control 3.8 Data Sensitivity, in audit records to the maximum extent feasible. [WMATA System Implementation Statement]

Related Controls: RA-3

', [Supplemental_Info]=N'<p><b> Limit Personally Identifiable Information Elements</b></p>Limit personally identifiable information contained in audit records to the following elements identified in the privacy risk assessment: [Assignment: organization-defined elements].' WHERE [Requirement_Id] = 37593
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Allocate audit log storage capacity to accommodate application or system requirements. Assess capacity requirements for audit logging to never exceed 75% capacity. Exceptions to the capacity limit in the range of 76-89% must be approved by the AO and include the following justifications: [WMATA System Implementation Statement]

<li>a. Demonstrated acceptable system performance above 75% capacity limit; [a: WMATA System Implementation Statement]</li>
<li>b. Define the limited business impact of system failure; [b: WMATA System Implementation Statement]</li>
<li>c. Business explanation why 75% capacity limit cannot be achieved; [c: WMATA System Implementation Statement]</li>
<li>1) Capacity limit shall not exceed 90%. [c.1: WMATA System Implementation Statement]</li>
<li>2) Reassess capacity requirements whenever exceeding the authorized threshold. Additionally, reassessing capacity requirements for audit logging based on system changes, performance, and alerts. [c.2: WMATA System Implementation Statement]</li>
Related Controls: AU-2, AU-5, AU-6, AU-7, AU-9, AU-11, AU-12, SI-4
<li>d. Security Controls Enhancement(s): [d:WMATA System Implementation Statement]</li>

', [Supplemental_Info]=N'<p><b>Audit Log Storage Capacity</b></p>Allocate audit log storage capacity to accommodate [Assignment: organization-defined audit log retention requirements].' WHERE [Requirement_Id] = 37594
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Transfer audit logs [Assignment: organization-defined frequency] to a different system, system component, or media other than the system or system component conducting the logging. [WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Rationale for adding AU-4 (1) to LOW, MOD, and HIGH baselines: Organizational requirements may require the storage of very large amounts of data, which OT components may not be able to support directly. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Audit Log Storage Capacity | Transfer to Alternate Storage</b></p>Transfer audit logs [Assignment: organization-defined frequency] to a different system, system component, or media other than the system or system component conducting the logging.' WHERE [Requirement_Id] = 37595
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Alert the required stakeholders immediately in the event of an audit logging process failure; and [a: WMATA System Implementation Statement]</li>
<li>b. Take the following additional actions: [b: WMATA System Implementation Statement]</li>
<li>i) Systems shall specify in the SSP actions that are taken in the event of an audit processing failure, to include overwriting oldest audit records and shutting down the system. All database systems shall comply with hardening checklists (e.g., STIGs/Benchmarks) and shutdown in the event there is an audit processing failure. [b.i: WMATA System Implementation Statement]</li>
<li>(1) If overwriting is to be employed, audit logs shall be centralized or moved to external storage to preserve the audit content in accordance with Control 3.3 Audit and Accountability, Section 11, “AU-11 Audit Record Retention.” [b.i.1: WMATA System Implementation Statement]</li>
<li>(2) If the system is to be shut down due to an audit process failure, the relevant Audit and Accountability (AU), Planning (PL) and Contingency Planning (CP) controls within the SSP and associated contingency plan and/or Information System Contingency Plan (ISCP) shall be updated to reflect how operations shall be maintained in the event of a em component outage. [b.i.2.i: WMATA System Implementation Statement] All systems shall have functional audit generation capabilities.</li>
<li>ii) In the event of an audit process logging failure, investigate root cause and create an incident: [b.i.2.ii: WMATA System Implementation Statement]</li>
<li>(1) With Metro Enterprise Monitoring Center (MEMC) for operational incidents; and [b.i.2.ii.1: WMATA System Implementation Statement]</li>
<li>(2) With DMCS for malicious or cybersecurity incidents. [b.i.2.ii.2: WMATA System Implementation Statement]</li>
Related Controls: AU-2, AU-4, AU-7, AU-9, AU-11, AU-12, SI-4, SI-12
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>


', [Supplemental_Info]=N'<p><b>Response to Audit Logging Process Failures</b></p>a. Alert [Assignment: organization-defined personnel or roles] within [Assignment: organization-defined time period] in the event of an audit logging process failure; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Provide a warning to MEMC and any other required stakeholders, immediately when allocated audit log storage volume reaches 75%, and again at 90% of repository maximum audit log storage capacity. [WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b> Storage Capacity Warning</b></p>Provide a warning to [Assignment: organization-defined personnel, roles, and/or locations] within [Assignment: organization-defined time period] when allocated audit log storage volume reaches [Assignment: organization-defined percentage] of repository maximum audit log storage capacity.' WHERE [Requirement_Id] = 37597
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Provide an alert immediately to the required stakeholders when the following audit failure events occur, at a minimum: [WMATA System Implementation Statement]

<li>(1) System and service is stopped or severely degraded, or [1: WMATA System Implementation Statement]</li>
<li>(2) Audit processing capability or component failures or errors occur within a system, to include: [2: WMATA System Implementation Statement]</li>
<li>(a) Audit log is full; and [2.a: WMATA System Implementation Statement]</li>
<li>(b) Audit log cannot log authentication attempts and responses. [2.b: WMATA System Implementation Statement]</li>

', [Supplemental_Info]=N'<p><b> Real-time Alerts</b></p>Provide an alert within [Assignment: organization-defined real-time period] to [Assignment: organization-defined personnel, roles, and/or locations] when the following audit failure events occur: [Assignment: organization-defined audit logging failure events requiring real-time alerts].' WHERE [Requirement_Id] = 37598
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Review and analyze system audit records at least monthly for indications of defined inappropriate or unusual activity and the potential impact of the inappropriate or unusual activity; [a: WMATA System Implementation Statement]</li>
<li>b. Report findings to required stakeholders and DMCS; and [b: WMATA System Implementation Statement]</li>
<li>c. Adjust the level of audit record review, analysis, and reporting within the system when there is a change in risk based on law enforcement information, intelligence information, or other credible sources of information. [c: WMATA System Implementation Statement]</li>
Related Controls: AC-2, AC-3, AC-5, AC-6, AC-7, AC-17, AU-7, CA-2, CA-7, CM-2, CM-5, CM-6, CM-10, CM-11, IA-2, IA-3, IA-5, IA-8, IR-5, MA-4, MP-4, PE-3, PE-6, RA-5, SA-8, SC-7, SI-3, SI-4, SI-7
<li>d. Security Controls Enhancement(s): [d: WMATA System Implementation Statement]</li>


', [Supplemental_Info]=N'<p><b>Audit Record Review, Analysis, and Reporting</b></p>a. Review and analyze system audit records [Assignment: organization-defined frequency] for indications of [Assignment: organization-defined inappropriate or unusual activity] and the potential impact of the inappropriate or unusual activity;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Integrate audit record review, analysis, and reporting processes via an enterprise solution (or solutions) to enable services, such as incident response, continuous monitoring, contingency planning, and investigation and response to suspicious activities. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Example compensating controls include manual mechanisms or procedures. For devices where audit records cannot be feasibly collected, periodic manual review may be necessary. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: PM-7

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Example compensating controls include manual mechanisms or procedures. For devices where audit records cannot be feasibly collected, periodic manual review may be necessary. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Audit Record Review, Analysis, and Reporting | Automated Process Integration</b></p>Integrate audit record review, analysis, and reporting processes using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37600
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Analyze and correlate audit records across different repositories to gain organization-wide situational awareness. [WMATA System Implementation Statement]

Related Controls: AU-12, IR-4

', [Supplemental_Info]=N'<p><b> Correlate Audit Record Repositories</b></p>Analyze and correlate audit records across different repositories to gain organization-wide situational awareness.' WHERE [Requirement_Id] = 37601
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Integrate analysis of audit records with analysis of vulnerability scanning information; performance data; and system monitoring information at a minimum to further enhance the ability to identify inappropriate or unusual activity. [WMATA System Implementation Statement]

Related Controls: AU-12, IR-4

', [Supplemental_Info]=N'<p><b> Integrated Analysis of Audit Records</b></p>Integrate analysis of audit records with analysis of [Selection (one or more): vulnerability scanning information; performance data; system monitoring information; [Assignment: organization-defined data/information collected from other sources]] to further enhance the ability to identify inappropriate or unusual activity.' WHERE [Requirement_Id] = 37602
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Correlate information from audit records with information obtained from monitoring physical access to further enhance the ability to identify suspicious, inappropriate, unusual, or malevolent activity. [WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b> Correlation with Physical Monitoring</b></p>Correlate information from audit records with information obtained from monitoring physical access to further enhance the ability to identify suspicious, inappropriate, unusual, or malevolent activity.' WHERE [Requirement_Id] = 37603
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Supports on-demand audit record review, analysis, and reporting requirements and after- the-fact investigations of incidents; and [a: WMATA System Implementation Statement]</li>
<li>b. Does not alter the original content or time ordering of audit records. [b: WMATA System Implementation Statement]</li>
Related Controls: AC-2, AU-2, AU-3, AU-4, AU-5, AU-6, AU-12, CM-5, IA-5, IR-4, PM-12, SI-4
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>

', [Supplemental_Info]=N'<p><b>Audit Record Reduction and Report Generation</b></p>a. Supports on-demand audit record review, analysis, and reporting requirements and after-the-fact investigations of incidents; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Provide and implement the capability to process, sort, and search audit records for events of interest based on the following content: system resources involved, information objects accessed, identities of individuals or processes, event types, event locations, event dates and times, IP addresses involved, and event success or failure. The DM department may define event criteria to any degree of granularity required, such as locations selectable by a general networking location or by a specific system component. [WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b> Automatic Processing</b></p>Provide and implement the capability to process, sort, and search audit records for events of interest based on the following content: [Assignment: organization-defined fields within audit records].' WHERE [Requirement_Id] = 37605
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Use internal system clocks to generate time stamps for audit records; and [a: WMATA System Implementation Statement]</li>
<li>b. Record time stamps for audit records that meet accuracy to within 100 milliseconds and that use Coordinated Universal Time (UTC), have a fixed local time offset from UTC, or include the local time offset as part of the time stamp. [b: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Example compensating controls include using a separate system designated as an authoritative time source. See related control SC-45. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AU-3, AU-12, SC-45

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Example compensating controls include using a separate system designated as an authoritative time source. See related control SC-45. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Time Stamps</b></p>a. Use internal system clocks to generate time stamps for audit records; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Protect audit information and audit logging tools from unauthorized access, modification, and deletion; and [a: WMATA System Implementation Statement]</li>
<li>b. Alert required stakeholders upon detection of unauthorized access, modification, or deletion of audit information. [b: WMATA System Implementation Statement]</li>
Related Controls: AC-3, AC-6, AU-6, AU-11, MP-2, MP-4, PE-2, PE-3, PE-6, SA-8, SC-8, SI-4
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>

', [Supplemental_Info]=N'<p><b>Protection of Audit Information</b></p>a. Protect audit information and audit logging tools from unauthorized access, modification, and deletion; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Store audit records at least daily in a repository that is part of a physically different system or system component than the system or component being audited. [WMATA System Implementation Statement]

Related Controls: AU-4, AU-5

', [Supplemental_Info]=N'<p><b> Store on Separate Physical Systems or Components</b></p>Store audit records [Assignment: organization-defined frequency] in a repository that is part of a physically different system or system component than the system or component being audited.' WHERE [Requirement_Id] = 37608
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Implement cryptographic mechanisms to protect the integrity of audit information and audit tools. [WMATA System Implementation Statement]

Related Controls: AU-10, SC-12, SC-13

', [Supplemental_Info]=N'<p><b> Cryptographic Protection</b></p>Implement cryptographic mechanisms to protect the integrity of audit information and audit tools.' WHERE [Requirement_Id] = 37609
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Authorize access to management of audit logging functionality to only: [WMATA System Implementation Statement]
<li>(1) Required stakeholders based on least privileges for the purposes of configuring and supporting information systems; and [1: WMATA System Implementation Statement]</li>
<li>(2) All DMCS Cyber Fusion Center (CFC) personnel. [2: WMATA System Implementation Statement]</li>

Related Controls: AC-5

', [Supplemental_Info]=N'<p><b> Access by Subset of Privileged Users</b></p>Authorize access to management of audit logging functionality to only [Assignment: organization-defined subset of privileged users or roles].' WHERE [Requirement_Id] = 37610
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Reference P/I 15.28 Cybersecurity Policy for requirements. [WMATA System Implementation Statement]

Related Controls: PM-9, PS-8, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The policy specifically addresses the unique properties and requirements of OT and the relationship to non-OT systems. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Assessment, Authorization and Monitoring Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Select the appropriate assessor or assessment team for the type of assessment to be conducted; [a: WMATA System Implementation Statement]</li>
<li>b. Develop a control assessment plan that describes the scope of the assessment including: [b: WMATA System Implementation Statement]</li>
<li>i) Controls and control enhancements under assessment; [b.i: WMATA System Implementation Statement]</li>
<li>ii) Assessment procedures to be used to determine control effectiveness; and [b.ii: WMATA System Implementation Statement]</li>
<li>iii) Assessment environment, assessment team, and assessment roles and responsibilities; [b.iii: WMATA System Implementation Statement]</li>
<li>c. Ensure the control assessment plan is reviewed and approved by the AO or designated representative prior to conducting the assessment; [c: WMATA System Implementation Statement]</li>
<li>d. Assess the controls in the system and its environment of operation annually, or after any significant change, to determine the extent to which the controls are implemented correctly, operating as intended, and producing the desired outcome with respect to meeting established security and privacy requirements; [d: WMATA System Implementation Statement]</li>
<li>e. Produce a control assessment report that document the results of the assessment; and [e: WMATA System Implementation Statement]</li>
<li>f. Provide the results of the control assessment to the required stakeholders. [f: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Assessments are performed and documented by qualified assessors (i.e., experienced in assessing OT) authorized by the organization. The individual/group conducting the assessment fully understands the organizational information security policies and procedures, the OT security policies and procedures, and the specific health, safety, and environmental risks associated with a particular facility and/or process. The organization ensures that the assessment does not affect system operation or result in unintentional system modification. If assessment activities must be performed on the production OT, it may need to be taken off-line before an assessment can be conducted, or the assessment should be scheduled to occur during planned OT outages whenever possible. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AC-20, CA-5, CA-6, CA-7, PM-9, RA-5, SA-11, SI-3, SI-12, SR-2, SR-3
<li>g. Security Controls Enhancement(s): [g: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Assessments are performed and documented by qualified assessors (i.e., experienced in assessing OT) authorized by the organization. The individual or group conducting the assessment fully understands the organizational information security policies and procedures, the OT security policies and procedures, and the specific health, safety, and environmental risks associated with a particular facility and/or process. The organization ensures that the assessment does not affect system operation or result in unintentional system modification. If assessment activities must be performed on the production OT, it may need to be taken offline before an assessment can be conducted, or the assessment should be scheduled to occur during planned OT outages whenever possible. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Control Assessments</b></p>a. Select the appropriate assessor or assessment team for the type of assessment to be conducted;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Employ independent assessors or assessment teams to conduct security control assessments. [WMATA System Implementation Statement]


', [Supplemental_Info]=N'<p><b> Independent Assessors</b></p>Employ independent assessors or assessment teams to conduct control assessments.' WHERE [Requirement_Id] = 37613
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Conduct announced and/or unannounced control assessments at least once prior to a system receiving authorization to move into a production environment, after a significant change, and annually thereafter for all systems in production, to include one or more of the following at the discretion of the AO: [WMATA System Implementation Statement]

<li>(1) Leverage current vulnerability scan results; [1: WMATA System Implementation Statement]</li>
<li>(2) Penetration testing in compliance with Control 3.2 Assessment, Authorization and Monitoring, Section 7, “CA-8 Penetration Testing”; [2: WMATA System Implementation Statement]</li>
<li>(3) In-depth user activity monitoring; [3: WMATA System Implementation Statement]</li>
<li>(4) Security instrumentation; [4: WMATA System Implementation Statement]</li>
<li>(5) Automated security test cases; [5: WMATA System Implementation Statement]</li>
<li>(6) Simulate malicious user activities and conduct testing; [6: WMATA System Implementation Statement]</li>
<li>(7) Insider threat assessment; [7: WMATA System Implementation Statement]</li>
<li>(8) Performance and load testing; and [8: WMATA System Implementation Statement]</li>
<li>(9) Data leakage or data loss assessment [9: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> The organization conducts risk analysis to support selection of an assessment target (e.g., the live system, an off-line replica or lab system). [OT Systems Only: WMATA System Implementation Statement]

Related Controls: PE-3, SI-2

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The organization conducts risk analysis to support the selection of an assessment target (e.g., the live system, an offline replica, or lab system). [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b> Specialized Assessments</b></p>Include as part of control assessments, [Assignment: organization-defined frequency], [Selection: announced; unannounced], [Selection (one or more): in-depth monitoring; security instrumentation; automated security test cases; vulnerability scanning; malicious user testing; insider threat assessment; performance and load testing; data leakage or data loss assessment; [Assignment: organization-defined other forms of assessment]].' WHERE [Requirement_Id] = 37614
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Approve and manage the exchange of information between systems using appropriate exchange agreements; and [a: WMATA System Implementation Statement]</li>
<li>b. Document, as part of each exchange agreement, the interface characteristics, security and privacy requirements, controls, and responsibilities for each system, and the impact level of the information communicated; and [b: WMATA System Implementation Statement]</li>
<li>c. Review and update the agreements annually. [c: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Organizations perform risk-benefit analysis to support determining whether an OT should be connected to other system(s). The authorizing official (AO) fully understands the organizational information security policies and procedures; the OT security policies and procedures; the risks to organizational operations and assets, individuals, other organizations, and the nation associated with the connection to other system(s); the individuals and organizations that operate and maintain the systems, including maintenance contractors or service providers; and the specific health, safety, and environmental risks associated with a particular interconnection. Connections from the OT environment to other security zones may cross the authorization boundary, such that two different authorizing officials may be required to approve the connection. Decisions to accept risk are documented.[OT Systems Only: WMATA System Implementation Statement]
Related Controls: AC-4, AC-20, CA-6, IA-3, IR-4, PL-2, PT-7, RA-3, SA-9, SC-7, SI-12
<li>d. Security Controls Enhancement(s): [d: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Organizations perform risk-benefit analysis to determine whether an OT should be connected to other systems. The authorizing official (AO) fully understands the organizational information security policies and procedures; the OT security policies and procedures; the risks to organizational operations and assets, individuals, other organizations, and the Nation associated with the connection to other systems; the individuals and organizations that operate and maintain the systems, including maintenance contractors or service providers; and the specific health, safety, and environmental risks associated with a particular interconnection. Connections from the OT environment to other security zones may cross the authorization boundary such that two different authorizing officials may be required to approve the connection. Decisions to accept risk are documented. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Information Exchange</b></p>a. Approve and manage the exchange of information between the system and other systems using [Selection (one or more): interconnection security agreements; information exchange security agreements; memoranda of understanding or agreement; service level agreements; user agreements; nondisclosure agreements; [Assignment: organization-defined type of agreement]];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N' 
Verify that individuals or systems transferring data between interconnecting systems have the requisite authorizations (i.e., write permissions or privileges) prior to accepting data. [WMATA System Implementation Statement]

Related Controls: AC-2, AC-3, AC-4

', [Supplemental_Info]=N'<p><b> Transfer Authorizations</b></p>Verify that individuals or systems transferring data between interconnecting systems have the requisite authorizations (i.e., write permissions or privileges) prior to accepting such data.' WHERE [Requirement_Id] = 37616
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Develop a plan of action and milestones for the system to document the planned remediation actions of the organization to correct weaknesses or deficiencies noted during the assessment of the controls and to reduce or eliminate known vulnerabilities in the system; and [a: WMATA System Implementation Statement]</li>
<li>b. Update existing plan of action and milestones monthly based on the findings from control assessments, independent audits or reviews, and continuous monitoring activities. [b: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> OT Discussion: Corrective actions identified in assessments may not be immediately actionable in an OT environment; therefore, short-term mitigations may be implemented to reduce risk as part of the gap closure plan or plan of action and milestones. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: CA-2, CA-7, PM-4, PM-7, RA-7, SI-2, SI-

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Corrective actions identified in assessments may not be immediately actionable in an OT environment. Therefore, short-term mitigations may be implemented to reduce risk as part of the gap closure plan or plan of action and milestones. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Plan of Action and Milestones</b></p>a. Develop a plan of action and milestones for the system to document the planned remediation actions of the organization to correct weaknesses or deficiencies noted during the assessment of the controls and to reduce or eliminate known vulnerabilities in the system; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Assign a senior official as the authorizing official for the system; [a: WMATA System Implementation Statement]</li>
<li>b. Assign a senior official as the authorizing official for common controls available for inheritance by organizational systems; [b: WMATA System Implementation Statement]</li>
<li>c. Ensure that the authorizing official for the system, before commencing operations: [c: WMATA System Implementation Statement]</li>
<li>i) Accepts the use of common controls inherited by the system; and [c.i: WMATA System Implementation Statement]</li>
<li>ii) Authorizes the system to operate; [c.ii: WMATA System Implementation Statement]</li>
<li>d. Ensure that the authorizing official for common controls authorizes the use of those controls for inheritance by organizational systems; [d: WMATA System Implementation Statement]</li>
<li>e. Update the authorizations annually. [e: WMATA System Implementation Statement]</li>

Related Controls: CA-2, CA-3, CA-7, PM-9, PM-10, RA-3, SA-10, SI-12

', [Supplemental_Info]=N'<p><b>Authorization</b></p>a. Assign a senior official as the authorizing official for the system;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Develop a system-level continuous monitoring strategy and implement continuous monitoring in accordance with the organization-level continuous monitoring strategy that includes: [WMATA System Implementation Statement]

<li>a. Establishing the following system-level metrics to be monitored: [a: WMATA System Implementation Statement]</li>
<li>i) Tier 1 (Organization-wide Metrics): [a.i: WMATA System Implementation Statement]</li>
<li>(1) Number of Assessed and Authorized systems per year; [a.i.1: WMATA System Implementation Statement]</li>
<li>(2) Number of authorized and unauthorized information systems components per quarter (includes systems with End of Life (EOL) components); [a.i.2: WMATA System Implementation Statement]</li>
<li>(3) Number of software vulnerabilities by mission/business function, categorized by Critical, High, Moderate and Low impact/risk per quarter; [a.i.3: WMATA System Implementation Statement]</li>
<li>(4) Number of POAMs open and closed per quarter; [a.i.4: WMATA System Implementation Statement]</li>
<li>(5) Rate of compliance to the annual cybersecurity awareness and training certification; and [a.i.5: WMATA System Implementation Statement]</li>
<li>(6) Rate of noncompliance to the annual cybersecurity awareness and training certification. [a.i.6: WMATA System Implementation Statement]</li>
<li>ii) Tier 2 (Mission/Business Process Metrics): [a.ii: WMATA System Implementation Statement]</li>
<li>(1) Number of authorized and unauthorized information systems components per month (includes systems with EOL components); [a.ii.1: WMATA System Implementation Statement]</li>
<li>(2) Number of software vulnerabilities by mission/business function, categorized by Critical, High, Moderate and Low impact/risk per month; [a.ii.2: WMATA System Implementation Statement]</li>
<li>(3) Number of POAMs open and closed per month; and [a.ii.3: WMATA System Implementation Statement]</li>
<li>(4) Number of ISCM security control failures per month, [a.ii.4: WMATA System Implementation Statement]</li>
<li>iii) Tier 3 (System-level Metrics): [a.iii: WMATA System Implementation Statement]</li>
<li>(1) Number of software vulnerabilities by system; [a.iii.1: WMATA System Implementation Statement]</li>
<li>(2) Number of authorized and unauthorized information systems components per month (includes systems with EOL components); [a.iii.2: WMATA System Implementation Statement]</li>
<li>(3) Number of software vulnerabilities by mission/business function, categorized by Critical, High, Moderate and Low impact/risk per month; [a.iii.3: WMATA System Implementation Statement]</li>
<li>(4) Number of POAMs open and closed per month; and [a.iii.4: WMATA System Implementation Statement]</li>
<li>(5) Number of ISCM security control failures based on the review monthly. [a.iii.5: WMATA System Implementation Statement]</li>
<li>b. Assess and monitor control effectiveness in alignment with the frequencies defined in the continuous monitoring strategy; [b: WMATA System Implementation Statement]</li>
<li>c. Ongoing control assessments in accordance with the continuous monitoring strategy; [c: WMATA System Implementation Statement]</li>
<li>d. Ongoing monitoring of system and organization-defined metrics in accordance with the continuous monitoring strategy; [d: WMATA System Implementation Statement]</li>
<li>e. Correlation and analysis of information generated by control assessments and monitoring; [e: WMATA System Implementation Statement]</li>
<li>f. Response actions to address results of the analysis of control assessment and monitoring information; and [f: WMATA System Implementation Statement]</li>
<li>g. Reporting the security and privacy status of the system to the AO annually. [g: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Continuous monitoring programs for OT are designed, documented, and implemented with input from OT personnel. The organization ensures that continuous monitoring does not interfere with OT functions. The individual/group designing and conducting the continuous monitoring for the OT systems implements monitoring consistent with the organizational information security policies and procedures, the OT security policies and procedures, and the specific health, safety, and environmental risks associated with a particular facility and/or process. Continuous monitoring can be automated or manual at a frequency sufficient to support risk-based decisions. For example, the organization may determine for lower-risk, isolated systems to monitor event logs manually on a specified frequency less often than for higher-risk, networked systems. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AC-2, AC-6, AC-17, AT-4, AU-6, CA-2, CA-5, CA-6, CM-3, CM-4, CM-6, CM-11, IA-5, IR-5, MA-2, MA-3, MA-4, PE-3, PE-6, PE-14, PE-16, PL-2, PM-4, PM-6, PM-9, PM-10, PM-12, PM-14, PM-23, PM-28, PM-31, PS-7, PT-7, RA-3, RA-5, RA-7, SA-8, SA-9, SA-11, SC-5, SC-7, SC-18, SI-3, SI-4, SI-12, SR-6
<li>h. Security Controls Enhancement(s): [h: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Continuous monitoring programs for OT are designed, documented, and implemented with input from OT personnel. The organization ensures that continuous monitoring does not interfere with OT functions. The individual or group designing and conducting the continuous monitoring for the OT systems implements a monitoring program that is consistent with the organizational information security policies and procedures, the OT security policies and procedures, and the specific health, safety, and environmental risks associated with a particular facility and/or process. Continuous monitoring can be automated or manual at a frequency sufficient to support risk-based decisions. For example, the organization may monitor event logs manually on a specified frequency less often for lower-risk, isolated systems than for higher-risk, networked systems. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Continuous Monitoring</b></p>Develop a system-level continuous monitoring strategy and implement continuous monitoring in accordance with the organization-level continuous monitoring strategy that includes:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Employ independent assessors or assessment teams to monitor the controls in the system on an ongoing basis. [WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b> Independent Assessment</b></p>Employ independent assessors or assessment teams to monitor the controls in the system on an ongoing basis.' WHERE [Requirement_Id] = 37620
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Ensure risk monitoring is an integral part of the continuous monitoring strategy that includes the following: [WMATA System Implementation Statement]

<li>(1) Effectiveness monitoring; [1: WMATA System Implementation Statement]</li>
<li>(2) Compliance monitoring; and [2: WMATA System Implementation Statement]</li>
<li>(3) Change monitoring. [3: WMATA System Implementation Statement]</li>

', [Supplemental_Info]=N'<p><b> Risk Monitoring</b></p>Ensure risk monitoring is an integral part of the continuous monitoring strategy that includes the following:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Conduct penetration testing annually or as prescribed and approved by the AO in the SSP. Penetration testing shall be performed at the discretion of DMCS on new products and services before deployment within WMATA’s computing environment or prior to hosting WMATA data on the system/service. [a: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Penetration testing is used with care on OT networks to ensure that OT functions are not adversely impacted by the testing process. In general, OT systems are highly sensitive to timing constraints and have limited resources. Example compensating controls include employing a replicated, virtualized, or simulated system to conduct penetration testing. Production OT may need to be taken off-line before testing can be conducted. If OT systems are taken off-line for testing, tests are scheduled to occur during planned OT outages whenever possible. If penetration testing is performed on non-OT networks, extra care is taken to ensure that tests do not propagate into the OT network. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: RA-5, RA-10, SA-11, SR-5, SR-6
<li>b. Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Penetration testing is used with care on OT networks to ensure that OT functions are not adversely impacted by the testing process. In general, OT systems are highly sensitive to timing constraints and have limited resources. Example compensating controls include employing a replicated, virtualized, or simulated system to conduct penetration testing. Production OT may need to be taken offline before testing can be conducted. If OT systems are taken offline for testing, tests are scheduled to occur during planned OT outages whenever possible. If penetration testing is performed on non-OT networks, extra care is taken to ensure that tests do not propagate into the OT network. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Penetration Testing</b></p>Conduct penetration testing [Assignment: organization-defined frequency] on [Assignment: organization-defined systems or system components].' WHERE [Requirement_Id] = 37622
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Employ an independent penetration testing agent or team to perform penetration testing on the system or system components. [WMATA System Implementation Statement]

Related Controls: CA-2

<b><u>NIST 800-82 Rev 3:</u></b>
Rationale for removing CA-8 (1) from HIGH baseline: Specific expertise is necessary to conduct effective penetration testing on OT systems, and it may not be feasible to identify independent personnel with the appropriate skillset or knowledge to perform penetration testing on an OT 
environment. While an independent penetration test agent or team is recommended, it may not be feasible for all high-impact OT systems. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Penetration Testing | Independent Penetration Testing Agent or Team</b></p>Employ an independent penetration testing agent or team to perform penetration testing on the system or system components.' WHERE [Requirement_Id] = 37623
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Authorize internal connections of system components or classes of components that are a part of the same system to include, but not limited to, mobile devices (e.g., smartphones and tablets), notebook and desktop computers, printers, copiers, facsimile machines, scanners, sensors, and servers; [a: WMATA System Implementation Statement]</li>
<li>b. Document, for each internal connection, the interface characteristics, security and privacy requirements, and the nature of the information communicated; [b: WMATA System Implementation Statement]</li>
<li>c. Terminate internal system connections when no longer needed or as documented in an approved change order as a part of the configuration change control process, in accordance with Control 3.4 Configuration Management; and [c: WMATA System Implementation Statement]</li>
<li>d. Review annually the continued need for each internal connection. [d: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Organizations perform risk-benefit analysis to determine whether OT equipment should be connected to other internal system components, then document these connections. The AO fully understands the potential risks associated with approving individual connections or approving a class of components to be connected. As an example, the AO may broadly approve the connection of any sensors limited to 4 to 20 milliamp (mA) communication, while other connection types (e.g., serial or ethernet) require individual approval. Decisions to accept risk are documented. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-3, AC-4, AC-18, AC-19, CM-2, IA-3, SC-7, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Organizations perform risk-benefit analysis to determine whether OT equipment should be connected to other internal system components and then document those connections. The AO fully understands the potential risks associated with approving individual connections or approving a class of components to be connected. For example, the AO may broadly approve the connection of any sensors limited to 4 to 20 milliamp (mA) communication, while other connection types (e.g., serial or Ethernet) require individual approval. Decisions to accept risk are documented. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Internal System Connections</b></p>a. Authorize internal connections of [Assignment: organization-defined system components or classes of components] to the system;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
Reference P/I 15.28 Cybersecurity Policy for requirements. [WMATA System Implementation Statement]

Related Controls: PM-9, PS-8, SA-8, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The policy specifically addresses the unique properties and requirements of OT and the relationship to non-OT systems. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Configuration Management Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Use software and associated documentation in accordance with contract agreements and copyright laws. [a: WMATA System Implementation Statement]</li>
<li>b. Track the use of software and associated documentation protected by quantity licenses to control copying and distribution; and [b: WMATA System Implementation Statement]</li>
<li>c. Control and document the use of peer-to-peer file sharing technology to ensure that this capability is not used for the unauthorized distribution, display, performance, or reproduction of copyrighted work. [c: WMATA System Implementation Statement]</li>

Related Controls: AC-17, AU-6, CM-7, CM-8, PM-30, SC-7
', [Supplemental_Info]=N'<p><b>Software Usage Restrictions</b></p>a. Use software and associated documentation in accordance with contract agreements and copyright laws;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Users without authorized privileges shall not be permitted to install software on corporate systems; [a: WMATA System Implementation Statement]</li>
<li>b. Enforce software installation policies using procedural and automated methods. [b: WMATA System Implementation Statement]</li>
<li>c. Monitor policy compliance on a continual basis. [c: WMATA System Implementation Statement]</li>

Related Controls: AC-3, AU-6, CM-2, CM-3, CM-5, CM-6, CM-7, CM-8, PL-4, SI-4, SI-7
', [Supplemental_Info]=N'<p><b>User-installed Software</b></p>a. Establish [Assignment: organization-defined policies] governing the installation of software by users;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Identify and document the location(s) of information and the specific system components on which the information is processed and stored. [a: WMATA System Implementation Statement]</li>
<li>b. Identify and document the users who have access to the system and system components where the information is processed and stored; and [b: WMATA System Implementation Statement]</li>
<li>c. Document changes to the location (i.e., system or system components) where the information is processed and stored. [c: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Organizations identify specific information types or components to track where information is being processed and stored. Information to consider in the OT environment may include shared account passwords; PLC backup files; detailed network drawings; and risk assessments that identify specific threats with the environment. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AC-2, AC-3, AC-4, AC-6, CM-8, PM-5, RA-2, SA-4, SA-8, SA-17, SC-4, SC-28, SI-4, SI-7
<li>d. Security Controls Enhancement(s): [d: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Organizations identify specific information types or components to track where information is being processed and stored. Information to consider in the OT environment may include shared account passwords, PLC backup files, detailed network drawings, and risk 
assessments that identify specific threats with the environment. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Information Location</b></p>a. Identify and document the location of [Assignment: organization-defined information] and the specific system components on which the information is processed and stored;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Use automated tools to identify information by information type (including sensitive information) on system components to ensure controls are in place to protect organizational information and individual privacy. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Automated Tools to Support Information Location</b></p>Use automated tools to identify [Assignment: organization-defined information by information type] on [Assignment: organization-defined system components] to ensure controls are in place to protect organizational information and individual privacy.' WHERE [Requirement_Id] = 37629
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'
<li>a. Develop, document, and maintain, under configuration control, a current baseline configuration of the system; and [a: WMATA System Implementation Statement]</li>
<li>b. Review and update the baseline configuration of the system: [b: WMATA System Implementation Statement]</li>
<li>i) At least annually; [b.i: WMATA System Implementation Statement]</li>
<li>ii) When required due to a significant change; and [b.ii: WMATA System Implementation Statement]</li>
<li>iii) When system components are installed or upgraded. [b.iii: WMATA System Implementation Statement]</li>
Related Controls: AC-19, AU-6, CA-9, CM-1, CM-3, CM-5, CM-6, CM-8, CM-9, CP-9, CP-10, CP-12, MA-2, PL-8, PM-5, SA-8, SA-10, SA-15, SC-18
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>



', [Supplemental_Info]=N'<p><b>Baseline Configuration</b></p>a. Develop, document, and maintain under configuration control, a current baseline configuration of the system; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Maintain the currency, completeness, accuracy, and availability of the baseline configuration of the system using configuration management tools; hardware, software, firmware inventory tools, and network management tools. Automated tools shall be employed consistent with Control 3.4 Configuration Management, Section 8, (c), (ii), “CM-8 (2) Automated Maintenance”, to ensure that system component inventory and baseline configurations are aligned. Automated tools shall be employed at the organization level, mission and business process level, and system level on workstations, servers, notebook computers, network components, and mobile devices. [WMATA System Implementation Statement]

Note: See Control 3.4 Configuration Management, Section 8, “CM-8 System Component Inventory” for a list of required system component inventory requirements, and Control 3.4 Configuration Management, Section 6, “CM-6 Configuration Settings” for secure baseline configuration requirements. [Note: WMATA System Implementation Statement]

Related Controls: CM-7, CM-6, CM-8, IA-3, RA-5
', [Supplemental_Info]=N'<p><b> Automation Support for Accuracy and Currency</b></p>Maintain the currency, completeness, accuracy, and availability of the baseline configuration of the system using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37631
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Retain no less than two previous versions of baseline configurations of the system to support rollback. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Retention of Previous Configurations</b></p>Retain [Assignment: organization-defined number] of previous versions of baseline configurations of the system to support rollback.' WHERE [Requirement_Id] = 37632
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Issue mobile systems or devices to include laptops, tablets, and mobile phones with sanitized hard drives, limited applications, and more stringent configuration settings to include all applicable security checklist settings set forth in Control 3.4 Configuration Management, Section 6, “CM-6 Configuration Settings”, to individuals traveling to locations that the organization deems to be of significant risk to include international travel; and [1: WMATA System Implementation Statement]</li>

<li>(2) Apply the following controls to the systems or components when the individuals return from travel and examine the mobile systems or devices for signs of tampering. If any tampering is suspected, provide the mobile system or device to DMCS for forensic analysis. [2: WMATA System Implementation Statement]</li>

<li>(3) All mobile systems or devices shall be purged and reimaged upon return to WMATA. All mobile systems or devices shall be replaced if necessary. If replaced, the original mobile system or device will be disposed of in accordance with WMATA policy. [3: WMATA System Implementation Statement]</li>

Related Controls: CM-6, MP-4, MP-5
', [Supplemental_Info]=N'<p><b> Configure Systems and Components for High-risk Areas</b></p>(a) Issue [Assignment: organization-defined systems or system components] with [Assignment: organization-defined configurations] to individuals traveling to locations that the organization deems to be of significant risk; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Determine and document the types of changes to the system that are configuration- controlled; [a: WMATA System Implementation Statement]</li>
<li>b. Review proposed configuration-controlled changes to the system and approve or disapprove such changes with explicit consideration for security and privacy impact analyses; [b: WMATA System Implementation Statement]</li>
<li>c. Document configuration change decisions associated with the system; [c: WMATA System Implementation Statement]</li>
<li>d. Establish an enterprise CCB to review, approve, and coordinate all changes to WMATA systems, CIs, or system components; [d: WMATA System Implementation Statement]</li>
<li>e. Require all configuration changes to have business owner approval prior to the CCB; [e: WMATA System Implementation Statement]</li>
<li>f. Implement approved configuration-controlled changes to the system by non-developers; [f: WMATA System Implementation Statement]</li>
<li>g. Prior to implementation of approved configuration control changes pertaining to source code changes or software upgrades, create a backup of software and components based on a last known working configuration to ensure rollback capability prior to the implementation. [g: WMATA System Implementation Statement]</li>
<li>h. Prior to CCB approval configuration control changes, such as source code changes or software upgrades, shall be validated against a trusted source to ensure the integrity of the code or installation files. [h: WMATA System Implementation Statement]</li>
<li>i. Retain records of configuration-controlled changes to the system for at least five years or longer if specified by regulation, law, or external compliance mandate; [i: WMATA System Implementation Statement]</li>
<li>j. Monitor and review activities associated with configuration-controlled changes to the system; and [j: WMATA System Implementation Statement]</li>
<li>k. Coordinate and provide oversight for configuration change control activities through the CCB that convenes weekly. Normal changes shall be presented to the TWG prior to being presented at the CCB. [k: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Configuration change control procedures should align with the organization’s management of change practices. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: CA-7, CM-2, CM-4, CM-5, CM-6, CM-9, CM-11, IA-3, MA-2, PE-16, PT-6, RA-8, SA-8, SA-10, SC-28, SI-2, SI-3, SI-4, SI-7, SI-10, SR-11
<li>l. Security Controls Enhancement(s): [l: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Configuration change control procedures should align with the organization’s management of change practices. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Configuration Change Control</b></p>a. Determine and document the types of changes to the system that are configuration-controlled;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Use automated mechanisms to: [WMATA System Implementation Statement]

<li>(1) Document proposed changes to the system; [1: WMATA System Implementation Statement]</li>
<li>(2) Notify both the CCB and TWG of proposed changes to the system and request change approval as required; [2: WMATA System Implementation Statement]</li>
<li>(3) Highlight proposed changes to the system that have not been approved or disapproved within one month; [3: WMATA System Implementation Statement]</li>
<li>(4) Prohibit changes to the system until designated approvals are received; [4: WMATA System Implementation Statement]</li>
<li>(5) Document all changes to the system; and [5: WMATA System Implementation Statement]</li>
<li>(6) Notify the required stakeholders when approved changes to the system are completed. [6: WMATA System Implementation Statement]</li>
' WHERE [Requirement_Id] = 37635
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Test, validate, and document changes to the system before finalizing the implementation of the changes. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Testing, Validation, and Documentation of Changes</b></p>Test, validate, and document changes to the system before finalizing the implementation of the changes.' WHERE [Requirement_Id] = 37636
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Require the CISO and the Privacy Officer, or designees, to be members of the DM CCB. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Security and Privacy Representatives</b></p>Require [Assignment: organization-defined security and privacy representatives] to be members of the [Assignment: organization-defined configuration change control element].' WHERE [Requirement_Id] = 37637
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Ensure that cryptographic mechanisms used to provide the following controls are under configuration management: [WMATA System Implementation Statement]

<li>(1) Cryptographic Module Authentication [1: WMATA System Implementation Statement]</li>
<li>(2) Cryptographic Key Establishment and Management [2: WMATA System Implementation Statement]</li>
<li>(3) Cryptographic Protection [3: WMATA System Implementation Statement]</li>
<li>(4) Public Key Certificates [4: WMATA System Implementation Statement]</li>

Related Controls: SC-12
', [Supplemental_Info]=N'<p><b> Cryptography Management</b></p>Ensure that cryptographic mechanisms used to provide the following controls are under configuration management: [Assignment: organization-defined controls].' WHERE [Requirement_Id] = 37638
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Review changes to the system [Assignment: organization-defined frequency] or when [Assignment: organization-defined circumstances] to determine whether unauthorized changes have occurred.  [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> The organization takes into consideration OT-specific requirements when determining frequency and/or circumstances for reviewing system changes. As an example, safety instrumented systems may be justified for review of system changes on a predetermined frequency to ensure that no inadvertent changes have been made to the logic solver portion of a safety instrumented function. [OT Systems Only: WMATA System Implementation Statement]
	
Related Controls: AU-6, AU-7, CM-3

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The organization considers OT-specific requirements when determining the frequency and/or circumstances for reviewing system changes. For example, safety instrumented systems may be justified for the review of system changes on a predetermined frequency to ensure that no inadvertent changes have been made to the logic solver portion of a safety instrumented function. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Configuration Change Control | Review System Changes</b></p>Review changes to the system [Assignment: organization-defined frequency] or when [Assignment: organization-defined circumstances] to determine whether unauthorized changes have occurred.' WHERE [Requirement_Id] = 37639
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Prevent or restrict changes to the configuration of the system under the following circumstances: [Assignment: organization-defined circumstances]. [WMATA System Implementation Statement]
	
<b><u>OT Systems Only:</u></b> The organization prevents or restricts configuration changes based on a risk determination that the system should not be modified without additional permission. For example, some PLCs have physical key switches that are used to place the PLC in a mode that allows for programming changes. Physical key switches can restrict configuration changes so that physical access is required to make a modification to the system. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The organization prevents or restricts configuration changes based on a risk determination that the system should not be modified without additional permission. For example, some PLCs have physical key switches that are used to place the PLC in a mode that allows for programming changes. Physical key switches can restrict configuration changes so that physical access is required to make a modification to the system. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Configuration Change Control | Prevent or Restrict Configuration Changes</b></p>Prevent or restrict changes to the configuration of the system under the following circumstances: [Assignment: organization-defined circumstances].' WHERE [Requirement_Id] = 37640
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Analyze changes to the system to determine potential security and privacy impacts prior to change implementation. [a: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> The organization considers OT safety and security interdependencies. OT security and safety personnel are included in change process management if the change to the system may have an impact on safety or security. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: CA-7, CM-3, CM-8, CM-9, MA-2, RA-3, RA-5, RA-8, SA-5, SA-8, SA-10, SI-2
<li>b. Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The organization considers OT safety and security interdependencies. OT security and safety personnel are included in change process management if the change to the system may impact safety or security. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Impact Analyses</b></p>Analyze changes to the system to determine potential security and privacy impacts prior to change implementation.' WHERE [Requirement_Id] = 37641
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Analyze changes to the system in a separate test environment before implementation in an operational environment, looking for security and privacy impacts due to flaws,weaknesses, incompatibility, or intentional malice. [WMATA System Implementation Statement]

Related Controls: SA-11, SC-7
', [Supplemental_Info]=N'<p><b> Separate Test Environments</b></p>Analyze changes to the system in a separate test environment before implementation in an operational environment, looking for security and privacy impacts due to flaws, weaknesses, incompatibility, or intentional malice.' WHERE [Requirement_Id] = 37642
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'After system changes, verify that the impacted controls are implemented correctly, operating as intended, and producing the desired outcome regarding meeting the security and privacy requirements for the system. [WMATA System Implementation Statement]

Related Controls: SA-11, SC-3, SI-6
', [Supplemental_Info]=N'<p><b> Verification of Controls</b></p>After system changes, verify that the impacted controls are implemented correctly, operating as intended, and producing the desired outcome with regard to meeting the security and privacy requirements for the system.' WHERE [Requirement_Id] = 37643
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Define, document, approve, and enforce physical and logical access restrictions associated with changes to the system. [a: WMATA System Implementation Statement]</li>
<li>b. Restrict access for Developers to production application objects, elements, and data. [b: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Some OT devices allow for the configuration and use of mode change switches. Where available, these should be used to prevent unauthorized changes. As an example, many PLCs have key switches that allow the device to be placed in a programming mode or a running mode. Those PLCs should be placed in a running or remote mode to prevent unauthorized programming changes, and the key should be removed from the key switch and managed appropriately. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AC-3, AC-5, AC-6, CM-9, PE-3, SC-28, SI-2, SI-10
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Some OT devices allow for the configuration and use of mode change switches. Where available, these should be used to prevent unauthorized changes. For example, many PLCs have key switches that allow the device to be placed in a programming mode or a running 
<li>mode. Those PLCs should be placed in a running or remote mode to prevent unauthorized programming changes, and the key should be removed from the key switch and managed appropriately. [NIST 800-82 Rev 3: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Access Restrictions for Change</b></p>Define, document, approve, and enforce physical and logical access restrictions associated with changes to the system.' WHERE [Requirement_Id] = 37644
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Enforce access restrictions using DMCS-approved automated mechanisms; and [1: WMATA System Implementation Statement]</li>
<li>(2) Automatically generate audit records of the enforcement actions. [2: WMATA System Implementation Statement]</li>

Related Controls: AU-2, AU-6, AU-7, AU-12, CM-6, CM-11, SI-12
', [Supplemental_Info]=N'<p><b> Automated Access Enforcement and Audit Records</b></p>(a) Enforce access restrictions using [Assignment: organization-defined automated mechanisms]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Establish and document configuration settings for components employed within the system that reflect the most restrictive mode consistent with operational requirements using applicable Security Technical Implementation Guides (STIG) and the Center for Internet Security (CIS) Benchmarks designated and approved by DMCS, which results in approved security checklists. Applicable settings shall take precedence over other policy configuration settings unless otherwise approved by the Authorizing Officer (AO). [a: WMATA System Implementation Statement]</li>
<li>b. Implement the configuration settings based on the approved security checklist; [b: WMATA System Implementation Statement]</li>
<li>c. Identify, document, and receive approval from the AO for any deviations from established configuration settings. Temporary deviation requests shall be documented in a POA&M for continuous monitoring, tracking, and remediation, and specify any system component(s) and operational requirements that prevent implementation of the security setting(s); and [c: WMATA System Implementation Statement]</li>
<li>d. Monitor and control changes to the configuration settings in accordance with organizational policies and procedures. [d: WMATA System Implementation Statement]</li>
<li>e. All WMATA systems and devices shall have approved baselines in accordance with the configuration settings established in Control 3.4 Configuration Management, Section 6, “CM- 6 Configuration Settings”. [e: WMATA System Implementation Statement]</li>
Related Controls: AC-3, AC-19, AU-2, AU-6, CA-9, CM-2, CM-3, CM-5, CM-6, CM-7, CM-11, CP-7, CP-9, CP-10, IA-3, IA-5, PL-8, PL-9, RA-5, SA-4, SA-5, SA-8, SA-9, SC-18, SC-28, SI-2, SI-4, SI-6
<li>f. Security Controls Enhancement(s): [f: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Configuration Settings</b></p>a. Establish and document configuration settings for components employed within the system that reflect the most restrictive mode consistent with operational requirements using [Assignment: organization-defined common secure configurations];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Manage, apply, and verify configuration settings for system components using DMCS approved automated mechanisms. [WMATA System Implementation Statement]</li>

Related Controls: CA-7
', [Supplemental_Info]=N'<p><b> Automated Management, Application, and Verification</b></p>Manage, apply, and verify configuration settings for [Assignment: organization-defined system components] using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37647
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Take the following actions in response to unauthorized changes to configuration settings: [1: WMATA System Implementation Statement]</li>
<li>(a) Alert designated personnel to restore authorized configuration settings or halt affected system processing. These requirements shall be documented in the SSP. [1.a: WMATA System Implementation Statement]</li>
<li>(b) If system processing is halted, execute the Information System Contingency Plan (ISCP)/Disaster Recovery Plan (DRP). [1.b: WMATA System Implementation Statement]</li>

Related Controls: IR-4, IR-6, SI-7
', [Supplemental_Info]=N'<p><b> Respond to Unauthorized Changes</b></p>Take the following actions in response to unauthorized changes to [Assignment: organization-defined configuration settings]: [Assignment: organization-defined actions].' WHERE [Requirement_Id] = 37648
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Configure the system to provide only mission essential capabilities consistent with the business mission or operations; and [a: WMATA System Implementation Statement]</li>
<li>b. Prohibit or restrict the use of the disallowed, unnecessary and nonsecure functions, ports, protocols, software, and/or services published in the PPSM to prevent unauthorized connection of components, transfer of information, and tunneling. [b: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> The organization implements least functionality by allowing only specified functions, protocols, and/or services required for OT operations. For non-routable protocols such as serial communications, interrupts could be disabled or set points could be made read-only except for privileged users to limit functionality. Ports are part of the address space in network protocols and are often associated with specific protocols or functions. For routable protocols, ports can be disabled on many networking devices to limit functionality to the minimum required for operation. [OT Systems Only: WMATA System Implementation Statement] 
Related Controls: AC-3, AC-4, CM-2, CM-5, CM-6, CM-11, RA-5, SA-4, SA-5, SA-8, SA-9, SA-15, SC-2, SC-3, SC-7, SI-4
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The organization implements least functionality by allowing only the specified functions, protocols, and/or services required for OT operations. For non-routable protocols, such as serial communications, interrupts could be disabled or set points could be made readonly except for privileged users to limit functionality. Ports are part of the address space in network protocols and are often associated with specific protocols or functions. For routable protocols, ports can be disabled on many networking devices to limit functionality to the minimum required for operation. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Least Functionality</b></p>a. Configure the system to provide only [Assignment: organization-defined mission essential capabilities]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Review the system at least annually, as a part of system changes, or when a significant change occurs to identify unnecessary and/or nonsecure functions, ports, protocols, software, and services; and [1: WMATA System Implementation Statement]</li>
<li>(2) Disable or remove disallowed, unnecessary and nonsecure functions, ports, protocols, software, and services within the system. [2: WMATA System Implementation Statement]</li>

Related Controls: AC-18
', [Supplemental_Info]=N'<p><b> Periodic Review</b></p>(a) Review the system [Assignment: organization-defined frequency] to identify unnecessary and/or nonsecure functions, ports, protocols, software, and services; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Where feasible, limit component functionality to a single function per component. [1: WMATA System Implementation Statement]</li>
<li>(2) Remove unused or unnecessary software and disable unused or unnecessary physical and logical ports and protocols to prevent unauthorized connection of components, transfer of information, and tunneling. [2: WMATA System Implementation Statement]</li>
<li>(3) Employ network scanning tools, intrusion detection and prevention systems, and end-point protection technologies, such as firewalls and host-based intrusion detection systems, to identify and prevent the use of prohibited functions, protocols, ports, and services. [3: WMATA System Implementation Statement]</li>

Related Controls: CM-8, PL-4, PL-9, PM-5, PS-6
', [Supplemental_Info]=N'<p><b> Prevent Program Execution</b></p>Prevent program execution in accordance with [Selection (one or more): [Assignment: organization-defined policies, rules of behavior, and/or access agreements regarding software program usage and restrictions]; rules authorizing the terms and conditions of software program usage].' WHERE [Requirement_Id] = 37651
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) The operation of software, as designated on the APL, which are authorized to execute on the system; [1: WMATA System Implementation Statement]</li>
<li>(2) Employ a deny-all, permit-by-exception policy to allow the execution of authorized software programs on the system; and [2: WMATA System Implementation Statement]</li>
<li>(3) Review and update the APL annually. [3: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> The set of applications that run in OT is relatively static, making allowlisting practical. DHS recommends using application allowlisting for OT equipment. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: CM-2, CM-6, CM-8, CM-10, PL-9, PM-5, SA-10, SI-7

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The set of applications that run in OT is relatively static, making allowlisting practical. DHS recommends using application allowlisting for OT equipment. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Least Functionality | Authorized Software</b></p>Unauthorized software programs can be limited to specific versions or from a specific source. The concept of prohibiting the execution of unauthorized software may also be applied to user actions, system ports and protocols, IP addresses/ranges, websites, and MAC addresses.' WHERE [Requirement_Id] = 37652
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Develop and document an inventory of system components within the enterprise CMDB that: [a: WMATA System Implementation Statement]</li>
<li>i) Accurately reflects the system; [a.i: WMATA System Implementation Statement]</li>
<li>ii) Includes all components within the system; [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Does not include duplicate accounting of components or components assigned to any other system; [a.iii: WMATA System Implementation Statement]</li>
<li>iv) Is at the level of granularity deemed necessary for tracking and reporting; and [a.iv: WMATA System Implementation Statement]</li>
<li>v) Includes the following information to achieve system component accountability:  [a.v: WMATA System Implementation Statement]</li>
<li>(1) Hardware, software, and firmware inventories: [a.v.1: WMATA System Implementation Statement]</li>
<li>(a) Hardware inventory includes specifications (manufacturer, type, model, serial number, physical location).  [a.v.1.a: WMATA System Implementation Statement]</li>
<li>(b) Software inventory includes software name, software license information (minimally inclusive of expiration date, license type, number of licenses), serial numbers (if applicable), information system/component owner, IP/hostname, software products and version numbers for all components, application URLs (for scanning), responsible point of contact and role/organizational unit per Control 3.4 Configuration Management, Section 8, (c), (iv), “CM-8 (4) Accountability Information”, and for a networked component/device, the machine name (including DNS name, Netbios Name), network address (IPv4 & IPv6).  [a.v.1.b: WMATA System Implementation Statement]</li>
<li>(c) Firmware inventory includes vendor name, product, and version. [a.v.1.c: WMATA System Implementation Statement]</li>
<li>b. Review and update the system component inventory quarterly. Monitoring for any changes to the system component inventory and monitoring for the addition of unauthorized system components may be accomplished on an ongoing basis or by the periodic scanning of systems for that purpose. Automated mechanisms may also be used to prevent the connection of unauthorized components as noted in Control 3.4 Configuration Management Section 8, (c), (iii), “CM-8 (3) Automated Unauthorized Component Detection”. [b: WMATA System Implementation Statement]</li>
<li>c. Systems or system components that do not have or cannot support agents (e.g., IoT devices or sensors) shall be isolated, sandboxed, or segmented by placing them in separate domains or subnets, or by quarantining such components. [c: WMATA System Implementation Statement]</li>
Related Controls: CM-2, CM-7, CM-8, CM-9, CM-10, CM-11, CP-2, CP-9, MA-2, MA-6, PL-9, PM-5, SA-4, SA-5, SI-2, SR-4
<li>d. Security Controls Enhancement(s): [d: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>System Component Inventory</b></p>a. Develop and document an inventory of system components that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Update the inventory of system components as part of component installations, removals, and system updates. [1: WMATA System Implementation Statement]</li>

Related Controls: PM-16
', [Supplemental_Info]=N'<p><b> Updates During Installation and Removal</b></p>Update the inventory of system components as part of component installations, removals, and system updates.' WHERE [Requirement_Id] = 37654
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Maintain the currency, completeness, accuracy, and availability of the inventory of system components using automated mechanisms to maintain the accuracy of the CMDB. [1: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b> Automated Maintenance</b></p>Maintain the currency, completeness, accuracy, and availability of the inventory of system components using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37655
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Immediately (real-time) remediate any detected unauthorized hardware, software, and firmware components within the system using automated mechanisms such as rogue system or device detectors, and Network Access Control (NAC); [1: WMATA System Implementation Statement]</li>
<li>(2) Take the following actions when unauthorized components are detected: quarantine the components; notify required stakeholders. [2: WMATA System Implementation Statement]</li>
<li>(3) Authorized components that fail to meet vulnerability management requirements shall be placed into a remediation zone until requirements are met. [3: WMATA System Implementation Statement]</li>

Related Controls: AC-19, CA-7, RA-5, SC-3, SC-39, SI-3, SI-4, SI-7
', [Supplemental_Info]=N'<p><b> Automated Unauthorized Component Detection</b></p>(a) Detect the presence of unauthorized hardware, software, and firmware components within the system using [Assignment: organization-defined automated mechanisms] [Assignment: organization-defined frequency]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Include in the system component inventory information, a means for identifying by name and position the System Owner accountable for administering those components and by name and/or position the System Administrator responsible for administering those components. [1: WMATA System Implementation Statement]</li>

Related Controls: AC-3
', [Supplemental_Info]=N'<p><b> Accountability Information</b></p>Include in the system component inventory information, a means for identifying by [Selection (one or more): name; position; role], individuals responsible and accountable for administering those components.' WHERE [Requirement_Id] = 37657
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Develop, document, and implement a configuration management plan for the system that: [a: WMATA System Implementation Statement]</li>
<li>i) Addresses roles, responsibilities, and configuration management processes and procedures; [a.i: WMATA System Implementation Statement]</li>
<li>ii) Establishes a process for identifying configuration items throughout the system development life cycle and for managing the configuration of the configuration items; [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Defines the configuration items for the system and places the configuration items under configuration management; [a.iii: WMATA System Implementation Statement]</li>
<li>iv) Is reviewed and approved by the business owner(s), system owner, and CCB; [a.iv: WMATA System Implementation Statement]</li>
<li>v) Protects the configuration management plan from unauthorized disclosure and modification; and [a.v: WMATA System Implementation Statement]</li>
<li>vi) Identifies a process for configuration monitoring. [a.vi: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Configuration management plans apply to internal and external (e.g., contractors, integrators) resources responsible for device configuration. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: CM-2, CM-3, CM-4, CM-5, CM-8, PL-2, RA-8, SA-10, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Configuration management plans apply to the internal and external (e.g., contractors, integrators) resources responsible for device configuration. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Configuration Management Plan</b></p>Develop, document, and implement a configuration management plan for the system that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Reference P/I 15.28 Cybersecurity Policy for requirements. [WMATA System Implementation Statement]

Related Controls: PM-9, PS-8, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The policy specifically addresses the unique properties and requirements of OT and the relationship to non-OT systems. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Contingency Planning Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Provide for the recovery and reconstitution of the system to a known state within the time period specified in the CP consistent with recovery time and recovery point objectives in the BIA after a disruption, compromise, or failure. [a: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Reconstitution of the OT includes consideration whether system state variables should be restored to initial values or values before disruption (e.g., are valves restored to full open, full closed, or settings prior to disruption). Restoring system state variables may be disruptive to ongoing physical-processes (e.g., valves initially closed may adversely affect system cooling). [OT Systems Only: WMATA System Implementation Statement]
Related Controls: CP-2, CP-4, CP-6, CP-7, CP-9, IR-4, SA-8, SC-24, SI-13
<li>b. Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Reconstitution of the OT includes considering whether system state variables should be restored to initial values or the values before disruption (e.g., are valves restored to full open, full closed, or settings prior to disruption). Restoring system state variables may be disruptive to ongoing physical processes (e.g., valves initially closed may adversely affect system cooling). [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>System Recovery and Reconstitution</b></p>Provide for the recovery and reconstitution of the system to a known state within [Assignment: organization-defined time period consistent with recovery time and recovery point objectives] after a disruption, compromise, or failure.' WHERE [Requirement_Id] = 37660
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement transaction recovery for systems that are transaction-based to include database management systems (DBMS) and other transaction processing systems (e.g., systems that process financial transactions). When available, transaction rollback and journaling shall be implemented. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Transaction Recovery</b></p>Implement transaction recovery for systems that are transaction-based.' WHERE [Requirement_Id] = 37661
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Provide the capability to restore system components from configuration-controlled and integrity-protected information representing a known, operational state for the components within restoration time periods consistent with objectives specified in the CP and associated BIA. [WMATA System Implementation Statement]

Related Controls: CM-2, CM-6
', [Supplemental_Info]=N'<p><b> Restore Within Time Period</b></p>Provide the capability to restore system components within [Assignment: organization-defined restoration time periods] from configuration-controlled and integrity-protected information representing a known, operational state for the components.' WHERE [Requirement_Id] = 37662
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Protect system components used for recovery and reconstitution. [WMATA System Implementation Statement]

Related Controls: AC-3, AC-6, MP-2, MP-4, PE-3, PE-6

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Organizations should consider recovery and reconstitution timeframes when storing spare equipment, including environmental hazards that could damage the equipment. Storage locations and environments should be chosen appropriately for the type of backup equipment. [NIST 800-82 Rev 3_OT Discussion: WMATA System Implementation Statement]

Rationale for adding CP-10 (6) to MOD and HIGH baselines: OT system components stored without protection against environmental threats and unauthorized physical or logical access can be susceptible to compromise or damage. Certain system components may include embedded 
electronics that must be protected from environmental hazards. [NIST 800-82 Rev 3_Rationale: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>System Recovery and Reconstitution | Component Protection</b></p>Protect system components used for recovery and reconstitution.' WHERE [Requirement_Id] = 37663
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'When [Assignment: organization-defined conditions] are detected, enter a safe mode of operation with [Assignment: organization-defined restrictions of safe mode of operation]. [WMATA System Implementation Statement]
	
Related Controls: CM-2, SA-8, SC-24, SI-13, SI-17

<b><u>NIST 800-82 Rev 3:</u></b>
Rationale for adding CP-12 to LOW, MOD, and HIGH baselines: This control provides a framework for the organization to plan its policy and procedures for dealing with IT and OT conditions beyond its control in the environment of operations to minimize potential safety and environmental impacts. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Safe Mode</b></p>When [Assignment: organization-defined conditions] are detected, enter a safe mode of operation with [Assignment: organization-defined restrictions of safe mode of operation].' WHERE [Requirement_Id] = 37664
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Develop an ISCP for the system that: [a: WMATA System Implementation Statement]</li>
<li>i) Identifies essential mission and business functions and associated contingency requirements; [a.i: WMATA System Implementation Statement]</li>
<li>ii) Provides recovery objectives, restoration priorities, and metrics; [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Addresses contingency roles, responsibilities, assigned individuals with contact information; [a.iii: WMATA System Implementation Statement]</li>
<li>iv) Addresses maintaining essential mission and business functions despite a system disruption, compromise, or failure; [a.iv: WMATA System Implementation Statement]</li>
<li>v) Addresses eventual, full system restoration without deterioration of the controls originally planned and implemented; [a.v: WMATA System Implementation Statement]</li>
<li>vi) Addresses the sharing of contingency information; and [a.vi: WMATA System Implementation Statement]</li>
<li>vii) Is reviewed and approved by the SO prior to submission to the AO for acceptance. [a.vii: WMATA System Implementation Statement]</li>
<li>b. Distribute copies of the ISCP to required stakeholders; [b: WMATA System Implementation Statement]</li>
<li>c. Coordinate contingency planning activities with incident handling activities; [c: WMATA System Implementation Statement]</li>
<li>d. Review the ISCP for the system annually; [d: WMATA System Implementation Statement]</li>
<li>e. Update the ISCP to address changes to the organization, system, or environment of operation and problems encountered during ISCP implementation, execution, or testing; [e: WMATA System Implementation Statement]</li>
<li>f. Communicate ISCP changes to required stakeholders; [f: WMATA System Implementation Statement]</li>
<li>g. Incorporate lessons learned from ISCP testing, training, or actual contingency activities into contingency testing and training; and [g: WMATA System Implementation Statement]</li>
<li>h. Protect the ISCP from unauthorized disclosure and modification. [h: WMATA System Implementation Statement]</li>
<li>i. Disaster Recovery Plan (DRP) </li>
Establish a DRP which applies to major, usually physical disruptions to service that deny access to the primary facility infrastructure for an extended period. A DRP is an information system-focused plan designed to restore operability of the target system, application, or computer facility infrastructure at an alternate site after an emergency. The DRP must provide for full restoration at the primary facility. The DRP may be supported by multiple information system contingency plans to address recovery of impacted individual systems once the alternate facility has been established. A DRP may support a Business Continuity Plan (BCP) or Continuity of Operation Plan (COOP) by recovering supporting systems for mission/business processes or mission essential functions at an alternate location. The DRP only addresses information system disruptions that require relocation of operations. [i: WMATA System Implementation Statement]
<b><u>OT Systems Only:</u></b> The organization defines contingency plans for categories of disruptions or failures. In the case of a contingency, the OT equipment executes preprogrammed functions such as alert the operator of the failure and then do nothing, alert the operator and then safely shut down the industrial process, or alert the operator and then maintain the last operational setting prior to failure. Contingency plans for widespread disruption may involve specialized organizations (e.g., FEMA, emergency services, regulatory authorities). [OT Systems Only: WMATA System Implementation Statement]
Related Controls: CP-3, CP-4, CP-6, CP-7, CP-8, CP-9, CP-10, IR-4, IR-6, IR-8, IR-9, MA-6, MP-2, MP-4, MP-5, PL-2, PM-8, PM-11, SA-15, SC-7, SC-23, SI-12
<li>j. Security Controls Enhancement(s): [j: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The organization defines contingency plans for categories of disruptions or failures. In the case of a contingency, the OT equipment executes preprogrammed functions, such as alerting the operator of the failure and then doing nothing, alerting the operator and then safely shutting down the industrial process, or alerting the operator and then maintaining the last operational setting prior to failure. Contingency plans for widespread disruption may involve specialized organizations (e.g., FEMA, emergency services, regulatory authorities). [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Contingency Plan</b></p>a. Develop a contingency plan for the system that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Coordinate ISCP development and testing with organizational elements responsible for related plans ensuring that other contingency, continuity, disaster recovery, crisis communication, incident response, and occupant emergency plans are aligned and coordinated with CPs. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Coordinate with Related Plans</b></p>Coordinate contingency plan development with organizational elements responsible for related plans.' WHERE [Requirement_Id] = 37666
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Conduct capacity planning so that necessary capacity for information processing, telecommunications, and environmental support exists during contingency operations. [WMATA System Implementation Statement]

Related Controls: PE-11, PE-12, PE-13, PE-14, PE-18, SC-5
', [Supplemental_Info]=N'<p><b> Capacity Planning</b></p>Conduct capacity planning so that necessary capacity for information processing, telecommunications, and environmental support exists during contingency operations.' WHERE [Requirement_Id] = 37667
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Plan for the resumption of all mission and business functions within the RTO and RPO as specified as part of the business continuity planning and documented in the system’s Business Impact Analysis (BIA). [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Resume Mission and Business Functions</b></p>Plan for the resumption of [Selection: all; essential] mission and business functions within [Assignment: organization-defined time period] of contingency plan activation.' WHERE [Requirement_Id] = 37668
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Plan for the continuance of all mission and business functions with minimal or no loss of operational continuity and sustain that continuity until full system restoration at primary processing and/or storage sites as part of business continuity planning as documented in the system BIA. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Continue Mission and Business Functions</b></p>Plan for the continuance of [Selection: all; essential] mission and business functions with minimal or no loss of operational continuity and sustains that continuity until full system restoration at primary processing and/or storage sites.' WHERE [Requirement_Id] = 37669
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Identify critical system assets supporting all mission and business functions as part of criticality analysis and/or business continuity planning as documented in the system BIA. [WMATA System Implementation Statement]

Related Controls: CM-8, RA-9
', [Supplemental_Info]=N'<p><b> Identify Critical Assets</b></p>Identify critical system assets supporting [Selection: all; essential] mission and business functions.' WHERE [Requirement_Id] = 37670
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Provide contingency training to system users consistent with assigned roles and responsibilities: [a: WMATA System Implementation Statement]</li>
<li>i) Within 30 days of assuming a contingency role or responsibility; [a.i: WMATA System Implementation Statement]</li>
<li>ii) When required by system changes; and [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Annually thereafter; and [a.iii: WMATA System Implementation Statement]</li>
<li>b. Review and update contingency training content annually and following events to include, but not limited to, ISCP testing or an actual contingency (lessons learned), assessment or audit findings, security or privacy incidents, or changes in laws, directives, regulations, policies, standards, and guidelines. [b: WMATA System Implementation Statement]</li>
Related Controls: AT-2, AT-3, AT-4, CP-2, CP-4, CP-8, IR-2, IR-4, IR-9
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Contingency Training</b></p>a. Provide contingency training to system users consistent with assigned roles and responsibilities:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Incorporate simulated events into contingency training to facilitate effective response by personnel in crisis situations. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Simulated Events</b></p>Incorporate simulated events into contingency training to facilitate effective response by personnel in crisis situations.' WHERE [Requirement_Id] = 37672
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Test the ISCP for the system annually using the following tests to determine the effectiveness of the plan and the readiness to execute the plan: [a: WMATA System Implementation Statement]</li>
<li>i) Full exercise consisting of a test of all instructions within an ISCP every two years; [a.i: WMATA System Implementation Statement]</li>
<li>ii) Tabletops can be conducted in lieu of the full exercise in the off years; [a.ii: WMATA System Implementation Statement]</li>
<li>b. Review the ISCP test results; and [b: WMATA System Implementation Statement]</li>
<li>c. Initiate corrective actions, if needed. [c: WMATA System Implementation Statement]</li>
Related Controls: AT-3, CP-2, CP-3, CP-8, CP-9, IR-3, IR-4, PL-2, PM-14, SR-2
<li>d. Security Controls Enhancement(s): [d: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Contingency Plan Testing</b></p>a. Test the contingency plan for the system [Assignment: organization-defined frequency] using the following tests to determine the effectiveness of the plan and the readiness to execute the plan: [Assignment: organization-defined tests].
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Coordinate ISCP testing with organizational elements responsible for related plans. [WMATA System Implementation Statement]

Related Controls: IR-8, PM-8
', [Supplemental_Info]=N'<p><b> Coordinate with Related Plans</b></p>Coordinate contingency plan testing with organizational elements responsible for related plans.' WHERE [Requirement_Id] = 37674
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Test the ISCP at the alternate processing site: [WMATA System Implementation Statement]

<li>(1) To familiarize contingency personnel with the facility and available resources; and [1: WMATA System Implementation Statement]</li>
<li>(2) To evaluate the capabilities of the alternate processing site to support contingency operations. [2: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Not all systems will have alternate processing sites as discussed in CP-7. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: CP-7

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Not all systems will have alternate processing sites, as discussed in CP-7. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Contingency Plan Testing | Alternate Processing Site</b></p>Test the contingency plan at the alternate processing site:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Establish an alternate storage site, maximizing geographical separation within the region, from the primary site. including necessary agreements to permit the storage and retrieval of system backup information; and [a: WMATA System Implementation Statement]</li>
<li>b. Ensure that the alternate storage site provides controls equivalent to that of the primary site. [b: WMATA System Implementation Statement]</li>
<li>c. Monthly, create (and transmit to the alternate storage site) full backups and maintain those backups for at least six months, and do not overwrite, purge, or delete the backups within the six-month period. The backups must be maintained and logically isolated from each other, from differential backups, and from primary and alternate data centers. [c: WMATA System Implementation Statement]</li>
<li>c.1). Daily, create (and transmit to the alternate storage site) a differential backup and maintain those backups for 30 days. [c.1: WMATA System Implementation Statement]</li>
<li>d. All backups shall be encrypted using cryptographic modules validated under the Cryptographic Modula Validation Program (CMVP), configured in "FIPS Mode," and using tion algorithms approved by the AO. [d: WMATA System Implementation Statement]</li>
Related Controls: CP-2, CP-7, CP-8, CP-9, CP-10, MP-4, MP-5, PE-3, SI-13
<li>e. Security Controls Enhancement(s): [e: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Alternate Storage Site</b></p>a. Establish an alternate storage site, including necessary agreements to permit the storage and retrieval of system backup information; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Identify an alternate storage site that is sufficiently separated from the primary storage site to reduce susceptibility to the same threats. [WMATA System Implementation Statement]

Related Controls: RA-3
', [Supplemental_Info]=N'<p><b> Separation from Primary Site</b></p>Identify an alternate storage site that is sufficiently separated from the primary storage site to reduce susceptibility to the same threats.' WHERE [Requirement_Id] = 37677
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Configure the alternate storage site to facilitate recovery operations in accordance with recovery time and recovery point objectives. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Recovery Time and Recovery Point Objectives</b></p>Configure the alternate storage site to facilitate recovery operations in accordance with recovery time and recovery point objectives.' WHERE [Requirement_Id] = 37678
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Identify potential accessibility problems to the alternate storage site in the event of an area-wide disruption or disaster and outline explicit mitigation actions. [WMATA System Implementation Statement]

Related Controls: RA-3
', [Supplemental_Info]=N'<p><b> Accessibility</b></p>Identify potential accessibility problems to the alternate storage site in the event of an area-wide disruption or disaster and outline explicit mitigation actions.' WHERE [Requirement_Id] = 37679
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Establish an alternate processing site, including necessary agreements to permit the transfer and resumption of system operations for essential mission and business functions within the time period specified in the CP consistent with recovery time and recovery point objectives specified in the BIA when the primary processing capabilities are unavailable. Minimally, recovery time shall meet the following standards; [a: WMATA System Implementation Statement]</li>
<li>i) High: Instantaneous to one minute; [a.i: WMATA System Implementation Statement]</li>
<li>ii) Moderate: Not to exceed 24 hours; [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Low: Not to exceed two weeks (applications with no redundant capability at one of the primary data centers) [a.iii: WMATA System Implementation Statement]</li>
<li>b. Make available at the alternate processing site, the equipment, and supplies (including hardware) required to transfer and resume operations or put contracts in place to support delivery to the site within the organization-defined time period for transfer and resumption; and [b: WMATA System Implementation Statement]</li>
<li>c. Provide controls at the alternate processing site that are equivalent to those at the primary site.  [c: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Many site-wide supervisory or optimization servers (i.e., Level 3 and above of the Purdue model ) can be supported from an alternative processing site. It is likely not feasible for control systems or field devices, such as sensors or final elements (i.e., Level 1 and 0 of the Purdue model), to be made available from an alternative processing site. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: CP-2, CP-6, CP-8, CP-9, CP-10, MA-6, PE-3, PE-11, PE-12, PE-17, SI-13
<li>d. Security Controls Enhancement(s): [d: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Many site-wide supervisory or optimization servers (i.e., Level 3 and above of the Purdue model) can be supported from an alternate processing site. It is likely not feasible for control systems or field devices, such as sensors or final elements (i.e., Level 1 and 0 of the 
Purdue model), to be made available from an alternate processing site. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Alternate Processing Site</b></p>a. Establish an alternate processing site, including necessary agreements to permit the transfer and resumption of [Assignment: organization-defined system operations] for essential mission and business functions within [Assignment: organization-defined time period consistent with recovery time and recovery point objectives] when the primary processing capabilities are unavailable;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Identify an alternate processing site that is sufficiently separated from the primary processing site to reduce susceptibility to the same threats. [WMATA System Implementation Statement]

Related Controls: RA-3
', [Supplemental_Info]=N'<p><b> Separation from Primary Site</b></p>Identify an alternate processing site that is sufficiently separated from the primary processing site to reduce susceptibility to the same threats.' WHERE [Requirement_Id] = 37681
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Identify potential accessibility problems to alternate processing sites in the event of an area-wide disruption or disaster and outlines explicit mitigation actions. [WMATA System Implementation Statement]

Related Controls: RA-3
', [Supplemental_Info]=N'<p><b> Accessibility</b></p>Identify potential accessibility problems to alternate processing sites in the event of an area-wide disruption or disaster and outlines explicit mitigation actions.' WHERE [Requirement_Id] = 37682
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Develop alternate processing site agreements that contain priority-of-service provisions in accordance with availability requirements (including recovery time objectives). [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Priority of Service</b></p>Develop alternate processing site agreements that contain priority-of-service provisions in accordance with availability requirements (including recovery time objectives).' WHERE [Requirement_Id] = 37683
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Prepare the alternate processing site so that the site can serve as the operational site supporting essential mission and business functions. [WMATA System Implementation Statement]

Related Controls: CM-2, CM-6, CP-4
', [Supplemental_Info]=N'<p><b> Preparation for Use</b></p>Prepare the alternate processing site so that the site can serve as the operational site supporting essential mission and business functions.' WHERE [Requirement_Id] = 37684
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Establish alternate telecommunications services, including necessary agreements to permit the resumption of system operations for essential mission and business functions within the time period specified in the CP consistent with the BIA when the primary telecommunications capabilities are unavailable at either the primary or alternate processing or storage sites. [a: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Quality of service factors for OT include latency and throughput. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: CP-2, CP-6, CP-7, SC-7
<li>b. Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Quality of service factors for OT include latency and throughput. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Telecommunications Services</b></p>Establish alternate telecommunications services, including necessary agreements to permit the resumption of [Assignment: organization-defined system operations] for essential mission and business functions within [Assignment: organization-defined time period] when the primary telecommunications capabilities are unavailable at either the primary or alternate processing or storage sites.' WHERE [Requirement_Id] = 37685
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Develop primary and alternate telecommunications service agreements that contain priority-of-service provisions in accordance with availability requirements (including recovery time objectives); and [1: WMATA System Implementation Statement]</li>
<li>(2) Request Telecommunications Service Priority for all telecommunications services used for national security emergency preparedness if the primary and/or alternate telecommunications services are provided by a common carrier. [2: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Testing for reliability and integrity increases confidence that the system can be restored after an incident and minimizes the impact associated with downtime and outages. The ability to test backups is often dependent on the resources needed to appropriately represent the environment, such as the availability of spare devices and testing equipment. Testing backup and restoration on OT is often limited to systems with redundancy or spare equipment. In certain cases, sampling will be limited to those redundant systems. Compensating controls may include alternative methods for testing backups, such as hash or checksum validations. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Telecommunications Services | Priority of Service Provisions</b></p>(a) Develop primary and alternate telecommunications service agreements that contain priority-of-service provisions in accordance with availability requirements (including recovery time objectives); and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Obtain alternate telecommunications services to reduce the likelihood of sharing a single point of failure with primary telecommunications services. [WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Testing for reliability and integrity increases confidence that the system can be restored after an incident and minimizes the impact associated with downtime and outages. The ability to test backups is often dependent on the resources needed to appropriately represent the environment, such as the availability of spare devices and testing equipment. Testing backup and restoration on OT is often limited to systems with redundancy or spare equipment. In certain cases, sampling will be limited to those redundant systems. Compensating controls may include alternative methods for testing backups, such as hash or checksum validations. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Telecommunications Services | Single Points of Failure</b></p>Obtain alternate telecommunications services to reduce the likelihood of sharing a single point of failure with primary telecommunications services.' WHERE [Requirement_Id] = 37687
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Obtain alternate telecommunications services from providers that are separated from primary service providers to reduce susceptibility to the same threats. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Separation of Primary and Alternate Providers</b></p>Obtain alternate telecommunications services from providers that are separated from primary service providers to reduce susceptibility to the same threats.' WHERE [Requirement_Id] = 37688
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Require primary and alternate telecommunications service providers to have ISCPs; [1: WMATA System Implementation Statement]</li>
<li>(2) Review provider ISCPS to ensure that the plans meet organizational contingency requirements; and [2: WMATA System Implementation Statement]</li>
<li>(3) Obtain evidence of contingency testing and training by providers annually. [3: WMATA System Implementation Statement]</li>

Related Controls: CP-3, CP-4
', [Supplemental_Info]=N'<p><b> Provider Contingency Plan</b></p>(a) Require primary and alternate telecommunications service providers to have contingency plans;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Conduct backups of user-level information contained in systems and system components based on the RPO, and leveraging a differential backup approach; [a: WMATA System Implementation Statement]</li>
<li>b. Conduct backups of system-level information contained in systems and system components based on the RPO, and leveraging a differential backup approach; [b: WMATA System Implementation Statement]</li>
<li>c. Conduct full backups of user-level information, system-level information, and system documentation, including security- and privacy-related documentation, at least weekly; and [c: WMATA System Implementation Statement]</li>
<li>d. Protect the confidentiality, integrity, and availability of backup information. [d: WMATA System Implementation Statement]</li>
Related Controls: CP-2, CP-6, CP-10, MP-4, MP-5, SC-8, SC-12, SC-13, SI-4, SI-13
<li>e. Security Controls Enhancement(s): [e: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>System Backup</b></p>a. Conduct backups of user-level information contained in [Assignment: organization-defined system components] [Assignment: organization-defined frequency consistent with recovery time and recovery point objectives];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Test backup information at least monthly to verify media reliability and information integrity. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Testing for reliability and integrity increases confidence that the system can be restored after an incident, and minimizes the impact associated with downtime and outages. The ability to test backups is often dependent on resources, such as the availability of spare devices and testing equipment, needed to appropriately represent the environment. Testing backup and restoration on OT is often limited to systems with redundancy or spare equipment; in certain cases, sampling will be limited to those redundant systems. Compensating controls may include alternative methods for testing backups such as hash or checksum validations. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: CP-4
', [Supplemental_Info]=N'<p><b> Testing for Reliability and Integrity</b></p>Test backup information [Assignment: organization-defined frequency] to verify media reliability and information integrity.' WHERE [Requirement_Id] = 37691
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Use a sample of backup information in the restoration of selected system functions as part of ISCP testing, and at least monthly. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Testing for reliability and integrity increases confidence that the system can be restored after an incident, and minimizes the impact associated with downtime and outages. The ability to test backups is often dependent on resources, such as the availability of spare devices and testing equipment, needed to appropriately represent the environment. Testing backup and restoration on OT is often limited to systems with redundancy or spare equipment; in certain cases, sampling will be limited to those redundant systems. Compensating controls may include alternative methods for testing backups such as hash or checksum validations. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: CP-4
', [Supplemental_Info]=N'<p><b> Test Restoration Using Sampling</b></p>Use a sample of backup information in the restoration of selected system functions as part of contingency plan testing.' WHERE [Requirement_Id] = 37692
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Store backup copies of critical system software and other security-related information in a separate facility or in a fire rated container that is not collocated with the operational system. [WMATA System Implementation Statement]

Related Controls: CM-2, CM-6, CM-8
', [Supplemental_Info]=N'<p><b> Separate Storage for Critical Information</b></p>Store backup copies of [Assignment: organization-defined critical system software and other security-related information] in a separate facility or in a fire rated container that is not collocated with the operational system.' WHERE [Requirement_Id] = 37693
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Transfer system backup information to the alternate storage site based on standards established in CP-6, “Alternate Storage Site”. System backup information can be transferred to alternate storage sites either electronically or by the physical shipment of storage media. [WMATA System Implementation Statement]

Related Controls: CP-6, CP-7, MP-3, MP-4, MP-5
', [Supplemental_Info]=N'<p><b> Transfer to Alternate Storage Site</b></p>Transfer system backup information to the alternate storage site [Assignment: organization-defined time period and transfer rate consistent with the recovery time and recovery point objectives].' WHERE [Requirement_Id] = 37694
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement cryptographic mechanisms to prevent unauthorized disclosure and modification of system backup information in storage at both primary and alternate locations. [WMATA System Implementation Statement]

Related Controls: SC-12, SC-13, SC-28
', [Supplemental_Info]=N'<p><b> Cryptographic Protection</b></p>Implement cryptographic mechanisms to prevent unauthorized disclosure and modification of [Assignment: organization-defined backup information].' WHERE [Requirement_Id] = 37695
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Reference P/I 15.28 Cybersecurity Policy for requirements. [WMATA System Implementation Statement]

Related Controls: AC-1, PM-9, PS-8, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The policy specifically addresses the unique properties and requirements of OT and the relationship to non-OT systems. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Identification and Authentication Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Require users to re-authenticate when roles, authenticators, or credentials change as a result of a security incident, when security categories of systems change, and after 15 minutes of a fixed time period (e.g., if a session has been idle). [WMATA System Implementation Statement]

Related Controls: AC-3, AC-11, IA-2, IA-3, IA-4, IA-8
', [Supplemental_Info]=N'<p><b>Re-authentication</b></p>Require users to re-authenticate when [Assignment: organization-defined circumstances or situations requiring re-authentication].' WHERE [Requirement_Id] = 37697
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Identity-proof users that require accounts for logical access to systems based on appropriate identity assurance level requirements as specified in applicable standards and guidelines; [a: WMATA System Implementation Statement]</li>
<li>b. Resolve user identities to a unique individual; and [b: WMATA System Implementation Statement]</li>
<li>c. Collect, validate, and verify identity evidence. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Identity proofing is likely performed by different departments within the organization. It is encouraged to leverage existing organization systems (i.e., HR or IT processes) to perform this control. Security Controls Enhancement(s): [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AC-5, IA-1, IA-2, IA-3, IA-4, IA-5, IA-6, IA-8
<li>d. Security Controls Enhancement(s): [d: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Identity proofing is likely performed by different departments within the organization. Existing organizational systems (e.g., HR or IT processes) should be leveraged to perform this control. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Identity Proofing</b></p>a. Identity proof users that require accounts for logical access to systems based on appropriate identity assurance level requirements as specified in applicable standards and guidelines;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Require that the registration process to receive an account for logical access includes supervisor or sponsor authorization. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Maintenance, Engineering, or third-party organizations may require OT access in order to support operations. The organization should determine the AO for proving identity prior to allowing access to the OT environment. Consider obtaining supervisor or sponsor authorization, where the sponsor may be someone within operations.  [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
Control Enhancement: (1) OT Discussion: Maintenance, engineering, or third-party organizations may require OT access in order to support operations. The organization should determine the AO for proving identity prior to allowing access to the OT environment. Consider obtaining supervisor or sponsor authorization, where the sponsor may be someone within operations. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Identity Proofing | Supervisor Authorization</b></p>Require that the registration process to receive an account for logical access includes supervisor or sponsor authorization.' WHERE [Requirement_Id] = 37699
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Require evidence of individual identification be presented to the RA. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> If the organization already performs these controls, it is recommended to leverage existing organizational processes. For example, Human Resources may provide a system for tracking identity evidence. OT does not need to develop an independent system for achieving this control. Rather, it is advised to leverage the existing processes developed by other departments within the organization. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: If the organization already performs these controls, existing organizational processes should be leveraged. For example, HR may provide a system for tracking identity evidence. OT does not need to develop an independent system for achieving this control. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Identity Proofing | Identity Evidence</b></p>Require evidence of individual identification be presented to the registration authority.' WHERE [Requirement_Id] = 37700
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Require that the presented identity evidence be validated and verified in accordance with acceptable identity source documents defined in Homeland Security Presidential Directive (HSPD) 12. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> If the organization already performs these controls, it is recommended to leverage existing organizational processes. For example, Human Resources may provide a system for tracking identity evidence. OT does not need to develop an independent system for achieving this control. Rather, it is advised to leverage the existing processes developed by other departments within the organization. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: If the organization already performs these controls, existing organizational processes should be leveraged. For example, HR may provide a system for tracking identity evidence. OT does not need to develop an independent system for achieving this control. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Identity Proofing | Identity Evidence Validation and Verification</b></p>Require that the presented identity evidence be validated and verified through [Assignment: organizational defined methods of validation and verification].' WHERE [Requirement_Id] = 37701
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Require that the validation and verification of identity evidence be conducted in person before a designated RA. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> If the organization already performs these controls, it is recommended to leverage existing organizational processes. For example, Human Resources may provide a system for tracking identity evidence. OT does not need to develop an independent system for achieving this control. Rather, it is advised to leverage the existing processes developed by other departments within the organization. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: If the organization already performs these controls, existing organizational processes should be leveraged. For example, HR may provide a system for tracking identity evidence. OT does not need to develop an independent system for achieving this control. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Identity Proofing | In-person Validation and Verification</b></p>Require that the validation and verification of identity evidence be conducted in person before a designated registration authority.' WHERE [Requirement_Id] = 37702
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Require that a [Selection: registration code; notice of proofing] be delivered through an out-of-band channel to verify the users address (physical or digital) of record. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> If the organization already performs these controls, it is recommended to leverage existing organizational processes. For example, Human Resources may provide a system for tracking identity evidence. OT does not need to develop an independent system for achieving this control. Rather, it is advised to leverage the existing processes developed by other departments within the organization. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: IA-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: If the organization already performs these controls, existing organizational processes should be leveraged. For example, HR may provide a system for tracking identity evidence. OT does not need to develop an independent system for achieving this control. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Identity Proofing | Address Confirmation</b></p>Require that a [Selection: registration code; notice of proofing] be delivered through an out-of-band channel to verify the users address (physical or digital) of record.' WHERE [Requirement_Id] = 37703
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Uniquely identify and authenticate users and associate that unique identification with processes acting on behalf of those users leveraging an authorized Identity and Access Management (IAM) solution. [a: WMATA System Implementation Statement]</li>
Related Controls: AC-2, AC-3, AC-4, AC-14, AC-17, AC-18, AU-1, AU-6, IA-4, IA-5, IA-8, MA-4, MA-5, PE-2, PL-4, SA-4, SA-8
<li>b. Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: When shared accounts are required, compensating controls include providing increased physical security, personnel security, and auditing measures. For certain OT, the capability for immediate operator interaction is critical. Local emergency actions for OT are not hampered by identification or authentication requirements. Access to these systems may be restricted by appropriate physical controls. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Identification and Authentication  (Organizational Users)</b></p>Uniquely identify and authenticate organizational users and associate that unique identification with processes acting on behalf of those users.' WHERE [Requirement_Id] = 37704
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement multi-factor authentication for access to privileged accounts. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> As a compensating control, physical access restrictions may sufficiently represent one authentication factor, provided the system is not remotely accessible. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-5, AC-6

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: As a compensating control, physical access restrictions may sufficiently represent one authentication factor, provided that the system is not remotely accessible. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Identification and Authentication (organizational Users) | Multi-factor Authentication to Privileged Accounts</b></p>Implement multi-factor authentication for access to privileged accounts.' WHERE [Requirement_Id] = 37705
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Accept and electronically verify Personal Identity Verification-compliant credentials. [WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The acceptance of PIV credentials is only required for federal organizations, as defined by OMB Memorandum M-19-17 [OMB-M1917]. Nonfederal organizations should refer to IA-2 (1) (2) for guidance on multi-factor authentication credentials. Furthermore, many OT systems do not have the ability to accept PIV credentials and will require compensating controls. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Identification and Authentication (organizational Users) | Acceptance of PIV Credentials</b></p>Accept and electronically verify Personal Identity Verification-compliant credentials.' WHERE [Requirement_Id] = 37706
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement multi-factor authentication for access to non-privileged accounts. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> As a compensating control, physical access restrictions may sufficiently represent one authentication factor, provided the system is not remotely accessible. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-5

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: As a compensating control, physical access restrictions may sufficiently represent one authentication factor, provided that the system is not remotely accessible. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Identification and Authentication (organizational Users) | Multi-factor Authentication to Non-privileged Accounts</b></p>Implement multi-factor authentication for access to non-privileged accounts.' WHERE [Requirement_Id] = 37707
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Identifiers and authenticators shall not be shared within the WMATA Enterprise unless authorized by the AO/AODR. When shared identifiers or authenticators are in use, users shall be individually authenticated before access is granted to a shared account or resource. [WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: For local access, physical access controls and logging may be used as an alternative to individual authentication on an OT system. For remote access, the remote access authentication mechanism will be used to identify, permit, and log individual access before permitting the use of shared accounts. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Identification and Authentication (organizational Users) | Individual Authentication with Group Authentication</b></p>When shared accounts or authenticators are employed, require users to be individually authenticated before granting access to the shared accounts or resources.' WHERE [Requirement_Id] = 37708
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement replay-resistant authentication mechanisms for access to privileged and non-privileged accounts. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Access to Accounts — Replay Resistant</b></p>Implement replay-resistant authentication mechanisms for access to [Selection (one or more): privileged accounts; non-privileged accounts].' WHERE [Requirement_Id] = 37709
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Uniquely identify and authenticate all devices and systems that connect to or access WMATA networks and/or systems before establishing a local, remote, or network connection. All certificates employed on WMATA systems and/or devices shall be from a trusted source identified by DMCS and authorized by the AO. [WMATA System Implementation Statement]

Related Controls: AC-17, AC-18, AC-19, AU-6, CA-3, CA-9, IA-4, IA-5, IA-11, IR-9, SI-4

<li>a. Security Controls Enhancement(s): [a: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: OT devices may not inherently support device authentication. If devices are local to one another, physical security measures that prevent unauthorized communication between devices can be used as compensating controls. For remote communication, additional hardware may be required to meet authentication requirements. [NIST 800-82 Rev 3_OT Discussion: WMATA System Implementation Statement]

Rationale for adding IA-3 to LOW baseline: Given the variety of OT devices and physical locations of OT devices, organizations may consider whether OT devices that may be vulnerable to tampering or spoofing require unique identification and authentication and for what types of 
connections.  [NIST 800-82 Rev 3_Rationale: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Device Identification and Authentication</b></p>Uniquely identify and authenticate [Assignment: organization-defined devices and/or types of devices] before establishing a [Selection (one or more): local; remote; network] connection.' WHERE [Requirement_Id] = 37710
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Authenticate [Assignment: organization-defined devices and/or types of devices] before establishing [Selection (one or more): local; remote; network] connection using bidirectional authentication that is cryptographically based. [WMATA System Implementation Statement]

Related Controls: SC-8, SC-12, SC-13

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: For OT systems that include IIoT devices, these enhancements may be needed to protect device-to-device communication. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Device Identification and Authentication | Cryptographic Bidirectional Authentication</b></p>Authenticate [Assignment: organization-defined devices and/or types of devices] before establishing [Selection (one or more): local; remote; network] connection using bidirectional authentication that is cryptographically based.' WHERE [Requirement_Id] = 37711
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Handle device identification and authentication based on attestation by [Assignment: organization-defined configuration management process]. [WMATA System Implementation Statement]

Related Controls: CM-2, CM-3, CM-6

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: For OT systems that include IIoT devices, these enhancements may be needed to protect device-to-device communication. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Device Identification and Authentication | Device Attestation</b></p>Handle device identification and authentication based on attestation by [Assignment: organization-defined configuration management process].' WHERE [Requirement_Id] = 37712
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Manage system identifiers by: [WMATA System Implementation Statement]

<li>a. Receiving authorization from System Owners to assign an individual, group, role, service, or device identifier; [a: WMATA System Implementation Statement]</li>
<li>b. Selecting an identifier that identifies an individual, group, role, service, or device; [b: WMATA System Implementation Statement]</li>
<li>c. Assigning the identifier to the intended individual, group, role, service, or device; [c: WMATA System Implementation Statement]</li>
<li>d. Not assigning the same identifier to a single individual for more than one role; [d: WMATA System Implementation Statement]</li>
<li>e. Only allowing the use of identifiers by a single individual; and [e: WMATA System Implementation Statement]</li>
<li>f. Preventing reuse of identifiers, except for users that are rehired. [f: WMATA System Implementation Statement]</li>
Related Controls: AC-5, IA-2, IA-3, IA-5, IA-8, IA-12, MA-4, PE-2, PE-3, PE-4, PL-4, PM-12, PS-3, PS-4, PS-5
<li>g. Security Controls Enhancement(s): [g: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Identifier Management</b></p>a. Receiving authorization from [Assignment: organization-defined personnel or roles] to assign an individual, group, role, service, or device identifier;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Manage individual identifiers by uniquely identifying each individual by their affiliation with WMATA, minimally differentiating between employees and non-employees (e.g., contractors, foreign nationals, non-organizational users, etc.). Ensure that badges have different visual markings to indicate the status of individuals. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Non-organizational, including foreign national, support for OT systems shall only be authorized by the CISO. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: This control enhancement is typically implemented by the organization rather than at the system level. However, to manage risk for certain OT environments, identifiers (e.g., badges) may have different markings to indicate the status of individuals, such as contractors, foreign nationals, and non-organizational users. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Identifier Management | Identify User Status</b></p>Manage individual identifiers by uniquely identifying each individual as [Assignment: organization-defined characteristic identifying individual status].' WHERE [Requirement_Id] = 37714
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Manage system authenticators by: [WMATA System Implementation Statement]

<li>a. Verifying, as part of the initial authenticator distribution, the identity of the individual, group, role, application, service, or device receiving the authenticator; [a: WMATA System Implementation Statement]</li>
<li>b. Establishing initial authenticator content for any authenticators issued by the organization; [b: WMATA System Implementation Statement]</li>
<li>c. Ensuring that authenticators have sufficient strength of mechanism for their intended use; [c: WMATA System Implementation Statement]</li>
<li>d. Establishing and implementing administrative procedures for initial authenticator distribution, for lost or compromised or damaged authenticators, and for revoking authenticators; [d: WMATA System Implementation Statement]</li>
<li>e. Changing default authenticators immediately upon first use; [e: WMATA System Implementation Statement]</li>
<li>f. No limits will be set on frequency of authenticator changing or refreshing of passwords; [f: WMATA System Implementation Statement]</li>
<li>g. Users shall be permitted to change passwords using self-service capabilities; [g: WMATA System Implementation Statement]</li>
<li>h. Changing or refreshing authenticators as follows: [h: WMATA System Implementation Statement]</li>
<li>i) User Authenticators: [h.i: WMATA System Implementation Statement]</li>
<li>(1) Passwords (includes service accounts): 90 days; [h.i.1: WMATA System Implementation Statement]</li>
<li>(2) Certificates: three years; and [h.i.2: WMATA System Implementation Statement]</li>
<li>(3) One-time password (OTP) devices: at least every 30 seconds. [h.i.3: WMATA System Implementation Statement]</li>
<li>ii) Device, Service and Application Authenticators: [h.ii: WMATA System Implementation Statement]</li>
<li>(1) Certificates: one year; and [h.ii.1: WMATA System Implementation Statement]</li>
<li>(2) Passwords: 90 days. [h.ii.2: WMATA System Implementation Statement]</li>
<li>i. Configuring to expire. Users and owners of group authenticators (e.g., service accounts) shall automatically receive notification 30 days prior to expiration; [i: WMATA System Implementation Statement]</li>
<li>j. Changing authenticators when there is a security incident or compromise of the authenticator, or at the direction of DMCS; [j: WMATA System Implementation Statement]</li>
<li>k. Protecting authenticator content from unauthorized disclosure and modification as defined in WMATA policy; [k: WMATA System Implementation Statement]</li>
<li>l. Requiring individuals to use, and having devices implement, specific controls to protect authenticators; and [l: WMATA System Implementation Statement]</li>
<li>m. Changing authenticators for group or role accounts when membership to those accounts changes. [m: WMATA System Implementation Statement]</li>
<li>n. Maintaining a repository of certificates, associated expiration dates, and system administrators; and [n: WMATA System Implementation Statement]</li>
<li>o. Notifying system administrators 30 days prior to expiration of certificates. [o: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Compensating controls for OT systems can include physical access controls and encapsulation of the OT to provide authentication external to the OT. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AC-3, AC-6, CM-6, IA-2, IA-4, IA-7, IA-8, MA-4, PE-2, PL-4, SC-12, SC-13
<li>p. Security Controls Enhancement(s): [p: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Example compensating controls include physical access control and encapsulating the OT to provide authentication external to the OT. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Authenticator Management</b></p>a. Verifying, as part of the initial authenticator distribution, the identity of the individual, group, role, service, or device receiving the authenticator;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'For password-based authentication: [WMATA System Implementation Statement]

<li>(1) Maintain a Prohibited Password List (PPL) based on commonly-used, expected, or compromised passwords and update the list monthly; [1: WMATA System Implementation Statement]</li>
<li>(2) When a password identified on the PPL is in use at WMATA or the password is identified as compromised, change immediately, but no later than: [2: WMATA System Implementation Statement]</li>
<li>(a) 30 minutes for High categorized systems, high-risk individuals and privileged accounts; [2.a: WMATA System Implementation Statement]</li>
<li>(b) 60 minutes for systems categorized as Moderate; and [2.b: WMATA System Implementation Statement]</li>
<li>(c) 24 hours for all other information systems and/or accounts. All passwords shall be changed immediately. [2.c: WMATA System Implementation Statement]</li>
<li>(3) Verify, when users create or update passwords, that the passwords are not found on the PPL; [3: WMATA System Implementation Statement]</li>
<li>(4) Transmit passwords only over cryptographically-protected channels; [4: WMATA System Implementation Statement]</li>
<li>(5) Store passwords using an DMCS-approved salted key derivation function, [5: WMATA System Implementation Statement] preferably using a keyed hash;</li>
<li>(6) Require immediate selection of a new password upon account recovery; [6: WMATA System Implementation Statement]</li>
<li>(7) If systems are enabled for use of passphrases they shall be allowed with the following requirements: [7: WMATA System Implementation Statement]</li>
<li>(a) Minimum password length is 16 characters; [7.a: WMATA System Implementation Statement]</li>
<li>(b) Maximum password age must be 90 days or less; [7.b: WMATA System Implementation Statement]</li>
<li>(c) Password history (reuse) must be configured for 24 passwords remembered; and [7.c: WMATA System Implementation Statement]</li>
<li>(d) Maximum number of three allowed unsuccessful logon attempts. [7.d: WMATA System Implementation Statement]</li>
<li>(8) Employ automated tools to assist the user in selecting strong password authenticators; and [8: WMATA System Implementation Statement]</li>
<li>(9) Enforce composition and complexity rules based on the following: [9: WMATA System Implementation Statement]</li>
<li>(a) Cannot contain significant portions of the user’s account name or full name; [9.a: WMATA System Implementation Statement]</li>
<li>(b) Minimum password length is 16 characters; [9.b: WMATA System Implementation Statement]</li>
<li>(c) Must contain characters from all of the following four categories: [9.c: WMATA System Implementation Statement]</li>
<li>(i) English uppercase character (A through Z); [9.c.i: WMATA System Implementation Statement]</li>
<li>(ii) English lowercase character (a through z); [9.c.ii: WMATA System Implementation Statement]</li>
<li>(iii) Base 10 digit (0 through 9); and [9.c.iii: WMATA System Implementation Statement]</li>
<li>(iv) Nonalphabetic character (for example, !, $, #, %). [9.c.iv: WMATA System Implementation Statement]</li>
<li>(d) Maximum number of repeating characters of the same character class is limited to four; [9.d: WMATA System Implementation Statement]</li>
<li>(e) Maximum password age must be 90 days or less; [9.e: WMATA System Implementation Statement]</li>
<li>(f) Password history (reuse) must be configured for 24 passwords remembered; and [9.f: WMATA System Implementation Statement]</li>
<li>(g) Maximum number of three allowed unsuccessful login attempts. [9.g: WMATA System Implementation Statement]</li>

Related Controls: IA-6
', [Supplemental_Info]=N'<p><b> Password-based Authentication</b></p>For password-based authentication:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) For public key-based authentication: [1: WMATA System Implementation Statement]</li>
<li>(a) Enforce authorized access to the corresponding private key; and [1.a: WMATA System Implementation Statement]</li>
<li>(b) Map the authenticated identity to the account of the individual or group; and [1.b: WMATA System Implementation Statement]</li>
<li>(2) When a public key is used: [2: WMATA System Implementation Statement]</li>
<li>(a) Validate certificates by constructing and verifying a certification path to an accepted trust anchor, including checking certificate status information; and [2.a: WMATA System Implementation Statement]</li>
<li>(b) Implement a local cache of revocation data to support path discovery and validation. [2.b: WMATA System Implementation Statement]</li>

Related Controls: IA-3, SC-17
', [Supplemental_Info]=N'<p><b> Public Key-based Authentication</b></p>(a) For public key-based authentication:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Protect authenticators commensurate with the security category of the information to which use of the authenticator permits. [WMATA System Implementation Statement]

Related Controls: RA-2
', [Supplemental_Info]=N'<p><b> Protection of Authenticators</b></p>Protect authenticators commensurate with the security category of the information to which use of the authenticator permits access.' WHERE [Requirement_Id] = 37718
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Obscure feedback of authentication information during the authentication process to protect the information from possible exploitation and use by unauthorized individuals. [WMATA System Implementation Statement]

Related Controls: AC-3

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: This control assumes a visual interface that provides feedback about authentication information during the authentication process. When OT authentication uses an interface that does not support visual feedback (e.g., protocol-based authentication), this control may be tailored out. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Authentication Feedback</b></p>Obscure feedback of authentication information during the authentication process to protect the information from possible exploitation and use by unauthorized individuals.' WHERE [Requirement_Id] = 37719
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement mechanisms for authentication to a cryptographic module that meet the requirements of applicable laws, directives, policies, regulations, standards, and guidelines for such authentication. [WMATA System Implementation Statement]

Related Controls: AC-3, IA-5, SA-4, SC-12, SC-13
', [Supplemental_Info]=N'<p><b>Cryptographic Module Authentication</b></p>Implement mechanisms for authentication to a cryptographic module that meet the requirements of applicable laws, executive orders, directives, policies, regulations, standards, and guidelines for such authentication.' WHERE [Requirement_Id] = 37720
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Access to WMATA systems shall be limited to users with credentials issued by WMATA. [WMATA System Implementation Statement]

Related Controls: AC-2, AC-6, AC-14, AC-17, AC-18, AU-6, IA-2, IA-4, IA-5, IA-11, MA-4, RA-3, SA-4, SC-8

<li>a. Security Controls Enhancement(s): [a: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The OT Discussion for IA-2, Identification and Authentication (Organizational Users) is applicable for non-organizational users. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Identification and Authentication  (non-organizational Users)</b></p>Uniquely identify and authenticate non-organizational users or processes acting on behalf of non-organizational users.' WHERE [Requirement_Id] = 37721
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Accept and electronically verify Personal Identity Verification-compliant credentials from other federal agencies. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Acceptance of PIV credentials is only required for organizations that follow OMB Memorandum M-19-17 [OMB-M1917] (e.g., federal agencies and contractors). [OT Systems Only: WMATA System Implementation Statement]

Related Controls: PE-3

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Acceptance of PIV credentials is only required for organizations that follow OMB Memorandum M-19-17 [OMB-M1917] (e.g., federal agencies and contractors). [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Identification and Authentication (non-organizational Users) | Acceptance of PIV Credentials from Other Agencies</b></p>Accept and electronically verify Personal Identity Verification-compliant credentials from other federal agencies.' WHERE [Requirement_Id] = 37722
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Accept only external authenticators that are NIST-compliant; and [1: WMATA System Implementation Statement]</li>
<li>(2) Document and maintain a list of accepted external authenticators.  [2: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Example compensating controls include implementing support external to the OT and multi-factor authentication. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Example compensating controls include implementing support external to the OT and multi-factor authentication. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Identification and Authentication (non-organizational Users) | Acceptance of External Authenticators</b></p>(a) Accept only external authenticators that are NIST-compliant; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Conform to the following profiles for identity management [Assignment: organization-defined identity management profiles]. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Example compensating controls include implementing support external to the OT and multi-factor authentication. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Example compensating controls include implementing support external to the OT and multi-factor authentication. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Identification and Authentication (non-organizational Users) | Use of Defined Profiles</b></p>Conform to the following profiles for identity management [Assignment: organization-defined identity management profiles].' WHERE [Requirement_Id] = 37724
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Reference P/I 15.28 Cybersecurity Policy for requirements. [WMATA System Implementation Statement]

Related Controls: PM-9, PS-8, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The policy specifically addresses the unique properties and requirements of OT and the relationship to non-OT systems. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Cybersecurity Incident Response Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Incident response training shall be provided to designated system users consistent with their assigned roles and responsibilities: [a: WMATA System Implementation Statement]</li>
<li>i) Within 30 days of assuming an incident response role or responsibility or acquiring system access; [a.i: WMATA System Implementation Statement]</li>
<li>ii) When required by system changes; and [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Annually thereafter. [a.iii: WMATA System Implementation Statement]</li>
<li>b. Review and update incident response training content annually and following substantial changes in WMATA incident response controls or Standard Operating Procedures (SOPs). [b: WMATA System Implementation Statement]</li>
Related Controls: AT-2, AT-3, AT-4, CP-3, IR-3, IR-4, IR-8, IR-9
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Incident Response Training</b></p>a. Provide incident response training to system users consistent with assigned roles and responsibilities:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Incorporate simulated events into incident response training to facilitate the required response by personnel in crisis situations. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Simulated Events</b></p>Incorporate simulated events into incident response training to facilitate the required response by personnel in crisis situations.' WHERE [Requirement_Id] = 37727
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Provide an incident response training environment using automated mechanisms which facilitate more thorough and realistic incident response training, more coverage of incident response issues, more realistic training scenarios and environments, and which stress the response capability. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Automated Training Environments</b></p>Provide an incident response training environment using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37728
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Provide incident response training on how to identify and respond to a breach, including the organization’s process for reporting a breach. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Breach</b></p>Provide incident response training on how to identify and respond to a breach, including the organization’s process for reporting a breach.' WHERE [Requirement_Id] = 37729
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Test the effectiveness of the incident response capability on a monthly basis using standardization and evaluation quizzes and incident response drills, and on a quarterly basis using tabletop or full-scale exercises. [a: WMATA System Implementation Statement]</li>
Related Controls: CP-3, CP-4, IR-2, IR-4, IR-8, PM-14
<li>b. Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Incident Response Testing</b></p>Test the effectiveness of the incident response capability for the system [Assignment: organization-defined frequency] using the following tests: [Assignment: organization-defined tests].' WHERE [Requirement_Id] = 37730
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Coordinate incident response testing with organizational elements responsible for related plans. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Coordination with Related Plans</b></p>Coordinate incident response testing with organizational elements responsible for related plans.' WHERE [Requirement_Id] = 37731
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Implement an incident handling capability for incidents that is consistent with the incident response plan and includes preparation, detection and analysis, containment, eradication, and recovery; [a: WMATA System Implementation Statement]</li>
<li>b. Support incident response at the system level as dictated by the nature of the incident; [b: WMATA System Implementation Statement]</li>
<li>c. Coordinate incident handling activities with contingency planning activities; [c: WMATA System Implementation Statement]</li>
<li>d. Incorporate lessons learned from ongoing incident handling activities into incident response procedures, training, and testing, and implement the resulting changes accordingly; and [d: WMATA System Implementation Statement]</li>
<li>e. Ensure the rigor, intensity, scope, and results of incident handling activities are comparable and predictable across the organization. [e: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> As part of the incident handling capability, the organization coordinates with external vendors, integrators, or suppliers as necessary to ensure they have the capability to address events specific to embedded components and devices. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AC-19, AU-6, AU-7, CM-6, CP-2, CP-3, CP-4, IR-2, IR-3, IR-5, IR-6, IR-8, PE-6, PL-2, PM-12, SA-8, SC-5, SC-7, SI-3, SI-4, SI-7
<li>f. Security Controls Enhancement(s): [f: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: As part of the incident handling capability, the organization coordinates with external vendors, integrators, or suppliers as necessary to ensure that they have the capability to address events that are specific to embedded components and devices. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Incident Handling</b></p>a. Implement an incident handling capability for incidents that is consistent with the incident response plan and includes preparation, detection and analysis, containment, eradication, and recovery;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Support the incident handling process using automated mechanisms that support incident handling processes, including online incident management systems and tools that support the collection of live response data, full network packet capture, and forensic analysis. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Automated Incident Handling Processes</b></p>Support the incident handling process using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37733
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Establish and maintain an integrated incident response team that can be activated by the organization within one hour. [WMATA System Implementation Statement]

Related Controls: AT-3
', [Supplemental_Info]=N'<p><b> Integrated Incident Response Team</b></p>Establish and maintain an integrated incident response team that can be deployed to any location identified by the organization in [Assignment: organization-defined time period].' WHERE [Requirement_Id] = 37734
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Correlate incident information and individual incident responses to achieve an organization-wide perspective on incident awareness and response. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Information Correlation</b></p>Correlate incident information and individual incident responses to achieve an organization-wide perspective on incident awareness and response.' WHERE [Requirement_Id] = 37735
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Track and document incidents. [a: WMATA System Implementation Statement]</li>
Related Controls: AU-6, AU-7, IR-4, IR-6, IR-8, PE-6, PM-5, SC-5, SC-7, SI-3, SI-4, SI-7
<li>b. Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Incident Monitoring</b></p>Track and document incidents.' WHERE [Requirement_Id] = 37736
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Track incidents and collect and analyze incident information. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Automated Tracking, Data Collection, and Analysis</b></p>Track incidents and collect and analyze incident information using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37737
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Require personnel to report suspected incidents to the organizational incident response capability immediately, but not to exceed 24 hours; and [a: WMATA System Implementation Statement]</li>
<li>b. Report incident information to the CISO via the Cyber Fusion Center’s (CFC) Security Operations Center (SOC). [b: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> The organization should report incidents on a timely basis. CISA collaborates with international and private sector Computer Emergency Response Teams (CERTs) to share control systems-related security incidents and mitigation measures. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: CM-6, CP-2, IR-4, IR-5, IR-8, IR-9
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The organization should report incidents on a timely basis. CISA collaborates with international and private-sector computer emergency response teams (CERTs) to share control systems-related security incidents and mitigation measures. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Incident Reporting</b></p>a. Require personnel to report suspected incidents to the organizational incident response capability within [Assignment: organization-defined time period]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Report incidents using the designated Security Orchestration, Automation and Response (SOAR). [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> The automated mechanisms used to support the incident reporting process are not necessarily part of, or connected to, the OT. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: IR-7

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The automated mechanisms used to support the incident reporting process are not necessarily part of or connected to the OT. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Incident Reporting | Automated Reporting</b></p>Report incidents using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37739
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Provide incident information to the provider of the product or service and other organizations involved in the supply chain or supply chain governance for systems or system components related to the incident. [WMATA System Implementation Statement]

Related Controls: SR-8

', [Supplemental_Info]=N'<p><b> Supply Chain Coordination</b></p>Provide incident information to the provider of the product or service and other organizations involved in the supply chain or supply chain governance for systems or system components related to the incident.' WHERE [Requirement_Id] = 37740
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Provide an incident response support resource, integral to the organizational incident response capability, that offers advice and assistance to users of the system for the handling and reporting of incidents. [a: WMATA System Implementation Statement]</li>
Related Controls: AT-2, AT-3, IR-4, IR-6, IR-8, PM-22, PM-26, SA-9, SI-18
<li>b. Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Incident Response Assistance</b></p>Provide an incident response support resource, integral to the organizational incident response capability, that offers advice and assistance to users of the system for the handling and reporting of incidents.' WHERE [Requirement_Id] = 37741
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Increase the availability of incident response information and support using automated mechanisms which provide a push or pull capability for users to obtain incident response assistance (e.g., access to a website to query the assistance capability, the assistance capability to proactively send incident response information to users as part of increasing understanding of current response capabilities and support, etc.). [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Automation Support for Availability of Information and Support</b></p>Increase the availability of incident response information and support using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37742
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Develop an incident response plan that: [a: WMATA System Implementation Statement]</li>
<li>i) Provides the organization with a roadmap for implementing its incident response capability; [a.i: WMATA System Implementation Statement]</li>
<li>ii) Describes the structure and organization of the incident response capability; [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Provides a high-level approach for how the incident response capability fits into the overall organization; [a.iii: WMATA System Implementation Statement]</li>
<li>iv) Meets the unique requirements of the organization, which relate to mission, size, structure, and functions; [a.iv: WMATA System Implementation Statement]</li>
<li>v) Defines reportable incidents; [a.v: WMATA System Implementation Statement]</li>
<li>vi) Provides metrics for measuring the incident response capability within the organization; [a.vi: WMATA System Implementation Statement]</li>
<li>vii) Defines the resources and management support needed to effectively maintain and mature an incident response capability; [a.vii: WMATA System Implementation Statement]</li>
<li>viii) Addresses the sharing of incident information; [a.viii: WMATA System Implementation Statement]</li>
<li>ix) Is reviewed and approved by the CISO or CISO’s designated representative annually; and [a.ix: WMATA System Implementation Statement]</li>
<li>x) Explicitly designates responsibility for incident response to the Cyber Fusion Officer (CFO). [a.x: WMATA System Implementation Statement]</li>
<li>b. Create a Cybersecurity Incident Response Team (CIRT) charter which identifies the roles and responsibilities of members of the CIRT; [b: WMATA System Implementation Statement]</li>
<li>c. Distribute copies of the incident response plan to all members of the CFC and the CIRT; [c: WMATA System Implementation Statement]</li>
<li>d. Update the incident response plan to address system and organizational changes or problems encountered during plan implementation, execution, or testing; [d: WMATA System Implementation Statement]</li>
<li>e. Communicate incident response plan changes to all members of the CFC and the CIRT; [e: WMATA System Implementation Statement]</li>
<li>f. Protect the incident response plan from unauthorized disclosure and modification; [f: WMATA System Implementation Statement]</li>
<li>g. Identify personnel associated with incident response activities at the system level within the corresponding SSP addendum and at the CIRT (organizational) level within the CIRT charter addendum; [g: WMATA System Implementation Statement]</li>
<li>h. Notify DMCS within seven calendar days of the appointment of an individual to a qualifying incident response capacity; and [h: WMATA System Implementation Statement]</li>
<li>i. Certify personnel associated with incident response annually. [i: WMATA System Implementation Statement]</li>
Related Controls: AC-2, CP-2, CP-4, IR-4, IR-7, IR-9, PE-6, PL-2, SA-15, SI-12, SR-8
<li>j. Security Controls Enhancement(s): [j: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Incident Response Plan</b></p>a. Develop an incident response plan that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Include the following in the Incident Response Plan for breaches involving sensitive information: [1: WMATA System Implementation Statement]</li>
<li>(a) A process to determine if notice to individuals or other organizations, including oversight organizations, is needed; [1.a: WMATA System Implementation Statement]</li>
<li>(b) An assessment process to determine the extent of the harm, embarrassment, inconvenience, or unfairness to affected individuals and any mechanisms to mitigate such harms; and [1.b: WMATA System Implementation Statement]</li>
<li>(c) Identification of applicable privacy requirements. [1.c: WMATA System Implementation Statement]</li>

Related Controls: PT-1, PT-2, PT-3, PT-4, PT-5, PT-7
', [Supplemental_Info]=N'<p><b> Breaches</b></p>Include the following in the Incident Response Plan for breaches involving personally identifiable information:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Assigning CFC with responsibility for responding to information spills; [a: WMATA System Implementation Statement]</li>
<li>b. Identifying the specific information involved in the system contamination; [b: WMATA System Implementation Statement]</li>
<li>c. Alerting CIRT of the information spill using a method of communication not associated with the spill; [c: WMATA System Implementation Statement]</li>
<li>d. Isolating the contaminated system or system component; [d: WMATA System Implementation Statement]</li>
<li>e. Eradicating the information from the contaminated system or component; [e: WMATA System Implementation Statement]</li>
<li>f. Identifying other systems or system components that may have been subsequently contaminated; and [f: WMATA System Implementation Statement]</li>
<li>g. Performing the following additional actions: [g: WMATA System Implementation Statement]</li>
<li>i. Notification to the Cyber Fusion Officer (CFO) to notify any third parties to include cyber insurers and federal, state, and local authorities to initiate recovery or remediation efforts. [g.i: WMATA System Implementation Statement] </li>
<li>ii. Review and update incident response plans and procedures, and relevant SOPs and work instructions. [g.ii: WMATA System Implementation Statement]</li>
<li>iii. Ensure that all users/handlers are in compliance with AT-2 and AT-3. [g.iii: WMATA System Implementation Statement]</li>
Related Controls: CP-2, IR-6, PM-26, PM-27, PT-2, PT-3, PT-7, RA-7
<li>h. Security Controls Enhancement(s): [h: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Information Spillage Response</b></p>Respond to information spills by:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Provide information spillage response training annually. [WMATA System Implementation Statement]

Related Controls: AT-2, AT-3, CP-3, IR-2
', [Supplemental_Info]=N'<p><b>Training</b></p>Provide information spillage response training [Assignment: organization-defined frequency].' WHERE [Requirement_Id] = 37746
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'The CFC shall develop procedures to ensure that organizational personnel impacted by information spills can continue to carry out assigned tasks while contaminated systems are undergoing corrective actions. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Post-Spill Operations</b></p>Implement the following procedures to ensure that organizational personnel impacted by information spills can continue to carry out assigned tasks while contaminated systems are undergoing corrective actions: [Assignment: organization-defined procedures].' WHERE [Requirement_Id] = 37747
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'The CFC will make persons exposed to information to which they have not been authorized aware of any restrictions imposed by applicable law, regulation or other requirement based on exposure to such information. In addition, the CFC shall facilitate the notification to organizations and entities whose information has been compromised in accordance with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Exposure to Unauthorized Personnel</b></p>Employ the following controls for personnel exposed to information not within assigned access authorizations: [Assignment: organization-defined controls].' WHERE [Requirement_Id] = 37748
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Reference P/I 15.28 Cybersecurity Policy for requirements. [WMATA System Implementation Statement]

Related Controls: PM-9, PS-8, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The policy specifically addresses the unique properties and requirements of OT and the relationship to non-OT systems. [NIST 800-82 Rev 3: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>Maintenance Policy and Procedures</b></p>Control:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Schedule, document, and review records of maintenance, repair, and replacement of system components in accordance with manufacturer or vendor specifications and/or organizational requirements; [a: WMATA System Implementation Statement]</li>
<li>b. Approve and monitor all maintenance activities, whether performed on-site or remotely and whether the system or system components are serviced on site or removed to another location; [b: WMATA System Implementation Statement]</li>
<li>c. Require that System Owners or the CDO initiate the approval process for the removal of the system or system components from organizational facilities for off-site maintenance, repair, or replacement; [c: WMATA System Implementation Statement]</li>
<li>d. Require that the CDO explicitly approve the removal of the system or system components from organizational facilities for off-site maintenance, repair, or replacement; [d: WMATA System Implementation Statement]</li>
<li>e. Sanitize equipment in accordance with Control 3.12 Media Protection to remove information from associated media prior to removal from organizational facilities for off-site maintenance, repair, or replacement; [e: WMATA System Implementation Statement]</li>
<li>f. Check all potentially impacted controls to verify that the controls are still functioning properly following maintenance, repair, or replacement actions; and [f: WMATA System Implementation Statement]</li>
<li>g. Include the following information in organizational maintenance records: date and time of maintenance, a description of the maintenance performed, full names and organization of individuals or groups performing the maintenance, name of the authorized escort, and system components with associated barcode or other identifier or equipment that are removed or replaced. [g: WMATA System Implementation Statement]</li>
Related Controls: CM-2, CM-3, CM-4, CM-5, CM-8, MA-4, MP-6, PE-16, SI-2, SR-3, SR-4, SR-11
<li>h. Security Controls Enhancement(s): [h: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Controlled Maintenance</b></p>a. Schedule, document, and review records of maintenance, repair, and replacement on system components in accordance with manufacturer or vendor specifications and/or organizational requirements;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Schedule and document maintenance, repair, and replacement actions for the system using an enterprise configuration management database (CMDB); [1: WMATA System Implementation Statement]</li>
<li>(2) Conduct maintenance, repair, and replacement actions for the system using automated mechanisms whenever possible; and [2: WMATA System Implementation Statement]</li>
<li>(3) Produce up-to date, accurate, and complete records of all maintenance, repair, and replacement actions requested, scheduled, in process, and completed. [3: WMATA System Implementation Statement]</li>

Related Controls: MA-3
', [Supplemental_Info]=N'<p><b> Automated Maintenance Activities</b></p>(a) Schedule, conduct, and document maintenance, repair, and replacement actions for the system using [Assignment: organization-defined automated mechanisms]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Approve, control, and monitor the use of system maintenance tools; and [a: WMATA System Implementation Statement]</li>
<li>b. Review previously approved system maintenance tools on a continual basis. [b: WMATA System Implementation Statement]</li>
Related Controls: MA-2, PE-16
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Maintenance Tools</b></p>a. Approve, control, and monitor the use of system maintenance tools; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Inspect the maintenance tools used by maintenance personnel for improper or unauthorized modifications. [WMATA System Implementation Statement]

Related Controls: SI-7
', [Supplemental_Info]=N'<p><b> Inspect Tools</b></p>Inspect the maintenance tools used by maintenance personnel for improper or unauthorized modifications.' WHERE [Requirement_Id] = 37753
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Check media containing diagnostic and test programs for malicious code before the media are used in the system. [WMATA System Implementation Statement]

Related Controls: SI-3
', [Supplemental_Info]=N'<p><b> Inspect Media</b></p>Check media containing diagnostic and test programs for malicious code before the media are used in the system.' WHERE [Requirement_Id] = 37754
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Prevent the removal of maintenance equipment containing organizational information by: [WMATA System Implementation Statement]

<li>(1) Verifying that there is no organizational information contained on the equipment; [1: WMATA System Implementation Statement]</li>
<li>(2) Sanitizing or destroying the equipment in accordance with Control 3.12 Media Protection; [2: WMATA System Implementation Statement]</li>
<li>(3) Retaining the equipment within the facility; or [3: WMATA System Implementation Statement]</li>
<li>(4) Obtaining an exemption from the CDO explicitly authorizing removal of the equipment from the facility. [4: WMATA System Implementation Statement]</li>

Related Controls: MP-6
', [Supplemental_Info]=N'<p><b> Prevent Unauthorized Removal</b></p>Prevent the removal of maintenance equipment containing organizational information by:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Inspect maintenance tools to ensure the latest software updates and patches are installed. [WMATA System Implementation Statement]

Related Controls: AC-3, AC-6
', [Supplemental_Info]=N'<p><b> Software Updates and Patches</b></p>Inspect maintenance tools to ensure the latest software updates and patches are installed.' WHERE [Requirement_Id] = 37756
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Approve and monitor nonlocal maintenance and diagnostic activities; [a: WMATA System Implementation Statement]</li>
<li>b. Allow the use of nonlocal maintenance and diagnostic tools only as consistent with organizational policy and documented in the security plan for the system; [b: WMATA System Implementation Statement]</li>
<li>c. Employ strong authentication in the establishment of nonlocal maintenance and diagnostic sessions; [c: WMATA System Implementation Statement]</li>
<li>d. Maintain records for nonlocal maintenance and diagnostic activities; and [d: WMATA System Implementation Statement]</li>
<li>e. Terminate session and network connections when nonlocal maintenance is completed. [e: WMATA System Implementation Statement]</li>
Related Controls: AC-2, AC-3, AC-6, AC-17, AU-2, AU-3, IA-2, IA-4, IA-5, IA-8, MA-2, MA-5, PL-2, SC-7, SC-10
<li>f. Security Controls Enhancement(s): [f: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Nonlocal Maintenance</b></p>a. Approve and monitor nonlocal maintenance and diagnostic activities;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Log [Assignment: organization-defined audit events] for nonlocal maintenance and diagnostic sessions; and [1: WMATA System Implementation Statement]</li>
<li>(2) Review the audit records of the maintenance and diagnostic sessions to detect anomalous behavior. [2: WMATA System Implementation Statement]</li>

Related Controls: AU-6, AU-12

<b><u>NIST 800-82 Rev 3:</u></b>
Rationale for adding MA-4 (1) to MOD and HIGH baselines: OT environments are often heavily dependent on nonlocal maintenance providers, so organizations should have the ability to review logs about relevant maintenance activities. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Nonlocal Maintenance | Logging and Review</b></p>(a) Log [Assignment: organization-defined audit events] for nonlocal maintenance and diagnostic sessions; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Require that nonlocal maintenance and diagnostic services be performed from a system that implements a security capability comparable to the capability implemented on the system being serviced; or [1: WMATA System Implementation Statement]</li>
<li>(2) Remove the component to be serviced from the system prior to nonlocal maintenance or diagnostic services; sanitize the component (for organizational information); and after the service is performed, inspect, and sanitize the component (for potentially malicious software) before reconnecting the component to the system. [2: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> The organization may need access to nonlocal maintenance and diagnostic services in order to restore essential OT operations or services. Example compensating controls include limiting the extent of the maintenance and diagnostic services to the minimum essential activities, and carefully monitoring and auditing the non-local maintenance and diagnostic activities. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: MP-6, SI-3, SI-7

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The organization may need access to nonlocal maintenance and diagnostic services in order to restore essential OT operations or services. Example compensating controls include limiting the extent of the maintenance and diagnostic services to the minimum essential activities and carefully monitoring and auditing the nonlocal maintenance and diagnostic activities. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Nonlocal Maintenance | Comparable Security and Sanitization</b></p>(a) Require that nonlocal maintenance and diagnostic services be performed from a system that implements a security capability comparable to the capability implemented on the system being serviced; or
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Establish a process for maintenance personnel authorization and maintain a list of authorized maintenance organizations or personnel; [a: WMATA System Implementation Statement]</li>
<li>b. Verify that non-escorted personnel performing maintenance on the system possess the required access authorizations; and [b: WMATA System Implementation Statement]</li>
<li>c. Designate organizational personnel with required access authorizations and technical competence to supervise the maintenance activities of personnel who do not possess the required access authorizations. [c: WMATA System Implementation Statement]</li>
Related Controls: AC-2, AC-3, AC-5, AC-6, IA-2, IA-8, MA-4, MP-2, PE-2, PE-3, PS-7, RA-3
<li>d. Security Controls Enhancement(s): [d: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Maintenance Personnel</b></p>a. Establish a process for maintenance personnel authorization and maintain a list of authorized maintenance organizations or personnel;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Implement procedures for the use of maintenance personnel that lack appropriate security clearances or are not U.S. citizens, that include the following requirements: [1: WMATA System Implementation Statement]</li>
<li>(a) Maintenance personnel who do not have needed access authorizations, clearances, or formal access approvals are escorted and supervised during the performance of maintenance and diagnostic activities on the system by approved organizational personnel who are fully cleared, have appropriate access authorizations, and are technically qualified; and [1.a: WMATA System Implementation Statement]</li>
<li>(b) Personnel who do not have needed access authorizations, clearances or formal access approvals shall not be permitted to initiate maintenance or diagnostic activities on the system. All exceptions shall be authorized by the Authorizing Official (AO); and [1.b: WMATA System Implementation Statement]</li>
<li>(2) Develop, document, and receive approval from the AO for any alternate controls to be implemented or used in the event a system component cannot be sanitized, removed, or disconnected from the system. [2: WMATA System Implementation Statement]</li>

Related Controls: MP-6, PL-2
', [Supplemental_Info]=N'<p><b> Individuals Without Appropriate Access</b></p>(a) Implement procedures for the use of maintenance personnel that lack appropriate security clearances or are not U.S. citizens, that include the following requirements:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Obtain maintenance support and/or spare parts and perform or complete maintenance activities for critical system components within the maximum tolerable downtime (MTD) specified for a system. [WMATA System Implementation Statement]

Related Controls: CM-8, CP-2, CP-7, RA-7, SA-15, SI-13, SR-2, SR-3, SR-4
', [Supplemental_Info]=N'<p><b>Timely Maintenance</b></p>Obtain maintenance support and/or spare parts for [Assignment: organization-defined system components] within [Assignment: organization-defined time period] of failure.' WHERE [Requirement_Id] = 37762
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Reference P/I 15.28 Cybersecurity Policy for requirements. [WMATA System Implementation Statement]

Related Controls: PM-9, PS-8, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The policy specifically addresses the unique properties and requirements of OT and the relationship to non-OT systems. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Media Protection Policy and Procedures</b></p>Control:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Restrict access to digital and non-digital media to authorized personnel with media protection responsibilities. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Media Access</b></p>Restrict access to [Assignment: organization-defined types of digital and/or non-digital media] to [Assignment: organization-defined personnel or roles].' WHERE [Requirement_Id] = 37764
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Mark system media indicating the distribution limitations, handling caveats, and applicable security markings (if any) of the information; [a: WMATA System Implementation Statement]</li>
<li>b. Media that stores information deemed to be in the public domain (or to be publicly releasable) shall be exempt from media marking requirements only if approved by the AO; and [b: WMATA System Implementation Statement]</li>
<li>c. All other digital and non-digital media shall be subject to media marking requirements. [c: WMATA System Implementation Statement]</li>

Related Controls: AC-19, AU-9, CP-2, CP-9, CP-10, MA-5, MP-4, MP-6, PE-2, PE-3, SC-12, SC-13, SI-12
', [Supplemental_Info]=N'<p><b>Media Marking</b></p>a. Mark system media indicating the distribution limitations, handling caveats, and applicable security markings (if any) of the information; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Digital and non-digital media shall be physically controlled and securely stored within authorized locked cabinets or safes in secure/controlled facilities; and [a: WMATA System Implementation Statement]</li>
<li>b. Protect system media types until the media are destroyed or sanitized using approved equipment, techniques, and procedures. [b: WMATA System Implementation Statement]</li>

Related Controls: AC-19, CP-2, CP-6, CP-9, CP-10, MP-2, MP-7, PE-3, PL-2, SC-12, SC-13, SC-28, SI-12
', [Supplemental_Info]=N'<p><b>Media Storage</b></p>a. Physically control and securely store [Assignment: organization-defined types of digital and/or non-digital media] within [Assignment: organization-defined controlled areas]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Protect and control sensitive digital media during transport outside of WMATA facilities using a FIPS 140-2 certified encryption module; [a: WMATA System Implementation Statement]</li>
<li>b. Maintain accountability for sensitive system media during transport outside of controlled areas; [b: WMATA System Implementation Statement]</li>
<li>c. Document activities in accordance with Control 3.8 Data Sensitivity associated with the transport of sensitive system media; and [c: WMATA System Implementation Statement]</li>
<li>d. Restrict the activities as referenced in the Data Centers associated with the transport of sensitive system media to authorized personnel. [d: WMATA System Implementation Statement]</li>

Related Controls: AC-7, AC-19, CP-2, CP-9, MP-3, MP-4, PE-16, PL-2, SC-12, SC-13, SC-28

In addition to the above NIST controls, the following cybersecurity requirements further define WMATA policy:

<li>1. Media Transport: Employ the following controls when using WMATA media at alternate work sites: [1: WMATA System Implementation Statement]</li>
<li>a. Controls in accordance with P/I 7.4.3 Telework Policy and associated appendices. [1.a: WMATA System Implementation Statement]</li>
<li>b. Any personnel working outside of the United States shall use virtual infrastructures to access WMATA systems and/or networks. [1.b: WMATA System Implementation Statement]</li>
<li>i) No WMATA information shall be transported or stored on physical or virtual systems or devices that are not owned and controlled by WMATA. [1.b.i: WMATA System Implementation Statement]</li>
<li>ii) Specific exemptions shall be documented for submittal and approved in advance by the AO. [1.b.ii: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Media Transport</b></p>a. Protect and control [Assignment: organization-defined types of system media] during transport outside of controlled areas using [Assignment: organization-defined controls];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Sanitize digital media including prior to disposal, release out of organizational control, or release for reuse in alignment with NIST requirements; and [a: WMATA System Implementation Statement]</li>
<li>b. Employ sanitization mechanisms with the strength and integrity commensurate with the sensitivity of the information. [b: WMATA System Implementation Statement]</li>
Related Controls: AC-3, AC-7, AU-11, MA-2, MA-3, MA-4, MA-5, PM-22, SI-12, SI-18, SI-19, SR-11
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>

In addition to the above NIST controls, the following cybersecurity requirements further define WMATA policy:

<li>1. Destructive Techniques: For assets that are not sanitized, destructive techniques may be used to protect WMATA information. [1: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Media Sanitization</b></p>a. Sanitize [Assignment: organization-defined system media] prior to disposal, release out of organizational control, or release for reuse using [Assignment: organization-defined sanitization techniques and procedures]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Review, approve, track, document, and verify media sanitization and disposal actions. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Review, Approve, Track, Document, and Verify</b></p>Review, approve, track, document, and verify media sanitization and disposal actions.' WHERE [Requirement_Id] = 37769
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Test sanitization equipment and procedures annually to ensure that the intended sanitization is being achieved. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Equipment Testing</b></p>Test sanitization equipment and procedures [Assignment: organization-defined frequency] to ensure that the intended sanitization is being achieved.' WHERE [Requirement_Id] = 37770
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Apply nondestructive sanitization techniques to portable storage devices including internal and external hard disk drives (e.g., solid state, magnetic), optical discs, magnetic or optical tapes, flash memory devices, flash memory cards, and other external or removable disks prior to connecting such devices to the system. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Nondestructive Techniques</b></p>Apply nondestructive sanitization techniques to portable storage devices prior to connecting such devices to the system under the following circumstances: [Assignment: organization-defined circumstances requiring sanitization of portable storage devices].' WHERE [Requirement_Id] = 37771
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><strong>WMATA Policy</strong></p><p>Restrict or prohibit field maintenance on [Assignment: organization-defined systems or system components] to [Assignment: organization-defined trusted maintenance facilities].</p><p><strong><u>OT Systems Only:</strong></u> Organizations identify OT system/systems components with specific calibration, maintenance, or other requirements and limit maintenance to specific facilities. Some examples may include safety critical systems or systems involved in custody transfer where accuracy tolerances are limited and additional quality control checks are required. <br>	<br>Related Controls: MA-2, MA-4, MA-5</p><p><strong><u>NIST 800-82 Rev 3:</strong></u><br>OT Discussion: Organizations identify OT systems and system components with specific calibration, maintenance, or other requirements and limit maintenance to specific facilities. Some examples may include safety-critical systems or systems involved in custody transfer where accuracy tolerances are limited and additional quality control checks are required.</p><p>Rationale for adding MA-7 to LOW, MOD, and HIGH baselines: Some OT equipment have specific requirements for calibration, maintenance, and modification to meet regulatory or safety standards. Different deployed locations may impact the quality and precision of field maintenance. </p><p><strong>NIST SP800-53 R5</strong></p><p>Field maintenance is the type of maintenance conducted on a system or system component after the system or component has been deployed to a specific site (i.e., operational environment). In certain instances, field maintenance (i.e., local maintenance at the site) may not be executed with the same degree of rigor or with the same quality control checks as depot maintenance. For critical systems designated as such by the organization, it may be necessary to restrict or prohibit field maintenance at the local site and require that such maintenance be conducted in trusted facilities with additional controls.</p>', [Supplemental_Info]=N'<p><b>Field Maintenance</b></p>Restrict or prohibit field maintenance on [Assignment: organization-defined systems or system components] to [Assignment: organization-defined trusted maintenance facilities].' WHERE [Requirement_Id] = 37772
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Restrict the use of disk drives, diskettes, internal and external hard drives, and portable devices, including backup media, removable media, and mobile devices on information systems or system components using security safeguards; and [a: WMATA System Implementation Statement]</li>
<li>b. Prohibit the use of non-WMATA-issued portable storage devices in organizational systems when such devices have no identifiable owner. [b: WMATA System Implementation Statement]</li>

Related Controls: AC-19, AC-20, PL-4, PM-12, SC-41

In addition to the above NIST controls, the following cybersecurity requirements further define WMATA policy:

<li>1. Destructive Techniques: For assets that are not sanitized, destructive techniques may be used to protect WMATA information. [1: WMATA System Implementation Statement]</li>


', [Supplemental_Info]=N'<p><b>Media Use</b></p>a. [Selection: Restrict; Prohibit] the use of [Assignment: organization-defined types of system media] on [Assignment: organization-defined systems or system components] using [Assignment: organization-defined controls]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Reference P/I 15.28 Cybersecurity Policy for requirements. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> The policy specifically addresses the unique properties and requirements of OT and the relationship to non-OT systems. The OT components can be distributed over a large facility footprint or geographic area and can be any entry point into the entire organizational network OT. Regulatory controls may also apply. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AT-3, PM-9, PS-8, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The policy specifically addresses the unique properties and requirements of OT and the relationship to non-OT systems. The OT components can be distributed over a large facility footprint or geographic area and can be an entry point into the entire organizational network OT. Regulatory controls may also apply. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Physical and Environmental Protection Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Provide the capability of shutting off power to systems or individual system components in emergency situations for facilities with concentrations of system resources (e.g., data centers, mainframe computer rooms, server rooms, and areas with computer-controlled machinery); [a: WMATA System Implementation Statement]</li>
<li>b. Place emergency shutoff switches or devices in accessible locations to facilitate access for authorized personnel; [b: WMATA System Implementation Statement]</li>
<li>c. Protect emergency power shutoff capability from unauthorized activation; and [c: WMATA System Implementation Statement]</li>
<li>d. Appoint a WMATA employee or contractor to manage all emergency shutoff capabilities. [d: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> It may not be possible or advisable to shut off power to some OT. The [organization-defined parameters] for this control should be implemented in consultation with safety and operational personnel. Example compensating controls include failing to a known state and emergency procedures. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: PE-15

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: It may not be possible or advisable to shut off power to some OT. The organizational-defined parameters for this control should be implemented in consultation with safety and operational personnel. Example compensating controls include failing to a known state and emergency procedures. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Emergency Shutoff</b></p>a. Provide the capability of shutting off power to [Assignment: organization-defined system or individual system components] in emergency situations;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Provide an uninterruptible power supply to facilitate an orderly shutdown of the system and transition of the system to long-term alternate power in the event of a primary power source loss; and [a: WMATA System Implementation Statement]</li>
<li>b. Appoint a WMATA employee or contractor to manage all emergency power capabilities. [b: WMATA System Implementation Statement]</li>
Related Controls: AT-3, CP-2, CP-7
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Emergency Power</b></p>Provide an uninterruptible power supply to facilitate [Selection (one or more): an orderly shutdown of the system; transition of the system to long-term alternate power] in the event of a primary power source loss.' WHERE [Requirement_Id] = 37776
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) WMATA shall provide an automatic alternate power supply for systems to ensure required operational capability in the event of an extended loss of the primary power source. [1: WMATA System Implementation Statement]</li>
<li>(2) In the event both the primary and alternate power supply, a graceful shutdown of the system shall occur in accordance with Control 3.19 System and Services Acquisition control. [2: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b> Alternate Power Supply — Minimal Operational Capability</b></p>Provide an alternate power supply for the system that is activated [Selection: manually; automatically] and that can maintain minimally required operational capability in the event of an extended loss of the primary power source.' WHERE [Requirement_Id] = 37777
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Provide an alternate power supply for the system that is activated [Selection: manually; automatically] and that is: [WMATA System Implementation Statement]

<li>(1) Self-contained; [1: WMATA System Implementation Statement]</li>
<li>(2) Not reliant on external power generation; and [2: WMATA System Implementation Statement]</li>
<li>(3) Capable of maintaining [Selection: minimally required operational capability; full operational capability] in the event of an extended loss of the primary power source. [3: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b> Alternate Power Supply – Self-Contained</b></p>Provide an alternate power supply for the system that is activated [Selection: manually; automatically] and that is:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Employ and maintain automatic emergency lighting for the system that activates in the event of a power outage or disruption and that covers emergency exits and evacuation routes within the facility. [WMATA System Implementation Statement]

Related Controls: CP-2, CP-7
', [Supplemental_Info]=N'<p><b>Emergency Lighting</b></p>Employ and maintain automatic emergency lighting for the system that activates in the event of a power outage or disruption and that covers emergency exits and evacuation routes within the facility.' WHERE [Requirement_Id] = 37779
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Employ and maintain fire detection and suppression systems that are supported by an independent energy source. [a: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Fire suppression mechanisms should take the OT environment into account (e.g., water sprinkler systems could be hazardous in specific environments). [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AT-3
<li>b. Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Fire suppression mechanisms should take the OT environment into account (e.g., water sprinkler systems could be hazardous in specific environments). [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Fire Protection</b></p>Employ and maintain fire detection and suppression systems that are supported by an independent energy source.' WHERE [Requirement_Id] = 37780
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Employ fire detection systems that activate automatically and notify MTPD, Office of Emergency Management, Facilities, MEMC, Cyber Fusion Center, and emergency responders in the event of a fire. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Detection Systems – Automatic Activation and Notification</b></p>Employ fire detection systems that activate automatically and notify [Assignment: organization-defined personnel or roles] and [Assignment: organization-defined emergency responders] in the event of a fire.' WHERE [Requirement_Id] = 37781
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Employ fire suppression systems that activate automatically and notify MTPD, Office of Emergency Management, Facilities, MEMC, Cyber Fusion Center, and emergency responders. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Suppression Systems – Automatic Activation and Notification</b></p>(a) Employ fire suppression systems that activate automatically and notify [Assignment: organization-defined personnel or roles] and [Assignment: organization-defined emergency responders]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Maintain temperature, humidity, pressure, radiation, and other applicable environmental control levels within facilities that contain concentrations of system resources (e.g., data centers, mainframe computer rooms, and server rooms) where systems reside at [Assignment: organization-defined acceptable levels]; and [WMATA System Implementation Statement]

<li>b. Monitor environmental control levels at least twice daily. [b: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Temperature and humidity controls are typically components of other OT systems such as the HVAC, process, or lighting systems, or can be a standalone and unique OT system. OT can operate in extreme environments and both interior and exterior locations. For a specific OT, the temperature and humidity design and operational parameters dictate the performance specifications. As OT and IT become interconnected and the network provides connectivity across the hybrid domain, power circuits, distribution closets, routers, and switches that support fire protection and life safety systems must be maintained at the proper temperature and humidity. When environmental controls cannot be implemented, use hardware that is engineered to withstand the unique environmental hazards. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AT-3, CP-2

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Temperature and humidity controls are typically components of other OT systems (e.g., HVAC, process, or lighting systems) or can be a stand-alone and unique OT system. OT can operate in extreme environments and both interior and exterior locations. For a specific OT, the temperature and humidity design and operational parameters dictate the performance specifications. Power circuits, distribution closets, routers, and switches that support fire protection and life safety systems must be maintained at the proper temperature and humidity. When environmental controls cannot be implemented, use hardware that is engineered to withstand the OT’s unique environmental hazards. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Environmental Controls</b></p>a. Maintain [Selection (one or more): temperature; humidity; pressure; radiation; [Assignment: organization-defined environmental control]] levels within the facility where the system resides at [Assignment: organization-defined acceptable levels]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Protect systems from damage resulting from water leakage by providing master shutoff or isolation valves that are accessible, working properly, and known to key personnel. [a: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Water damage protection and use of shutoff and isolation valves is both a procedural action and a specific type of OT. OT used in the manufacturing, hydropower, transportation/navigation, water, and wastewater industries rely on the movement of water and are specifically designed to manage the quantity/flow and pressure of water. As OT and IT become interconnected and the network provides connectivity across the hybrid domain, power circuits, distribution closets, routers and switches that support fire protection and life safety systems should ensure that water will not disable the system (e.g., a fire that activates the sprinkler system does not spray onto the fire control servers, router, switches and short out the alarms, egress systems, emergency lighting, and suppression systems). [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AT-3, PE-10
<li>b. Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Water damage protection and the use of shutoff and isolation valves are procedural actions and specific types of OT. OT used in the manufacturing, hydropower, transportation/navigation, water, and wastewater industries rely on the movement of water and are specifically designed to manage the quantity, flow, and pressure of water. Power circuits, distribution closets, routers, and switches that support fire protection and life safety systems should ensure that water will not disable the system (e.g., a fire that activates the sprinkler system does not spray onto the fire control servers, routers, or switches or short out the alarms, egress systems, emergency lighting, or suppression systems). [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Water Damage Protection</b></p>Protect the system from damage resulting from water leakage by providing master shutoff or isolation valves that are accessible, working properly, and known to key personnel.' WHERE [Requirement_Id] = 37784
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Detect the presence of water near the system and alert MTPD, Office of Emergency Management, Facilities, MEMC, and Cyber Fusion Center using automated mechanisms. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Automation Support</b></p>Detect the presence of water near the system and alert [Assignment: organization-defined personnel or roles] using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37785
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Authorize and control systems and system components that enter or exit facilities or secured areas to include areas designated for delivery, maintenance/service, or media libraries. [a: WMATA System Implementation Statement]</li>
<li>b. Maintain records of the system components in an organizational asset management system. [b: WMATA System Implementation Statement]</li>

Related Controls: CM-3, CM-8, MA-2, MA-3, MP-5, SR-2, SR-3, SR-4, SR-6
', [Supplemental_Info]=N'<p><b>Delivery and Removal</b></p>a. Authorize and control [Assignment: organization-defined types of system components] entering and exiting the facility; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Determine and document approved alternate work sites allowed for use by employees during contingency operations; [a: WMATA System Implementation Statement]</li>
<li>b. Employ the following controls at alternate work sites: [b: WMATA System Implementation Statement]</li>
<li>i) Use of facilities not owned or operated by WMATA and not covered in accordance with P/I 7.4 Telework Policy are subject to approval for operating or accessing systems by the AO; and [b.i: WMATA System Implementation Statement]</li>
<li>ii) For alternate work sites without access to MetroNet, personnel shall only connect to MetroNet using approved secure means (e.g., Virtual Private Network (VPN), Virtual Desktop Infrastructure (VDI), etc.). [b.ii: WMATA System Implementation Statement]</li>
<li>c. Assess the effectiveness of controls at alternate work sites; and [c: WMATA System Implementation Statement]</li>
<li>d. Provide a means for employees to communicate with information security and privacy personnel in case of incidents. [d: WMATA System Implementation Statement]</li>

Related Controls: AC-17, AC-18, CP-7
', [Supplemental_Info]=N'<p><b>Alternate Work Site</b></p>a. Determine and document the [Assignment: organization-defined alternate work sites] allowed for use by employees;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Position system components within the facility to minimize potential damage from physical and environmental hazards and to minimize the opportunity for unauthorized access. [WMATA System Implementation Statement]

Related Controls: CP-2, PE-5, RA-3
', [Supplemental_Info]=N'<p><b>Location of System Components</b></p>Position system components within the facility to minimize potential damage from [Assignment: organization-defined physical and environmental hazards] and to minimize the opportunity for unauthorized access.' WHERE [Requirement_Id] = 37788
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Develop, approve, and maintain a list of employees and contractors with authorized access to the facility and sensitive area where systems reside; [a: WMATA System Implementation Statement]</li>
<li>b. Issue authorization credentials for facility and sensitive area access; [b: WMATA System Implementation Statement]</li>
<li>c. Review the access list detailing authorized facility and sensitive area access by individuals quarterly; and [c: WMATA System Implementation Statement]</li>
<li>d. Remove individuals from facility and sensitive area access lists when access is no longer required. [d: WMATA System Implementation Statement]</li>

Related Controls: AT-3, AU-9, IA-4, MA-5, MP-2, PE-3, PE-4, PE-5, PE-8, PM-12, PS-3, PS-4, PS-5, PS-6
', [Supplemental_Info]=N'<p><b>Physical Access Authorizations</b></p>a. Develop, approve, and maintain a list of individuals with authorized access to the facility where the system resides;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Employ [Assignment: organization-defined protective measures] against electromagnetic pulse damage for [Assignment: organization-defined systems and system components]. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Organizations managing OT equipment may choose to utilize electromagnetic (EM) pulse protection to prevent adversarial or environmental EM threats. Organizations may select to follow National Coordinating Center for Communications (NCC) guidelines on EM pulse protection. [OT Systems Only: WMATA System Implementation Statement]
	
Related Controls: PE-18

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Organizations that manage OT equipment may choose to utilize EMP protection to prevent adversarial or environmental electromagnetic threats. Organizations may select to follow National Coordinating Center for Communications (NCC) guidelines on EM pulse protection. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Electromagnetic Pulse Protection</b></p>Employ [Assignment: organization-defined protective measures] against electromagnetic pulse damage for [Assignment: organization-defined systems and system components].' WHERE [Requirement_Id] = 37790
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Mark [Assignment: organization-defined system hardware components] indicating the impact level or classification level of the information permitted to be processed, stored, or transmitted by the hardware component. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Hardware components are marked or labeled to indicate which information is processed, stored, or transmitted. Component markings can be useful in differentiating between safety and control systems, OT and IT equipment, and internally and externally connected systems. Marking components reduces the probability of mismanaging the system or performing maintenance on an incorrect device. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-3, AC-4, MP-3

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Hardware components are marked or labeled to indicate information that is processed, stored, or transmitted. Component markings can be useful for differentiating between safety and control systems, OT and IT equipment, and internally and externally connected systems. Marking components reduces the probability of mismanaging the system or performing maintenance on an incorrect device. [NIST 800-82 Rev 3_OT Discussion: WMATA System Implementation Statement]

Rationale for adding PE-22 to MOD and HIGH baselines: OT is unique in that it may look like an IT component but perform a very different function. Visible differentiation between components that perform different functions can help reduce reliability incidents due to maintenance errors. [NIST 800-82 Rev 3_Rationale: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Component Marking</b></p>Mark [Assignment: organization-defined system hardware components] indicating the impact level or classification level of the information permitted to be processed, stored, or transmitted by the hardware component.' WHERE [Requirement_Id] = 37791
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Enforce physical access authorizations at entry and exit points to facilities and sensitive areas where systems reside by: [a: WMATA System Implementation Statement]</li>
<li>i) Verifying individual access authorizations before granting access to the facility and sensitive areas; and [a.i: WMATA System Implementation Statement]</li>
<li>ii) Controlling ingress and egress to the facility and sensitive areas using physical access control personnel (e.g., guards), or systems and devices. [a.ii: WMATA System Implementation Statement]</li>
<li>b. Maintain physical access audit logs for all controlled entry or exit points for all facilities, and secured areas within facilities to include those secured areas listed in accordance with Control 3.14 Physical and Environmental Protection, Section 4, “PE-4 Access Control for </li>
Transmission” and areas that store, process or transmit sensitive information in accordance with Control 3.8 Data Sensitivity; [b: WMATA System Implementation Statement]
<li>c. Control access to areas within the facility designated as publicly accessible by implementing the following controls: physical access control logs/records, guards, and physical access devices and barriers to prevent movement from publicly accessible areas to non-public areas; [c: WMATA System Implementation Statement]</li>
<li>d. WMATA employees shall escort visitors and control visitor activity at all times; [d: WMATA System Implementation Statement]</li>
<li>e. Secure keys, combinations, and other physical access devices; [e: WMATA System Implementation Statement]</li>
<li>f. Inventory and centrally manage physical access devices to include keys, locks, combinations, safes, biometric readers, and card readers and systems every year; and [f: WMATA System Implementation Statement]</li>
<li>g. Change combinations and keys annually and/or when keys are lost, combinations are compromised, or when individuals possessing the keys or combinations are transferred or terminated. [g: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> The organization considers OT safety and security interdependencies. The organization considers access requirements in emergency situations. During an emergency-related event, the organization may restrict access to OT facilities and assets to authorized individuals only. OT systems are often constructed of devices that either do not have or cannot use comprehensive access control capabilities due to time-restrictive safety constraints. Physical access controls and defense-in-depth measures are used by the organization when necessary and possible to supplement OT security when electronic mechanisms are unable to fulfill the security requirements of the organization’s security plan. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AT-3, AU-2, AU-6, AU-9, CP-10, IA-3, IA-8, MA-5, MP-2, MP-4, PE-2, PE-4, PE-5, PE-8, PS-2, PS-3, PS-6, PS-7, RA-3, SC-28, SI-4, SR-3
<li>h. Security Controls Enhancement(s): [h: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The organization considers OT safety and security interdependencies and access requirements in emergency situations. During an emergency, the organization may restrict access to OT facilities and assets to authorized individuals only. OT systems are often constructed of devices that do not have or cannot use comprehensive access control capabilities due to timerestrictive safety constraints. Physical access controls and defense-in-depth measures are used by the organization when necessary and possible to supplement OT security when electronic mechanisms are unable to fulfill the security requirements of the organization’s security plan. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Physical Access Control</b></p>a. Enforce physical access authorizations at [Assignment: organization-defined entry and exit points to the facility where the system resides] by:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Enforce physical access authorizations to systems and applicable system components in addition to the physical access controls for the facility. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> System Access</b></p>Enforce physical access authorizations to the system in addition to the physical access controls for the facility at [Assignment: organization-defined physical spaces containing one or more components of the system].' WHERE [Requirement_Id] = 37793
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Control physical access to system distribution and transmission lines within organizational facilities using security controls to include disconnected or locked spare jacks, locked wiring closets, protection of cabling by conduit or cable trays, and wiretapping sensors. [WMATA System Implementation Statement]

Related Controls: AT-3, IA-4, MP-2, MP-4, PE-2, PE-3, PE-5, PE-9, SC-7, SC-8
', [Supplemental_Info]=N'<p><b>Access Control for Transmission</b></p>Control physical access to [Assignment: organization-defined system distribution and transmission lines] within organizational facilities using [Assignment: organization-defined security controls].' WHERE [Requirement_Id] = 37794
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Control physical access to output devices which display sensitive information (e.g., rail command and control, law enforcement sensitive, etc.) or display devices processing internal or sensitive information visible to the general public to prevent unauthorized individuals from obtaining output. Ensure that output devices are: [WMATA System Implementation Statement]

<li>a. Located in locked rooms or other secured areas that only allow access to authorized individuals; [a: WMATA System Implementation Statement]</li>
<li>b. Placed in locations that can be monitored by authorized personnel; and [b: WMATA System Implementation Statement]</li>
<li>c. Installed with monitor or screen filters (when applicable). [c: WMATA System Implementation Statement]</li>

Related Controls: PE-2, PE-3, PE-4, PE-18
', [Supplemental_Info]=N'<p><b>Access Control for Output Devices</b></p>Control physical access to output from [Assignment: organization-defined output devices] to prevent unauthorized individuals from obtaining the output.' WHERE [Requirement_Id] = 37795
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Implement layered physical security controls to provide authorized access to facilities and systems; [a: WMATA System Implementation Statement]</li>
<li>b. Monitor physical access to the facility where systems reside to detect and respond to physical security incidents; [b: WMATA System Implementation Statement]</li>
<li>c. Review physical access logs monthly and upon occurrence of indications of security violations, suspicious physical access activities, and when notified of suspicious logical access activities that can be correlated with physical access control events; and [c: WMATA System Implementation Statement]</li>
<li>d. Coordinate results of reviews and investigations with the organizational incident response capability. [d: WMATA System Implementation Statement]</li>
Related Controls: AU-2, AU-6, AU-9, AU-12, CA-7, CP-10, IR-4, IR-8
<li>e. Security Controls Enhancement(s): [e: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Monitoring Physical Access</b></p>a. Monitor physical access to the facility where the system resides to detect and respond to physical security incidents;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Monitor physical access to the facility where systems reside using physical intrusion alarms and surveillance equipment. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Intrusion Alarms and Surveillance Equipment</b></p>Monitor physical access to the facility where the system resides using physical intrusion alarms and surveillance equipment.' WHERE [Requirement_Id] = 37797
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Monitor physical access to systems in addition to the physical access monitoring of the facility at physical spaces containing one or more components of the system. [WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
Rationale for adding PE-6 (4) to MOD baseline: Many of the OT components are in remote geographical and dispersed locations. Other components may be in ceilings, floors, or distribution closets. Furthermore, physical access controls are frequently used as compensating controls when devices lack the ability to enforce logical access restrictions. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Monitoring Physical Access | Monitoring Physical Access to Systems</b></p>Monitor physical access to the system in addition to the physical access monitoring of the facility at [Assignment: organization-defined physical spaces containing one or more components of the system].' WHERE [Requirement_Id] = 37798
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Maintain visitor access records to the facility where the system resides for five years. Visitor access records include the names and organizations of individuals visiting, visitor signatures, forms of identification, dates of access, entry and departure times, purpose of visits, and the names and organizations of individuals visited. [a: WMATA System Implementation Statement]</li>
<li>b. Review visitor access records for sensitive areas within the facility where systems reside monthly. Access record reviews determine if access authorizations were and still are required to support organizational mission and business functions. [b: WMATA System Implementation Statement]</li>
<li>c. Report anomalies in visitor access records to MTPD. In addition, all anomalies for sensitive areas that house systems shall be reported to Metro Enterprise Monitoring Center (MEMC) and the Cyber Fusion Center. [c: WMATA System Implementation Statement]</li>
Related Controls: PE-2, PE-3, PE-6
<li>d. Security Controls Enhancement(s): [d: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Visitor Access Records</b></p>a. Maintain visitor access records to the facility where the system resides for [Assignment: organization-defined time period];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Maintain and review visitor access records using automated mechanisms. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Automated Records Maintenance and Review</b></p>Maintain and review visitor access records using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37800
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Limit personally identifiable information contained in visitor access records to include the full name of the individual, Driver’s License Number (or other approved identifier if not available), and the escort name and badge number. [WMATA System Implementation Statement]

Related Controls: RA-3, SA-8
', [Supplemental_Info]=N'<p><b> Limit Personally Identifiable Information Elements</b></p>Limit personally identifiable information contained in visitor access records to the following elements identified in the privacy risk assessment: [Assignment: organization-defined elements].' WHERE [Requirement_Id] = 37801
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Protect power equipment and power cabling for the system from damage and destruction. [WMATA System Implementation Statement]

Related Controls: PE-4
', [Supplemental_Info]=N'<p><b>Power Equipment and Cabling</b></p>Protect power equipment and power cabling for the system from damage and destruction.' WHERE [Requirement_Id] = 37802
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Reference P/I 15.28 Cybersecurity Policy for requirements. [WMATA System Implementation Statement]

Related Controls: PM-9, PS-8, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The policy specifically addresses the unique properties and requirements of OT and the relationship to non-OT systems. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Planning Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Security control baselines shall be in place for all systems. Deviations to control baselines shall be approved by the AO. [WMATA System Implementation Statement]

Related Controls: PL-2, PL-11, RA-2, RA-3, SA-8
', [Supplemental_Info]=N'<p><b>Baseline Selection</b></p>Select a control baseline for the system.' WHERE [Requirement_Id] = 37804
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Tailoring of selected control baselines shall be performed in consultation with DMCS and approval by the AO. [WMATA System Implementation Statement]

Related Controls: PL-10, RA-2, RA-3, RA-9, SA-8
', [Supplemental_Info]=N'<p><b>Baseline Tailoring</b></p>Tailor the selected control baseline by applying specified tailoring actions.' WHERE [Requirement_Id] = 37805
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Develop system security plan for the system that: [a: WMATA System Implementation Statement]</li>
<li>i) Are consistent with the organization’s enterprise architecture; [a.i: WMATA System Implementation Statement]</li>
<li>ii) Explicitly define the constituent system components; [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Describe the operational context of the system in terms of mission and business processes; [a.iii: WMATA System Implementation Statement]</li>
<li>iv) Identify the individuals that fulfill system roles and responsibilities; [a.iv: WMATA System Implementation Statement]</li>
<li>v) Identify the information types processed, stored, and transmitted by the system; [a.v: WMATA System Implementation Statement]</li>
<li>vi) Provide the security categorization of the system, including supporting rationale; [a.vi: WMATA System Implementation Statement]</li>
<li>vii) Describe any specific threats to the system that are of concern to the organization; [a.vii: WMATA System Implementation Statement]</li>
<li>viii) Describe the operational environment for the system and any dependencies on or connections to other systems or system components; [a.viii: WMATA System Implementation Statement]</li>
<li>ix) Provide an overview of the System Security Plan (SSP) requirements for the system; [a.ix: WMATA System Implementation Statement]</li>
<li>x) Identify any relevant control baselines or overlays, if applicable; [a.x: WMATA System Implementation Statement]</li>
<li>xi) Describe the controls in place or planned for meeting the security and privacy requirements, including a rationale for any tailoring decisions; [a.xi: WMATA System Implementation Statement]</li>
<li>xii) Include risk determinations for security and privacy architecture and design decisions; [a.xii: WMATA System Implementation Statement]</li>
<li>xiii) Document and map to applicable security controls or system documentation security- and privacy-related emergency and non-emergency activities that require planning and coordination with other organizational individuals, teams, or groups to include assessments, audits, inspections, hardware and software maintenance, acquisition and supply chain risk management, patch management, and ISCP testing; and [a.xiii: WMATA System Implementation Statement]</li>
<li>xiv) Are reviewed and approved by the authorizing official or designated representative prior to plan implementation. [a.xiv: WMATA System Implementation Statement]</li>
<li>b. Distribute copies of the SSP and communicate subsequent changes to the plans to required holders; [b: WMATA System Implementation Statement]</li>
<li>c. Review the SSP annually; [c: WMATA System Implementation Statement]</li>
<li>d. Update the SSP to address changes to the system and environment of operation or problems identified during plan implementation or control assessments; and [d: WMATA System Implementation Statement]</li>
<li>e. Protect the plans from unauthorized disclosure and modification. [e: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> When systems are highly interconnected, coordinated planning is essential. A low-impact system could adversely affect a higher-impact system. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-2, AC-6, AC-14, AC-17, AC-20, CA-2, CA-3, CA-7, CM-9, CP-2, CP-4, IR-4, IR-8, MA-4, MA-5, MP-4, MP-5, PL-7, PL-8, PL-10, PL-11, PM-1, PM-7, PM-8, PM-9, PM-10R, PM-11, RA-3, RA-8, RA-9, SA-5, SA-17, SA-22, SI-12, SR-2, SR-4

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: When systems are highly interconnected, coordinated planning is essential. A low-impact system could adversely affect a higher-impact system. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>System Security and Privacy Plans</b></p>a. Develop security and privacy plans for the system that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Maintain general user rules of behavior agreement and privileged user rules of behavior agreement. [a: WMATA System Implementation Statement]</li>
<li>b. Establish and provide to individuals requiring access to the system the rules that describe their responsibilities and expected behavior for information and system usage and security; [b: WMATA System Implementation Statement]</li>
<li>c. Receive a documented acknowledgment from such individuals, indicating that they have read, understand, and agree to abide by the rules of behavior, before authorizing access to information and the system; [c: WMATA System Implementation Statement]</li>
<li>d. Review and update the rules of behavior annually; and [d: WMATA System Implementation Statement]</li>
<li>e. Require users who have acknowledged a previous version of the rules of behavior to read and re-acknowledge rules of behavior annually or when they are revised or updated. [e: WMATA System Implementation Statement]</li>
<li>f. Document in the privileged rules of behavior agreement that privileged users are authorized (and therefore, trusted) to perform security-relevant functions that ordinary users are not authorized to perform. [f: WMATA System Implementation Statement]</li>
Related Controls: AC-2, AC-6, AC-8, AC-17, AC-18, AC-19, AC-20, AT-2, AT-3, CM-11, IA-2, IA-4, IA-5, MP-7, PS-6, PS-8, SA-5, SI-12
<li>g. Security Controls Enhancement(s): [g: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Rules of Behavior</b></p>a. Establish and provide to individuals requiring access to the system, the rules that describe their responsibilities and expected behavior for information and system usage, security, and privacy;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Include in the rules of behavior restrictions on: [WMATA System Implementation Statement]

<li>(1) Use of social media, social networking sites, and external sites/applications; [1: WMATA System Implementation Statement]</li>
<li>(2) Posting organizational information on public websites; and [2: WMATA System Implementation Statement]</li>
<li>(3) Use of organization-provided identifiers (e.g., email addresses) and authentication secrets (e.g., passwords) for creating accounts on external sites/applications. [3: WMATA System Implementation Statement]</li>
Related Controls: AC-22
<li>h. Define personally acceptable use of WMATA technology. [h: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b> Social Media and External Site/application Usage Restrictions</b></p>Include in the rules of behavior, restrictions on:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Develop a Concept of Operations (CONOPS) for the system describing how the organization intends to operate the system from the perspective of information security; and [a: WMATA System Implementation Statement]</li>
<li>b. Review and update the CONOPS annually. This requirement is waived if the components of the CONOPS is fully documented within the organizational Governance, Risk, and Compliance tool. [b: WMATA System Implementation Statement]</li>
<li>c. Require an updated CONOPS, at the discretion of the AO, if there is a substantial change to the functionality of the system. [c: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Organizations need to consider documenting known operational procedures and exploring how they relate to the combination of IT and OT technologies within the environment. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: PL-2, SA-2, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Organizations need to consider documenting known operational procedures and exploring how they relate to the combination of IT and OT technologies within the environment. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Concept of Operations</b></p>a. Develop a Concept of Operations (CONOPS) for the system describing how the organization intends to operate the system from the perspective of information security and privacy; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Develop security and privacy architectures for the system that: [a: WMATA System Implementation Statement]</li>
<li>i) Describe the requirements and approach to be taken for protecting the confidentiality, integrity, and availability of organizational information; [a.i: WMATA System Implementation Statement]</li>
<li>ii) Describe the requirements and approach to be taken for processing personally identifiable information to minimize privacy risk to individuals; [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Describe how the architectures are integrated into and support the enterprise architecture; and [a.iii: WMATA System Implementation Statement]</li>
<li>iv) Describe any assumptions about, and dependencies on, external systems and services; [a.iv: WMATA System Implementation Statement]</li>
<li>b. Review and update system architectures annually, and when there is a change to the system, enterprise architecture, or enterprise security architecture; and [b: WMATA System Implementation Statement]</li>
<li>c. Reflect planned architecture changes in security plans, Concept of Operations (CONOPS), criticality analysis, organizational procedures, and procurements and acquisitions. [c: WMATA System Implementation Statement]</li>
Related Controls: CM-2, CM-6, PL-2, PL-7, PL-9, PM-5, PM-7, RA-9, SA-3, SA-5, SA-8, SA-17, SC-7
<li>i. Security Controls Enhancement(s): [i: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Security and Privacy Architectures</b></p>a. Develop security and privacy architectures for the system that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Allocates [Assignment: organization-defined controls] to [Assignment: organization-defined locations and architectural layers]; and [1: WMATA System Implementation Statement]</li>
<li>(2) Ensures that the allocated controls operate in a coordinated and mutually reinforcing manner. [2: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Defense in depth is considered a common practice for security architecture within OT environments. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: SC-2, SC-3

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Defense in depth is considered a common practice for security architecture within OT environments. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Security and Privacy Architectures | Defense in Depth</b></p>Design the security and privacy architectures for the system using a defense-in-depth approach that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Organizational common (inherited) controls and related processes shall be centrally managed. Systems shall employ to the maximum extent possible organizational common (inherited) controls and all deviations shall be approved by the AO. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> If the architecture allows, consider centrally managing flaw remediation, malicious code protection, logging, incident detection, etc. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: PL-8, PM-9

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: If the architecture allows for it, consider centrally managing flaw remediation, malicious code protection, logging, and incident detection. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Central Management</b></p>Centrally manage [Assignment: organization-defined controls and related processes].' WHERE [Requirement_Id] = 37812
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a) Develop and disseminate an organization-wide information security program plan that: [a: WMATA System Implementation Statement]</li>
<li>i) Provides an overview of the requirements for the security program and a description of the security program management controls and common controls in place or planned for meeting those requirements; [a.i: WMATA System Implementation Statement]</li>
<li>ii) Includes the identification and assignment of roles, responsibilities, management commitment, coordination among organizational entities, and compliance; [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Reflects the coordination among organizational entities responsible for information security; and [a.iii: WMATA System Implementation Statement]  </li>
<li>iv) Is approved by a senior official with responsibility and accountability for the risk being incurred to organizational operations (including mission, functions, image, and reputation), organizational assets, individuals, other organizations, and the Nation; [a.iv: WMATA System Implementation Statement]</li>
<li>b) Review and update the organization-wide information security program plan [Assignment: organization-defined frequency] and following [b: Assignment: organization-defined events]; and [WMATA System Implementation Statement]</li>
<li>c) Protect the information security program plan from unauthorized disclosure and modification.  [c: WMATA System Implementation Statement]</li>

Related Controls: PL-2, PM-18, PM-30, RA-9, SI-12, SR-2 
', [Supplemental_Info]=N'<p><b>Information Security Program Plan</b></p>a. Develop and disseminate an organization-wide information security program plan that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(a) Manage the security and privacy state of organizational systems and the environments in which those systems operate through authorization processes; [a: WMATA System Implementation Statement]</li>
<li>(b) Designate individuals to fulfill specific roles and responsibilities within the organizational risk management process; and [b: WMATA System Implementation Statement]</li>
<li>(c) Integrate the authorization processes into an organization-wide risk management program. [c: WMATA System Implementation Statement]</li>

Related Controls: CA-6, CA-7, PL-2
', [Supplemental_Info]=N'<p><b>Authorization Process</b></p>a. Manage the security and privacy state of organizational systems and the environments in which those systems operate through authorization processes;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(a) Define organizational mission and business processes with consideration for information security and privacy and the resulting risk to organizational operations, organizational assets, individuals, and other organizations; [a: WMATA System Implementation Statement]</li>
<li>(b) Determine information protection and sensitive information processing needs arising from the defined mission and business processes; and [b: WMATA System Implementation Statement]</li>
<li>(c) Review and revise the mission and business processes annually or as required. [c: WMATA System Implementation Statement]</li>

Related Controls: CP-2, PL-2, PM-7, PM-8, RA-2, RA-3, RA-9, SA-2
', [Supplemental_Info]=N'<p><b>Mission and Business Process Definition</b></p>a. Define organizational mission and business processes with consideration for information security and privacy and the resulting risk to organizational operations, organizational assets, individuals, other organizations, and the Nation; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement an insider threat program that includes a cross-discipline insider threat incident handling team. [WMATA System Implementation Statement]

Related Controls: AC-6, AT-2, AU-6, AU-7, AU-10, AU-12, CA-7, IA-4, IR-4, MP-7, PE-2, PM-14, PM-16, PS-3, PS-4, PS-5, PS-7, PS-8, SC-7, SI-4
', [Supplemental_Info]=N'<p><b>Insider Threat Program</b></p>Implement an insider threat program that includes a cross-discipline insider threat incident handling team.' WHERE [Requirement_Id] = 37816
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Establish a security and privacy workforce development and improvement program. [WMATA System Implementation Statement]

Related Controls: AT-2, AT-3
', [Supplemental_Info]=N'<p><b>Security and Privacy Workforce</b></p>Establish a security and privacy workforce development and improvement program.' WHERE [Requirement_Id] = 37817
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a) Implement a process for ensuring that organizational plans for conducting security and privacy testing, training, and monitoring activities associated with organizational systems: [a: WMATA System Implementation Statement]</li>
<li>i) Are developed and maintained; and [a.i: WMATA System Implementation Statement]</li>
<li>ii) Continue to be executed; and [a.ii: WMATA System Implementation Statement]</li>
<li>b) Review testing, training, and monitoring plans for consistency with the organizational risk management strategy and organization-wide priorities for risk response actions. [b: WMATA System Implementation Statement]</li>

Related Controls: AT-2, AT-3, CA-7, CP-4, IR-3, PM-12, SI-4
', [Supplemental_Info]=N'<p><b>Testing, Training, and Monitoring</b></p>a. Implement a process for ensuring that organizational plans for conducting security and privacy testing, training, and monitoring activities associated with organizational systems:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Establish and institutionalize contact with selected groups and associations within the security and privacy communities: [WMATA System Implementation Statement]

<li>a) To facilitate ongoing security and privacy education and training for organizational personnel; [a: WMATA System Implementation Statement]</li>
<li>b) To maintain currency with recommended security and privacy practices, techniques, and technologies; and [b: WMATA System Implementation Statement]</li>
<li>c) To share current security and privacy information, including threats, vulnerabilities, and incidents. [c: WMATA System Implementation Statement] </li>

<b><u>OT Systems Only:</u></b> Organizations should be familiar with relevant security-focused and industry-specific groups or associations, including government sector specific agencies (SSAs), information sharing and analysis centers (ISAC), and industry trade organizations. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: SA-11, SI-5

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Organizations should be familiar with relevant security-focused and industryspecific groups or associations, including government sector-specific agencies (SSAs), Information Sharing and Analysis Centers (ISACs), and industry trade organizations. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Security and Privacy Groups and Associations</b></p>Establish and institutionalize contact with selected groups and associations within the security and privacy communities:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement a threat awareness program that includes a cross-organization information-sharing capability for threat intelligence; suitable for addressing policy directives satisfying CISA data reporting standards. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> The organization should collaborate and share information about potential incidents on a timely basis. CISA serves as a centralized location where operational elements involved in cybersecurity and communications reliance are coordinated and integrated. Organizations should consider having both an unclassified and classified information sharing capability. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: IR-4, PM-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The organization should collaborate and share information about potential incidents on a timely basis. CISA serves as a centralized location where operational elements involved in cybersecurity and communications reliance are coordinated and integrated. Organizations should consider having both an unclassified and classified information sharing capability. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Threat Awareness Program</b></p>Implement a threat awareness program that includes a cross-organization information-sharing capability for threat intelligence.' WHERE [Requirement_Id] = 37820
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(i) Employ automated mechanisms to maximize the effectiveness of sharing threat intelligence information. [WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b> Automated Means for Sharing Threat Intelligence</b></p>Employ automated mechanisms to maximize the effectiveness of sharing threat intelligence information.' WHERE [Requirement_Id] = 37821
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a) Establish policy and procedures to ensure that requirements for the protection of controlled unclassified information that is processed, stored or transmitted on external systems, are implemented in accordance with applicable laws, executive orders, directives, policies, regulations, and standards; and [a: WMATA System Implementation Statement]</li>
<li>b) Review and update the policy and procedures [Assignment: organization-defined frequency]. [b: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> This control applies to federal organizations and other organizations supporting the government that process Controlled Unclassified Information (CUI). [OT Systems Only: WMATA System Implementation Statement]

Related Controls: CA-6, PM-10

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: This control applies to federal agencies and other organizations that support the Government and process controlled unclassified information (CUI). [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Protecting Controlled Unclassified Information on External Systems</b></p>a. Establish policy and procedures to ensure that requirements for the protection of controlled unclassified information that is processed, stored or transmitted on external systems, are implemented in accordance with applicable laws, executive orders, directives, policies, regulations, and standards; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a) Develop and disseminate an organization-wide privacy program plan that provides an overview of the agency’s privacy program, and: [a: WMATA System Implementation Statement]</li>
<li>i) Includes a description of the structure of the privacy program and the resources dedicated to the privacy program; [a.i: WMATA System Implementation Statement]</li>
<li>ii) Provides an overview of the requirements for the privacy program and a description of the privacy program management controls and common controls in place or planned for meeting those requirements; [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Includes the role of the senior agency official for privacy and the identification and assignment of roles of other privacy officials and staff and their responsibilities; [a.iii: WMATA System Implementation Statement]</li>
<li>iv) Describes management commitment, compliance, and the strategic goals and objectives of the privacy program; [a.iv: WMATA System Implementation Statement]</li>
<li>v) Reflects coordination among organizational entities responsible for the different aspects of privacy; and [a.v: WMATA System Implementation Statement]</li>
<li>vi) Is approved by a senior official with responsibility and accountability for the privacy risk being incurred to organizational operations (including mission, functions, image, and reputation), organizational assets, individuals, other organizations, and the Nation; and [a.vi: WMATA System Implementation Statement]</li>
<li>b) Update the plan [Assignment: organization-defined frequency] and to address changes in federal privacy laws and policy and organizational changes and problems identified during plan implementation or privacy control assessments. [b: WMATA System Implementation Statement]</li>

Related Controls: PM-8, PM-9, PM-19
', [Supplemental_Info]=N'<p><b>Privacy Program Plan</b></p>a. Develop and disseminate an organization-wide privacy program plan that provides an overview of the agency’s privacy program, and:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Appoint a senior agency official for privacy with the authority, mission, accountability, and resources to coordinate, develop, and implement, applicable privacy requirements and manage privacy risks through the organization-wide privacy program. [WMATA System Implementation Statement]

Related Controls: PM-18, PM-20, PM-23, PM-24, PM-27
', [Supplemental_Info]=N'<p><b>Privacy Program Leadership Role</b></p>Appoint a senior agency official for privacy with the authority, mission, accountability, and resources to coordinate, develop, and implement, applicable privacy requirements and manage privacy risks through the organization-wide privacy program.' WHERE [Requirement_Id] = 37824
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Appoint a senior agency information security officer with the mission and resources to coordinate, develop, implement, and maintain an organization-wide information security program. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Information Security Program Leadership Role</b></p>Appoint a senior agency information security officer with the mission and resources to coordinate, develop, implement, and maintain an organization-wide information security program.' WHERE [Requirement_Id] = 37825
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Maintain a central resource webpage on the organization’s principal public website that serves as a central source of information about the organization’s privacy program and that: [WMATA System Implementation Statement]

<li>a) Ensures that the public has access to information about organizational privacy activities and can communicate with its senior agency official for privacy; [a: WMATA System Implementation Statement]</li>
<li>b) Ensures that organizational privacy practices and reports are publicly available; and [b: WMATA System Implementation Statement]</li>
<li>c) Employs publicly facing email addresses and/or phone lines to enable the public to provide feedback and/or direct questions to privacy offices regarding privacy practices. [c: WMATA System Implementation Statement]</li>

Related Controls: AC-3, PM-19, PT-5, PT-6, PT-7, RA-8
', [Supplemental_Info]=N'<p><b>Dissemination of Privacy Program Information</b></p>Maintain a central resource webpage on the organization’s principal public website that serves as a central source of information about the organization’s privacy program and that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a) Develop and maintain an accurate accounting of disclosures of personally identifiable information, including: [a: WMATA System Implementation Statement]</li>
<li>i) Date, nature, and purpose of each disclosure; and [a.i: WMATA System Implementation Statement]</li>
<li>ii) Name and address, or other contact information of the individual or organization to which the disclosure was made; [a.ii: WMATA System Implementation Statement]</li>
<li>b) Retain the accounting of disclosures for the length of the time the personally identifiable information is maintained or five years after the disclosure is made, whichever is longer; and [b: WMATA System Implementation Statement]</li>
<li>c) Make the accounting of disclosures available to the individual to whom the personally identifiable information relates upon request. [c: WMATA System Implementation Statement]</li>

Related Controls: AC-3, AU-2, PT-2
', [Supplemental_Info]=N'<p><b>Accounting of Disclosures</b></p>a. Develop and maintain an accurate accounting of disclosures of personally identifiable information, including:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a) Develop and document organization-wide policies and procedures for: [a: WMATA System Implementation Statement]</li>
<li>i) Reviewing for the accuracy, relevance, timeliness, and completeness of personally identifiable information across the information life cycle; [a.i: WMATA System Implementation Statement]</li>
<li>ii) Correcting or deleting inaccurate or outdated personally identifiable information; [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Disseminating notice of corrected or deleted personally identifiable information to individuals or other appropriate entities; and [a.iii: WMATA System Implementation Statement]</li>
<li>iv) Appeals of adverse decisions on correction or deletion requests. [a.iv: WMATA System Implementation Statement]</li>

Related Controls: PM-23, SI-18
', [Supplemental_Info]=N'<p><b>Personally Identifiable Information Quality Management</b></p>Develop and document organization-wide policies and procedures for:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(a) Establish a Data Governance Body minimally consisting of Chief Digital Officer and Chief Information Security Officer with responsibility for: [a: WMATA System Implementation Statement]</li>
<li>(1) Establishing policies, procedures, and standards that facilitate data governance so that data, including PII, is effectively managed and maintained in accordance with applicable laws, executive orders, directives, regulations, policies, standards, and guidance; and [1: WMATA System Implementation Statement]</li>
<li>(2) Developing and implementing guidelines that support data modeling, quality, integrity, and the de-identification needs of PII across the information life cycle as well as reviewing and approving applications to release data outside of the organization, archiving the applications and the released data, and performing post-release monitoring to ensure that the assumptions made as part of the data release continue to be valid. [2: WMATA System Implementation Statement]</li>

Related Controls: AT-2, AT-3, PM-19, PM-22, PM-24, PT-7, SI-4, SI-19
', [Supplemental_Info]=N'<p><b>Data Governance Body</b></p>Establish a Data Governance Body consisting of [Assignment: organization-defined roles] with [Assignment: organization-defined responsibilities].' WHERE [Requirement_Id] = 37829
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Establish a Data Integrity Board to: [WMATA System Implementation Statement]

<li>a) Review proposals to conduct or participate in a matching program; and [a: WMATA System Implementation Statement]</li>
<li>b) Conduct an annual review of all matching programs in which the agency has participated. [b: WMATA System Implementation Statement]</li>

Related Controls: AC-4, PM-19, PM-23, PT-2, PT-8
', [Supplemental_Info]=N'<p><b>Data Integrity Board</b></p>Establish a Data Integrity Board to:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement a process for receiving and responding to complaints, concerns, or questions from individuals about the organizational security and privacy practices that includes: [WMATA System Implementation Statement]

<li>a) Develop, document, and implement policies and procedures that address the use of personally identifiable information for internal testing, training, and research; [a: WMATA System Implementation Statement]</li>
<li>b) Limit or minimize the amount of personally identifiable information used for internal testing, training, and research purposes; [b: WMATA System Implementation Statement]</li>
<li>c) Authorize the use of personally identifiable information when such information is required for internal testing, training, and research; and [c: WMATA System Implementation Statement]</li>
<li>d) Review and update policies and procedures [d: Assignment: organization-defined frequency]. [WMATA System Implementation Statement]</li>

Related Controls: PM-23, PT-3, SA-3, SA-8, SI-12
', [Supplemental_Info]=N'<p><b>Minimization of Personally Identifiable Information Used in Testing, Training, and Research</b></p>a. Develop, document, and implement policies and procedures that address the use of personally identifiable information for internal testing, training, and research;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement a process for receiving and responding to complaints, concerns, or questions from individuals about the organizational security and privacy practices that includes: [WMATA System Implementation Statement]

<li>a) Mechanisms that are easy to use and readily accessible by the public; [a: WMATA System Implementation Statement]</li>
<li>b) All information necessary for successfully filing complaints; [b: WMATA System Implementation Statement]</li>
<li>c) Tracking mechanisms to ensure all complaints received are reviewed and addressed within [Assignment: organization-defined time period]; [c: WMATA System Implementation Statement]</li>
<li>d) Acknowledgement of receipt of complaints, concerns, or questions from individuals within [Assignment: organization-defined time period]; and [d: WMATA System Implementation Statement]</li>
<li>e) Response to complaints, concerns, or questions from individuals within [Assignment: organization-defined time period]. [e: WMATA System Implementation Statement]</li>

Related Controls: IR-7, IR-9, PM-22, SI-18
', [Supplemental_Info]=N'<p><b>Complaint Management</b></p>Implement a process for receiving and responding to complaints, concerns, or questions from individuals about the organizational security and privacy practices that includes:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Develop [Assignment: organization-defined privacy reports] and disseminate to: [WMATA System Implementation Statement]

<li>a) [Assignment: organization-defined oversight bodies] to demonstrate accountability with statutory, regulatory, and policy privacy mandates; and [a: WMATA System Implementation Statement]</li>
<li>b) [Assignment: organization-defined officials] and other personnel with responsibility for monitoring privacy program compliance; and [b: WMATA System Implementation Statement]</li>
<li>c) Review and update privacy reports [Assignment: organization-defined frequency]. [c: WMATA System Implementation Statement]</li>

Related Controls: IR-9, PM-19
', [Supplemental_Info]=N'<p><b>Privacy Reporting</b></p>a. Develop [Assignment: organization-defined privacy reports] and disseminate to:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(a) Identify and document: [a: WMATA System Implementation Statement]</li>
<li>(1) Assumptions affecting risk assessments, risk responses, and risk monitoring; [a.1: WMATA System Implementation Statement]</li>
<li>(2) Constraints affecting risk assessments, risk responses, and risk monitoring; [a.2: WMATA System Implementation Statement]</li>
<li>(3) Priorities and trade-offs considered by the organization for managing risk; and [a.3: WMATA System Implementation Statement]</li>
<li>(4) Organizational risk tolerance; [a.4: WMATA System Implementation Statement]</li>
<li>(b) Distribute the results of risk framing activities to organizational personnel, including mission and business owners, information owners or stewards, system owners, the authorizing official, Chief Information Security Officer, and Chief Risk Officer; and [b: WMATA System Implementation Statement]</li>
<li>(c) Review and update risk framing considerations annually. [c: WMATA System Implementation Statement]</li>

Related Controls: CA-7, PM-9, RA-3, RA-7
', [Supplemental_Info]=N'<p><b>Risk Framing</b></p>a. Identify and document:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(a) Designate an Authorizing Official to align organizational information security and privacy management processes with strategic, operational, and budgetary planning processes; and [a: WMATA System Implementation Statement]</li>
<li>(i) Appoint a Senior Accountable Official for Risk Management to align organizational information security and privacy management processes with strategic, operational, and budgetary planning processes; and [a.i: WMATA System Implementation Statement]</li>
<li>(b) Designate a Chief Risk Officer to view and analyze risk from an organization-wide perspective and ensure management of risk is consistent across the organization. [b: WMATA System Implementation Statement]</li>
<li>(i) Establish a Risk Executive (function) to view and analyze risk from an organization-wide perspective and ensure management of risk is consistent across the organization. [b.i: WMATA System Implementation Statement]</li>
	
Related Controls: PM-2, PM-19
', [Supplemental_Info]=N'<p><b>Risk Management Program Leadership Roles</b></p>a. Appoint a Senior Accountable Official for Risk Management to align organizational information security and privacy management processes with strategic, operational, and budgetary planning processes; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a) Include the resources needed to implement the information security and privacy programs in capital planning and investment requests and document all exceptions to this requirement; [a: WMATA System Implementation Statement]</li>
<li>b) Prepare documentation required for addressing information security and privacy programs in capital planning and investment requests in accordance with applicable laws, executive orders, directives, policies, regulations, standards; and [b: WMATA System Implementation Statement]</li>
<li>c) Make available for expenditure, the planned information security and privacy resources.  [c: WMATA System Implementation Statement]</li>

Related Controls: PM-4, SA-2
', [Supplemental_Info]=N'<p><b>Information Security and Privacy Resources</b></p>a. Include the resources needed to implement the information security and privacy programs in capital planning and investment requests and document all exceptions to this requirement;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(a) Develop an organization-wide strategy for managing supply chain risks associated with the development, acquisition, maintenance, and disposal of systems, system components, and system services; [a: WMATA System Implementation Statement]</li>
<li>(b) Implement the supply chain risk management strategy consistently across the organization; [b: WMATA System Implementation Statement]</li>
<li>(c) Review and update the supply chain risk management strategy annually or as required, to address organizational changes; and [c: WMATA System Implementation Statement]</li>
<li>(d) Align all cybersecurity related supply chain risk management strategy to the Chief Information Security Officer and incorporate cybersecurity requirements into the enterprise supply chain risk management strategy as determined by the Chief Information Security Officer: [d: WMATA System Implementation Statement]</li>

Related Controls: CM-10, PM-9, SR-1, SR-2, SR-3, SR-4, SR-5, SR-6, SR-7, SR-8, SR-9, SR-11
', [Supplemental_Info]=N'<p><b>Supply Chain Risk Management Strategy</b></p>a. Develop an organization-wide strategy for managing supply chain risks associated with the development, acquisition, maintenance, and disposal of systems, system components, and system services;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(i) Identify, prioritize, and assess suppliers of critical or mission-essential technologies, products, and services. [WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b> Suppliers of Critical or Mission-essential Items</b></p>Identify, prioritize, and assess suppliers of critical or mission-essential technologies, products, and services.' WHERE [Requirement_Id] = 37838
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Develop an organization-wide continuous monitoring strategy and implement continuous monitoring programs that include: [WMATA System Implementation Statement]

<li>(a) Establishing the following organization-wide metrics to be monitored: [a: WMATA System Implementation Statement]</li>
<li>(1) Scan coverage; [a.1: WMATA System Implementation Statement]</li>
<li>(2) Vulnerability management; [a.2: WMATA System Implementation Statement]</li>
<li>(3) Incident management; [a.3: WMATA System Implementation Statement]</li>
<li>(4) Patch management; [a.4: WMATA System Implementation Statement]</li>
<li>(5) Configuration management; [a.5: WMATA System Implementation Statement]</li>
<li>(6) Change management; [a.6: WMATA System Implementation Statement]</li>
<li>(7) Application security; [a.7: WMATA System Implementation Statement]</li>
<li>(8) Financial metrics; [a.8: WMATA System Implementation Statement]</li>
<li>(9) IT awareness and training; [a.9: WMATA System Implementation Statement]</li>
<li>(b) Establishing control review frequencies for monitoring and document such frequencies in policy and review continuous monitoring requirements annually for assessment of control effectiveness; [b: WMATA System Implementation Statement]</li>
<li>(c) Ongoing monitoring of organizationally defined metrics in accordance with the continuous monitoring strategy; [c: WMATA System Implementation Statement]</li>
<li>(d) Correlation and analysis of information generated by control assessments and monitoring; [d: WMATA System Implementation Statement]</li>
<li>(e) Response actions to address results of the analysis of control assessment and monitoring information; and [e: WMATA System Implementation Statement]</li>
<li>(f) Reporting the security and privacy status of organizational systems to executive management and the board of directors quarterly. [f: WMATA System Implementation Statement]</li>

Related Controls: AC-2, AC-6, AC-17, AT-4, AU-6, CA-2, CA-5, CA-6, CA-7, CM-3, CM-4, CM-6, CM-11, IA-5, IR-5, MA-2, MA-3, MA-4, PE-3, PE-6, PE-14, PE-16, PL-2, PM-4, PM-6, PM-9, PM-10, PM-12, PM-14, PM-23, PM-28, PS-7, PT-7, RA-3, RA-5, RA-7, SA-9, SA-11, SC-5, SC-7, SC-18, SI-3, SI-4, SI-12, SR-2, SR-4
', [Supplemental_Info]=N'<p><b>Continuous Monitoring Strategy</b></p>Develop an organization-wide continuous monitoring strategy and implement continuous monitoring programs that include:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Analyze systems categorized by Digital Modernization Cyber Security as critical to supporting mission essential services or functions to ensure that the information resources are being used consistent with their intended purpose.  [WMATA System Implementation Statement]

Related Controls: CA-7, PL-2, RA-3, RA-9
', [Supplemental_Info]=N'<p><b>Purposing</b></p>Analyze [Assignment: organization-defined systems or systems components] supporting mission essential services or functions to ensure that the information resources are being used consistent with their intended purpose.' WHERE [Requirement_Id] = 37840
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a) Implement a process to ensure that plans of action and milestones for the information security, privacy, and supply chain risk management programs and associated organizational systems: [a: WMATA System Implementation Statement]</li>
<li>i) Are developed and maintained; [a.i: WMATA System Implementation Statement]</li>
<li>ii) Document the remedial information security, privacy, and supply chain risk management actions to adequately respond to risk to organizational operations and assets, individuals, other organizations, and the Nation; and [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Are reported in accordance with established reporting requirements. [a.iii: WMATA System Implementation Statement]</li>
<li>b) Review plans of action and milestones for consistency with the organizational risk management strategy and organization-wide priorities for risk response actions. [b: WMATA System Implementation Statement]</li>

Related Controls: CA-5, CA-7, PM-3, RA-7, SI-12
', [Supplemental_Info]=N'<p><b>Plan of Action and Milestones Process</b></p>a. Implement a process to ensure that plans of action and milestones for the information security, privacy, and supply chain risk management programs and associated organizational systems:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(a) Develop and update quarterly an inventory of organizational systems. [WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>System Inventory</b></p>Develop and update [Assignment: organization-defined frequency] an inventory of organizational systems.' WHERE [Requirement_Id] = 37842
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(i) Establish, maintain, and update quarterly inventory of all systems, applications, and projects that process sensitive information. [WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b> Inventory of Personally Identifiable Information</b></p>Establish, maintain, and update [Assignment: organization-defined frequency] an inventory of all systems, applications, and projects that process personally identifiable information.' WHERE [Requirement_Id] = 37843
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Develop, monitor, and report on the results of information security and privacy measures of performance. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Measures of Performance</b></p>Develop, monitor, and report on the results of information security and privacy measures of performance.' WHERE [Requirement_Id] = 37844
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Develop and maintain an enterprise architecture with consideration for information security, privacy, and the resulting risk to organizational operations and assets, individuals, other organizations, and the Nation. [WMATA System Implementation Statement]

Related Controls: AU-6, PL-2, PL-8, PM-11, RA-2, SA-3, SA-8, SA-17
', [Supplemental_Info]=N'<p><b>Enterprise Architecture</b></p>Develop and maintain an enterprise architecture with consideration for information security, privacy, and the resulting risk to organizational operations and assets, individuals, other organizations, and the Nation.' WHERE [Requirement_Id] = 37845
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(i) Offload printing, copying, or any non-essential functions or services to other systems, system components, or an external provider. Non-essential functions or services are those which, whenever feasible, are not co-located with the functions or services that support essential mission or business functions. Maintaining such functions on the same system or system component increases the attack surface of the organization’s mission-essential functions or services. [WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b> Offloading</b></p>Offload [Assignment: organization-defined non-essential functions or services] to other systems, system components, or an external provider.' WHERE [Requirement_Id] = 37846
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Address information security and privacy issues in the development, documentation, and updating of a critical infrastructure and key resources protection plan. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Organizations should be familiar with protection requirements and guidance defined by executive orders, government sector specific agencies (SSAs), and industry trade organizations. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: CP-2, CP-4, PE-18, PL-2, PM-9, PM-11, PM-18, RA-3, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Organizations should be familiar with the protection requirements and guidance defined by Executive Orders, government sector-specific agencies (SSAs), and industry trade organizations. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Critical Infrastructure Plan</b></p>Address information security and privacy issues in the development, documentation, and updating of a critical infrastructure and key resources protection plan.' WHERE [Requirement_Id] = 37847
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a) Develops a comprehensive strategy to manage: [a: WMATA System Implementation Statement]</li>
<li>i) Security risk to organizational operations and assets, individuals, other organizations, and the Nation associated with the operation and use of organizational systems; and [a.i: WMATA System Implementation Statement]</li>
<li>ii) Privacy risk to individuals resulting from the authorized processing of personally identifiable information; [a.ii: WMATA System Implementation Statement]</li>
<li>b) Implement the risk management strategy consistently across the organization; and [b: WMATA System Implementation Statement]</li>
<li>c) Review and update the risk management strategy [Assignment: organization-defined frequency] or as required, to address organizational changes. [c: WMATA System Implementation Statement]</li>

Related Controls: AC-1, AT-1, AU-1, CA-1, CA-2, CA-5, CA-6, CA-7, CM-1, CP-1, IA-1, IR-1, MA-1, MP-1, PE-1, PL-1, PL-2, PM-2, PM-8, PM-18, PM-28, PM-30, PS-1, PT-1, PT-2, PT-3, RA-1, RA-3, RA-9, SA-1, SA-4, SC-1, SI-1, SI-12, SR-1, SR-2
', [Supplemental_Info]=N'<p><b>Risk Management Strategy</b></p>a. Develops a comprehensive strategy to manage:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Reference P/I 15.28 Cybersecurity Policy for requirements. [WMATA System Implementation Statement]

Related Controls: PM-9, PS-8, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The policy specifically addresses the unique properties and requirements of OT and the relationship to non-OT systems. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Personnel Security Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Assign a risk designation to all organizational positions; [a: WMATA System Implementation Statement]</li>
<li>b. Establish screening criteria for individuals filling those positions; and [b: WMATA System Implementation Statement]</li>
<li>c. Review and update position risk designations annually. [c: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Private organizations should utilize existing sector specific regulations, laws, policy, or guidance for determining appropriate risk designations for positions. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-5, AT-3, PE-2, PE-3, PL-2, PS-3, PS-6, SA-5, SA-21, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Private organizations should utilize existing sector-specific regulations, laws, policy, and guidance for determining appropriate risk designations for positions. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Position Risk Designation</b></p>a. Assign a risk designation to all organizational positions;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Determine screening tiers and requirements based on the sensitivity of the position; [a: WMATA System Implementation Statement]</li>
<li>b. Screen individuals prior to authorizing access to the system; [b: WMATA System Implementation Statement]</li>
<li>c. Rescreen individuals every five years; [c: WMATA System Implementation Statement]</li>
<li>d. Conduct continuous screening for defined factors for sensitive positions; and [d: WMATA System Implementation Statement]</li>
<li>e. Notify employees of screening criteria, and when updates are made to the screening criteria, prior to screening. [e: WMATA System Implementation Statement]</li>

Related Controls: AC-2, IA-4, MA-5, PE-2, PM-12, PS-2, PS-6, PS-7, SA-21
', [Supplemental_Info]=N'<p><b>Personnel Screening</b></p>a. Screen individuals prior to authorizing access to the system; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Upon termination of individual employment: [WMATA System Implementation Statement]

<li>a. Provide appropriate notification and disable physical and logical access to all systems in accordance with: [a: WMATA System Implementation Statement]</li>
<li>i) Control 3.1 Access Control, Section 2, “AC-2 Account Management"; [a.i: WMATA System Implementation Statement]</li>
<li>ii) Control 3.1 Access Control, Section 2, (l), (iii), “AC-2 (3) Disable Accounts”; [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Control 3.1 Access Control, Section 2, (l), (viii), “AC-2 (13) Disable Accounts for High-Risk Individuals”; and [a.iii: WMATA System Implementation Statement]</li>
<li>iv) P/I 7.3.3 Separation from Employment Policy. [a.iv: WMATA System Implementation Statement]</li>
<li>b. Terminate or revoke any authenticators and credentials associated with the individual; [b: WMATA System Implementation Statement]</li>
<li>c. Conduct exit interviews that include a discussion of: [c: WMATA System Implementation Statement]</li>
<li>i) The security constraints imposed by being former employees; [c.i: WMATA System Implementation Statement]</li>
<li>ii) Receipt/retrieval and accountability of system-related property; [c.ii: WMATA System Implementation Statement]</li>
<li>iii) Reminders of NDAs and potential limitations on future employment; and [c.iii: WMATA System Implementation Statement]</li>
<li>iv) Sensitive personnel matters for involuntary separations in accordance with P/I 7.3.3 Separation from Employment Policy. [c.iv: WMATA System Implementation Statement]</li>
<li>d. Retrieve all security-related organizational system-related property. System property includes hardware authentication tokens, system administration technical manuals, keys, identification cards, and building passes; [d: WMATA System Implementation Statement]</li>
<li>e. Retrieve all organizational information and property in accordance with P/I 7.3.3 Separation from Employment Policy; and [e: WMATA System Implementation Statement]</li>
<li>f. Retain access to organizational information and systems formerly controlled by terminated individual. [f: WMATA System Implementation Statement]</li>
Related Controls: AC-2, IA-4, PE-2, PM-12, PS-6, PS-7
<li>g. Security Controls Enhancement(s): [g: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Personnel Termination</b></p>Upon termination of individual employment:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Use automated mechanisms to both notify personnel or roles of individual termination actions and to disable access to system resources. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Automated Actions</b></p>Use [Assignment: organization-defined automated mechanisms] to [Selection (one or more): notify [Assignment: organization-defined personnel or roles] of individual termination actions; disable access to system resources].' WHERE [Requirement_Id] = 37853
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Review and confirm ongoing operational need for current logical and physical access authorizations to systems and facilities when individuals are reassigned or transferred to other positions within the organization; [a: WMATA System Implementation Statement]</li>
<li>b. Initiate transfer or reassignment actions prior to the transfer date; [b: WMATA System Implementation Statement]</li>
<li>c. Modify access authorization as needed to correspond with any changes in operational need due to reassignment or transfer; and [c: WMATA System Implementation Statement]</li>
<li>d. Notify required stakeholders prior to the transfer date. [d: WMATA System Implementation Statement]</li>

Related Controls: AC-2, IA-4, PE-2, PM-12, PS-4, PS-7
', [Supplemental_Info]=N'<p><b>Personnel Transfer</b></p>a. Review and confirm ongoing operational need for current logical and physical access authorizations to systems and facilities when individuals are reassigned or transferred to other positions within the organization;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Develop and document access agreements for organizational systems; [a: WMATA System Implementation Statement]</li>
<li>b. Review and update the access agreements to include NDAs, acceptable use agreements, rules of behavior (RoB), and conflict-of-interest agreements annually, and in accordance with: [b: WMATA System Implementation Statement]</li>
<li>i) Control 3.15 Planning, Section 3, “PL-4 Rules of Behavior”; and [b.i: WMATA System Implementation Statement]</li>
<li>ii) Control 3.1 Access Control, Section 8, “AC-8 System Use Notification”. [b.ii: WMATA System Implementation Statement]</li>
<li>c. Verify that individuals requiring access to organizational information and systems: [c: WMATA System Implementation Statement]</li>
<li>i) Sign appropriate access agreements prior to being granted access; and [c.i: WMATA System Implementation Statement]</li>
<li>ii) Re-sign access agreements to maintain access to organizational systems annually and when access agreements have been updated. [c.ii: WMATA System Implementation Statement]</li>

Related Controls: AC-8, AC-17, PE-2, PL-4, PS-2, PS-3, PS-6, PS-7, PS-8, SA-21, SI-12
', [Supplemental_Info]=N'<p><b>Access Agreements</b></p>a. Develop and document access agreements for organizational systems;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Establish personnel security requirements, including security roles and responsibilities for external providers; [a: WMATA System Implementation Statement]</li>
<li>b. Require external providers to comply with personnel security policies and procedures established by the organization; [b: WMATA System Implementation Statement]</li>
<li>c. Document personnel security requirements; [c: WMATA System Implementation Statement]</li>
<li>d. External providers shall notify Contract Administrator (CA)/Contracting Officer''s Technical Representative (COTRs) and required stakeholders of any personnel transfers or terminations of external personnel who possess organizational credentials and/or badges or who have system privileges immediately unless otherwise specified in: [d: WMATA System Implementation Statement]</li>
<li>i) Control 3.1 Access Control, Section 2, “AC-2 Account Management"; [d.i: WMATA System Implementation Statement]</li>
<li>ii) P/I 7.2.2 Recruitment and Hiring Policy; and [d.ii: WMATA System Implementation Statement]</li>
<li>iii) P/I 7.3.3 Separation from Employment Policy. [d.iii: WMATA System Implementation Statement]</li>
<li>e. Monitor provider compliance with personnel security requirements. [e: WMATA System Implementation Statement]</li>

Related Controls: AC-2, AT-2, AT-3, MA-5, PE-3, PS-2, PS-3, PS-4, PS-5, PS-6, SA-5, SA-9, SA-21
', [Supplemental_Info]=N'<p><b>External Personnel Security</b></p>a. Establish personnel security requirements, including security roles and responsibilities for external providers;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Employ a formal sanctions process for individuals failing to comply with established security and privacy policies and procedures; and [a: WMATA System Implementation Statement]</li>
<li>b. Notify the CA and COTR regarding external provider actions and notify appropriate stakeholders based on the nature of the infraction within 24 hours (or less if directed by other policy) when a formal employee sanctions process is initiated, identifying the individual sanctioned and the reason for the sanction. [b: WMATA System Implementation Statement]</li>

Related Controls: All XX-1 Controls, PL-4, PM-12, PS-6, PT-1
', [Supplemental_Info]=N'<p><b>Personnel Sanctions</b></p>a. Employ a formal sanctions process for individuals failing to comply with established information security and privacy policies and procedures; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Incorporate security and privacy roles and responsibilities into organizational position descriptions, as applicable. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Position Descriptions</b></p>Incorporate security and privacy roles and responsibilities into organizational position descriptions.' WHERE [Requirement_Id] = 37858
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Reference P/I 15.28 Cybersecurity Policy for requirements. [WMATA System Implementation Statement] 

This control family does not apply to the activities of the Privacy Administrator described in P/I 9.2 Privacy Policy or the PARP Administrator described in P/I 9.3 Public Access to Records Policy. 
', [Supplemental_Info]=N'<p><b>Personally Identifiable Information Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Document all storage, processing, and transmission (includes, but is not limited to, the creation, collection, use, processing, storage, maintenance, dissemination, disclosure, disposal, logging, generation, transformation, analysis, replication, and data mining) of sensitive information in System Security Plan (SSP); [a: WMATA System Implementation Statement]</li>
<li>b. Obtain approval for the processing of sensitive information as documented in SSP in accordance with Control 3.15 Planning, Section 2, “PL-2 System Security Plans”; [b: WMATA System Implementation Statement]</li>
<li>c. Restrict the storage, processing, transmission, and replication of sensitive information to only what is authorized in the SSP; and [c: WMATA System Implementation Statement]</li>
<li>d. Ensure all sensitive information is encrypted in storage and in transit, in accordance with: [d: WMATA System Implementation Statement]</li>
<li>i) Control 3.17, System and Communications Protection, Section 7, (i), “SC-8 (1) Cryptographic Protection”; Section 10, “SC-13 Cryptographic Protection”; Section 19, (i), “SC-28 (1) Cryptographic Protection”; and [d.i: WMATA System Implementation Statement]</li>
<li>ii) Control 3.5 Contingency Planning, Section 8, “CP-9 System Backup” and (d), (v), “CP-9</li>
<li>(8) Cryptographic Protection”. [d.ii: WMATA System Implementation Statement]</li>

Related Controls: AC-2, AC-3, IR-9, PM-9, PM-24, PT-1, PT-3, PT-5, PT-6, RA-3, RA-8, SI-12, SI-18
', [Supplemental_Info]=N'<p><b>Authority to Process Personally Identifiable Information</b></p>a. Determine and document the [Assignment: organization-defined authority] that permits the [Assignment: organization-defined processing] of personally identifiable information; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Attach data tags containing [Assignment: organization-defined authorized processing] to [Assignment: organization-defined elements of personally identifiable information]. [WMATA System Implementation Statement]

Related Controls: AC-16, CA-6, CM-12, PM-5, PM-22, PT-4, SC-16, SC-43, SI-10, SI-15, SI-19
', [Supplemental_Info]=N'<p><b> Data Tagging</b></p>Attach data tags containing [Assignment: organization-defined authorized processing] to [Assignment: organization-defined elements of personally identifiable information].' WHERE [Requirement_Id] = 37861
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Manage enforcement of the authorized processing of personally identifiable information using [Assignment: organization-defined automated mechanisms]. [WMATA System Implementation Statement]

Related Controls: CA-6, CM-12, PM-5, PM-22, PT-4, SC-16, SC-43, SI-10, SI-15, SI-19
', [Supplemental_Info]=N'<p><b> Automation</b></p>Manage enforcement of the authorized processing of personally identifiable information using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37862
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Identify and document the approved reasons for processing sensitive information; [a: WMATA System Implementation Statement]</li>
<li>b. Restrict the storage, processing, and transmission of sensitive information to only that which is compatible with the identified purpose(s); [b: WMATA System Implementation Statement]</li>
<li>c. Monitor changes in processing sensitive information and implement mechanisms to ensure any changes are made in accordance with defined requirements to allow or restrict new processing, as appropriate. Mechanisms may include obtaining consent from individuals or other measures to manage privacy risks that arise from changes in sensitive information processing purposes; and [c: WMATA System Implementation Statement]</li>
<li>d. All existing uses of sensitive information are subject to review and reauthorization or restriction. [d: WMATA System Implementation Statement]</li>

Related Controls: AC-2, AC-3, AT-3, IR-9, PM-9, PM-25, PT-2, PT-5, PT-6, PT-7, RA-8, SI-12, SI-18
', [Supplemental_Info]=N'<p><b>Personally Identifiable Information Processing Purposes</b></p>a. Identify and document the [Assignment: organization-defined purpose(s)] for processing personally identifiable information;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Attach data tags containing the following purposes to [Assignment: organization-defined elements of personally identifiable information]: [Assignment: organization-defined processing purposes]. [WMATA System Implementation Statement]

Related Controls: CA-6, CM-12, PM-5, PM-22, SC-16, SC-43, SI-10, SI-15, SI-19
', [Supplemental_Info]=N'<p><b> Data Tagging</b></p>Attach data tags containing the following purposes to [Assignment: organization-defined elements of personally identifiable information]: [Assignment: organization-defined processing purposes].' WHERE [Requirement_Id] = 37864
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Track processing purposes of personally identifiable information using [Assignment: organization-defined automated mechanisms]. [WMATA System Implementation Statement]

Related Controls: CA-6, CM-12, PM-5, PM-22, SC-16, SC-43, SI-10, SI-15, SI-19
', [Supplemental_Info]=N'<p><b> Automation</b></p>Track processing purposes of personally identifiable information using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37865
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement mechanisms for individuals to consent to the processing of their sensitive information prior to its collection that facilitate individuals’ informed decision-making. [WMATA System Implementation Statement]

Related Controls: PT-2, PT-5
', [Supplemental_Info]=N'<p><b>Consent</b></p>Implement [Assignment: organization-defined tools or mechanisms] for individuals to consent to the processing of their personally identifiable information prior to its collection that facilitate individuals’ informed decision-making.' WHERE [Requirement_Id] = 37866
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Provide [Assignment: organization-defined mechanisms] to allow individuals to tailor processing permissions to selected elements of personally identifiable information. [WMATA System Implementation Statement]

Related Controls: PT-2
', [Supplemental_Info]=N'<p><b> Tailored Consent</b></p>Provide [Assignment: organization-defined mechanisms] to allow individuals to tailor processing permissions to selected elements of personally identifiable information.' WHERE [Requirement_Id] = 37867
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Present [Assignment: organization-defined consent mechanisms] to individuals at [Assignment: organization-defined frequency] and in conjunction with [Assignment: organization-defined personally identifiable information processing]. [WMATA System Implementation Statement]

Related Controls: PT-2
', [Supplemental_Info]=N'<p><b> Just-in-time Consent</b></p>Present [Assignment: organization-defined consent mechanisms] to individuals at [Assignment: organization-defined frequency] and in conjunction with [Assignment: organization-defined personally identifiable information processing].' WHERE [Requirement_Id] = 37868
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement [Assignment: organization-defined tools or mechanisms] for individuals to revoke consent to the processing of their personally identifiable information.  [WMATA System Implementation Statement]

Related Controls: PT-2
', [Supplemental_Info]=N'<p><b> Revocation</b></p>Implement [Assignment: organization-defined tools or mechanisms] for individuals to revoke consent to the processing of their personally identifiable information.' WHERE [Requirement_Id] = 37869
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Provide notice to individuals about the processing of sensitive information that: [WMATA System Implementation Statement]

<li>a. Is available to individuals upon first interacting with an organization, and subsequently on an annual basis; [a: WMATA System Implementation Statement]</li>
<li>b. Is clear and easy-to-understand, expressing information about sensitive information processing in plain language; [b: WMATA System Implementation Statement]</li>
<li>c. Identifies the authority that authorizes the processing of sensitive information; [c: WMATA System Implementation Statement]</li>
<li>d. Identifies the purposes for which sensitive information is to be processed; and [d: WMATA System Implementation Statement]</li>
<li>e. Privacy Notices shall list all privacy-related information, to include: [e: WMATA System Implementation Statement]</li>
<li>i) Name, such as full name, maiden name, mother‘s maiden name, or alias; [e.i: WMATA System Implementation Statement]</li>
<li>ii) Personal identification number, such as social security number (SSN), passport number, driver‘s license number, taxpayer identification number, patient identification number, and financial account or credit card number; [e.ii: WMATA System Implementation Statement]</li>
<li>iii) Address information, such as street address or email address; [e.iii: WMATA System Implementation Statement]</li>
<li>iv) Asset information, such as Internet Protocol (IP) or Media Access Control (MAC) address or other host-specific persistent static identifier that consistently links to a particular person or small, well-defined group of people; [e.iv: WMATA System Implementation Statement]</li>
<li>v) Telephone numbers, including mobile, business, and personal numbers; [e.v: WMATA System Implementation Statement]</li>
<li>vi) Personal characteristics, including photographic image (especially of face or other distinguishing characteristic), x-rays, fingerprints, or other biometric image or template data (e.g., retina scan, voice signature, facial geometry); [e.vi: WMATA System Implementation Statement]</li>
<li>vii) Information identifying personally owned property, such as vehicle registration number or title number and related information; and [e.vii: WMATA System Implementation Statement]</li>
<li>viii) Information about an individual that is linked or linkable to one of the above (e.g., date of birth, place of birth, race, religion, weight, activities, geographical indicators, employment information, medical information, education information, financial information). [e.viii: WMATA System Implementation Statement]</li>
Related Controls: PT-2, PT-3, PT-4, PT-7, RA-3, SI-18
<li>f. Security Controls Enhancement(s): [f: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Privacy Notice</b></p>Provide notice to individuals about the processing of personally identifiable information that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Present notice of personally identifiable information processing to individuals at a time and location where the individual provides personally identifiable information or in conjunction with a data action, or [Assignment: organization-defined frequency]. [WMATA System Implementation Statement]

Related Controls: PM-21
', [Supplemental_Info]=N'<p><b> Just-in-time Notice</b></p>Present notice of personally identifiable information processing to individuals at a time and location where the individual provides personally identifiable information or in conjunction with a data action, or [Assignment: organization-defined frequency].' WHERE [Requirement_Id] = 37871
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Include privacy statements on forms that collect information that will be maintained in a privacy system of records, or provide privacy statements on separate forms that can be retained by individuals. [WMATA System Implementation Statement]</li>

Related Controls: PT-6
', [Supplemental_Info]=N'<p><b> Privacy Act Statements</b></p>Include Privacy Act statements on forms that collect information that will be maintained in a Privacy Act system of records, or provide Privacy Act statements on separate forms that can be retained by individuals.' WHERE [Requirement_Id] = 37872
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'For systems that process sensitive information that will be maintained in a system of records:  [WMATA System Implementation Statement]

<li>a. Establish system of records notices and submit new and modified system of records notices for review to the CPO and ITCS; and [a: WMATA System Implementation Statement]</li>
<li>b. Keep system of records notices accurate, up-to-date, and scoped in accordance with policy. [b: WMATA System Implementation Statement]</li>
Related Controls: AC-3, PM-20, PT-2, PT-3, PT-5
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>System of Records Notice</b></p>For systems that process information that will be maintained in a Privacy Act system of records:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Review all routine uses published in the system of records notice annually to ensure continued accuracy, and to ensure that routine uses continue to be compatible with the purpose for which the information was collected. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Routine Uses</b></p>Review all routine uses published in the system of records notice at [Assignment: organization-defined frequency] to ensure continued accuracy, and to ensure that routine uses continue to be compatible with the purpose for which the information was collected.' WHERE [Requirement_Id] = 37874
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Review all sensitive information exemptions claimed for the system of records annually to ensure they remain appropriate and necessary in accordance with law, that they have been promulgated as regulations, and that they are accurately described in the system of records notice. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Exemption Rules</b></p>Review all Privacy Act exemptions claimed for the system of records at [Assignment: organization-defined frequency] to ensure they remain appropriate and necessary in accordance with law, that they have been promulgated as regulations, and that they are accurately described in the system of records notice.' WHERE [Requirement_Id] = 37875
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Apply security controls for information systems in accordance with the security categorization in Control 3.16 Risk Assessment, Section 2, “RA-2 Security Categorization”: [a: WMATA System Implementation Statement]</li>
Related Controls: IR-9, PT-2, PT-3, RA-2, RA-3
<li>b. Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Specific Categories of Personally Identifiable Information</b></p>Apply [Assignment: organization-defined processing conditions] for specific categories of personally identifiable information.' WHERE [Requirement_Id] = 37876
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'When an information system processes Social Security numbers:

<li>(1) Eliminate unnecessary collection, maintenance, and use of Social Security Numbers (SSNs) and other sensitive information; [1: WMATA System Implementation Statement]</li>
<li>a) Use unique identifiers (e.g., Employee Identifier (EID) or Contractor Identifier (CID)) to differentiate between personnel; and [1.a: WMATA System Implementation Statement]</li>
<li>b) Only use the SSN where necessary for essential business functions (e.g., financial processing, payroll, benefits, etc.) or other uses consistent with state and federal law; [1.b: WMATA System Implementation Statement]</li>
<li>(2) Do not deny any individual any right, benefit, or privilege provided by law because of such individual’s refusal to disclose his or her SSN; and [2: WMATA System Implementation Statement]</li>
<li>(3) Inform any individual who is asked to disclose his or her Social Security number whether that disclosure is mandatory or voluntary, by what statutory or other authority such number is solicited, and what uses will be made of it. [3: WMATA System Implementation Statement]</li>

Related Controls: IA-4
', [Supplemental_Info]=N'<p><b> Social Security Numbers</b></p>When a system processes Social Security numbers:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Prohibit the processing of information describing how any individual exercises rights guaranteed by the First Amendment unless expressly authorized by statute or by the individual or unless pertinent to and within the scope of an authorized law enforcement activity. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> First Amendment Information</b></p>Prohibit the processing of information describing how any individual exercises rights guaranteed by the First Amendment unless expressly authorized by statute or by the individual or unless pertinent to and within the scope of an authorized law enforcement activity.' WHERE [Requirement_Id] = 37878
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'When an information system or organization processes information for the purpose of conducting a matching program: [WMATA System Implementation Statement]

<li>a. Obtain approval from the AO to conduct the matching program; [a: WMATA System Implementation Statement]</li>
<li>b. Develop and enter into a computer matching agreement; and [b: WMATA System Implementation Statement]</li>
<li>c. Sponsoring system owner shall submit to the AO all documentation pursuant to 5 U.S.C. 552a(o)(1), or in the case of a state agency, submit all documentation pursuant to similar or analogous state statutory authority. [c: WMATA System Implementation Statement]</li>

Related Controls: PM-24
', [Supplemental_Info]=N'<p><b>Computer Matching Requirements</b></p>When a system or organization processes information for the purpose of conducting a matching program:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Reference P/I 15.28 Cybersecurity Policy for requirements: [WMATA System Implementation Statement]

Related Controls: PM-9, PS-8, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The policy specifically addresses the unique properties and requirements of OT and the relationship to non-OT systems. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Risk Assessment Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Categorize the system and information it processes, stores, and transmits; [a: WMATA System Implementation Statement]</li>
<li>b. Document the security categorization results, including supporting rationale, in the SSP for the system; and [b: WMATA System Implementation Statement]</li>
<li>c. Verify that the AO or AODR reviews and approves the security categorization decision. [c: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Process hazard analysis (PHA), functional safety assessments, and other organization-established risk assessments can be referenced to identify the impact level of the OT systems. [OT Systems Only: WMATA System Implementation Statement]

Related Controls : CM-8, MP-4, PL-2, PL-10, PL-11, PM-7, RA-3, RA-5, RA-7, RA-8, SA-8, SC-7, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: PHA, functional safety assessments, and other organization-established risk assessments can be referenced to identify the impact level of the OT systems. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Security Categorization</b></p>a. Categorize the system and information it processes, stores, and transmits;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Conduct a risk assessment, including: [a: WMATA System Implementation Statement]</li>
<li>i) Identifying threats to and vulnerabilities in the system; [a.i: WMATA System Implementation Statement]</li>
<li>ii) Determining the likelihood and magnitude of harm from unauthorized access, use, disclosure, disruption, modification, or destruction of the system, the information it processes, stores, or transmits, and any related information; and [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Determining the likelihood and impact of adverse effects on individuals arising from the processing of PII; [a.iii: WMATA System Implementation Statement]</li>
<li>b. Integrate risk assessment results and risk management decisions from the organization and mission or business process perspectives with system-level risk assessments; [b: WMATA System Implementation Statement]</li>
<li>c. Document risk assessment results in the Governance, Risk, and Compliance (GRC) tool; [c: WMATA System Implementation Statement]</li>
<li>d. Review risk assessment results annually; [d: WMATA System Implementation Statement]</li>
<li>e. Disseminate risk assessment results to the required stakeholders; and [e: WMATA System Implementation Statement]</li>
<li>f. Update the risk assessment annually or when there are significant changes to the system, its environment of operation, or other conditions that may impact the security or privacy state of the system. [f: WMATA System Implementation Statement]</li>

Related Controls: CA-3, CA-6, CM-4, CP-6, CP-7, IA-8, MA-5, PE-3, PE-8, PE-18, PL-2, PL-10, PL-11, PM-8, PM-9, PM-28, PT-2, PT-7, RA-2, RA-5, RA-7, SA-8, SA-9, SI-12
', [Supplemental_Info]=N'<p><b>Risk Assessment</b></p>a. Conduct a risk assessment, including:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(a) Assess supply chain risks associated with [Assignment: organization-defined systems, system components, and system services]; and [a: WMATA System Implementation Statement]</li>
<li>(b) Update the supply chain risk assessment [Assignment: organization-defined frequency], when there are significant changes to the relevant supply chain, or when changes to the system, environments of operation, or other conditions may necessitate a change in the supply chain. [b: WMATA System Implementation Statement]</li>

Related Controls: RA-2, RA-9, PM-17, PM-30, SR-2
', [Supplemental_Info]=N'<p><b> Supply Chain Risk Assessment</b></p>(a) Assess supply chain risks associated with [Assignment: organization-defined systems, system components, and system services]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Monitor and scan for vulnerabilities in the system and hosted applications monthly and when new vulnerabilities potentially affecting the system are identified and reported; [a: WMATA System Implementation Statement]</li>
<li>b. Employ vulnerability monitoring tools and techniques that facilitate interoperability among tools and automate parts of the vulnerability management process by using standards for: [b: WMATA System Implementation Statement]</li>
<li>i) Enumerating platforms, software flaws, and improper configurations; [b.i: WMATA System Implementation Statement]</li>
<li>ii) Formatting checklists and test procedures; and [b.ii: WMATA System Implementation Statement]</li>
<li>iii) Measuring vulnerability impact; [b.iii: WMATA System Implementation Statement]</li>
<li>c. Analyze vulnerability scan reports and results from vulnerability monitoring; [c: WMATA System Implementation Statement]</li>
<li>d. Remediate vulnerabilities within the following timelines: [d: WMATA System Implementation Statement]</li>
<li>i) Critical vulnerabilities: immediately but no more than 15 days after notification; [d.i: WMATA System Implementation Statement]</li>
<li>ii) High vulnerabilities: within 30 days of notification; [d.ii: WMATA System Implementation Statement]</li>
<li>iii) Medium vulnerabilities: within 60 days of notification; and [d.iii: WMATA System Implementation Statement]</li>
<li>iv) Low vulnerabilities: within 90 days of notification; [d.iv: WMATA System Implementation Statement]</li>
All system changes are subject to implementation in accordance with Control 3.4 Configuration Management.
<li>e. Share information obtained from the vulnerability monitoring process and control assessments with the required system owner(s) and with other stakeholders on a need-to-know basis, to help eliminate similar vulnerabilities in other systems; and [e: WMATA System Implementation Statement]</li>
<li>f. Employ vulnerability monitoring tools that include the capability to readily update the vulnerabilities to be scanned. [f: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> The organization makes a risk-based determination of how to monitor or scan for vulnerabilities on their system. This may include active scanning, passive monitoring, or compensating controls, depending on the system being scanned. For example, vulnerability examination may be performed using passive monitoring and manual visual inspection to maintain an up-to-date inventory of assets. That inventory can be cross-referenced against a list of known vulnerabilities (e.g., CISA advisories and NIST NVD). Production may need to be taken off-line before active scans can be conducted. Scans are scheduled to occur during planned OT outages whenever possible. If vulnerability scanning tools are used on adjacent non-OT networks, extra care is taken to ensure that they do not mistakenly scan the OT network. Automated network scanning is not applicable to non-routable communications such as serial networks. Compensating controls include providing a replicated or simulated system for conducting scans or host-based vulnerability applications. [OT Systems Only: WMATA System Implementation Statement]
Related Controls : CA-2, CA-7, CA-8, CM-2, CM-4, CM-6, CM-8, RA-2, RA-3, SA-11, SA-15, SI-2, SI-3, SI-4, SI-7, SR-11
<li>g. Security Controls Enhancement(s): [g: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The organization makes a risk-based determination of how to monitor or scan for vulnerabilities on their system. This may include active scanning, passive monitoring, or compensating controls, depending on the system being scanned. For example, vulnerability examination may be performed using passive monitoring and manual visual inspection to maintain an up-to-date inventory of assets. That inventory can be cross-referenced against a list of known vulnerabilities (e.g., CISA advisories, NIST NVD). Production may need to be taken offline before active scans can be conducted. Scans are scheduled to occur during planned OT outages whenever possible. If vulnerability scanning tools are used on adjacent non-OT networks, extra care is taken to ensure that they do not mistakenly scan the OT network. Automated network scanning is not applicable to non-routable communications, such as serial networks. Compensating controls include providing a replicated or simulated system for conducting scans or host-based vulnerability applications. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Vulnerability Monitoring and Scanning</b></p>a. Monitor and scan for vulnerabilities in the system and hosted applications [Assignment: organization-defined frequency and/or randomly in accordance with organization-defined process] and when new vulnerabilities potentially affecting the system are identified and reported;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Establish a public reporting channel for receiving reports of vulnerabilities in organizational systems and system components. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> For federal organizations, CISA Binding Operational Directive 20-01 requires individual federal civilian executive branch agencies to develop and publish a vulnerability disclosure policy (VDP) for their internet-accessible systems and services, and maintain processes to support their VDP. A VDP may be implemented at the organization level, rather than for each individual system. Non-federal as well as federal organizations could achieve this control by creating and monitoring an email address published on a public-facing website for contacting the organization regarding disclosures. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: For federal organizations, CISA Binding Operational Directive 20-01 requires individual federal civilian executive branch agencies to develop and publish a vulnerability disclosure policy (VDP) for their internet-accessible systems and services and maintain processes to support their VDP. A VDP may be implemented at the organization level rather than for each individual system. Federal and non-federal organizations could achieve this control by creating and monitoring an email address published on a public-facing website for contacting the organization regarding disclosures.  [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Vulnerability Monitoring and Scanning | Public Disclosure Program</b></p>Establish a public reporting channel for receiving reports of vulnerabilities in organizational systems and system components.' WHERE [Requirement_Id] = 37885
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Update the system vulnerabilities to be scanned daily and when new vulnerabilities are identified and reported. [WMATA System Implementation Statement]

Related Controls: SI-5
', [Supplemental_Info]=N'<p><b> Update Vulnerabilities to Be Scanned</b></p>Update the system vulnerabilities to be scanned [Selection (one or more): [Assignment: organization-defined frequency]; prior to a new scan; when new vulnerabilities are identified and reported].' WHERE [Requirement_Id] = 37886
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Determine information about the system that is discoverable and notify appropriate organizational personnel, remove designated information, and/or change the system to make the designated information less relevant or attractive to adversaries. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Examples of discoverable information in OT could include information about key personnel or technical information relating to systems and configurations. Locations that may need to be monitored or scanned include technical forums, blogs, or vendor/contractor websites. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Examples of discoverable information in OT could include information about key personnel or technical information related to systems and configurations. Locations that may need to be monitored or scanned include technical forums, blogs, and vendor or contractor websites.  [NIST 800-82 Rev 3: WMATA System Implementation Statement] 
', [Supplemental_Info]=N'<p><b>Vulnerability Monitoring and Scanning | Discoverable Information</b></p>Determine information about the system that is discoverable and take [Assignment: organization-defined corrective actions].' WHERE [Requirement_Id] = 37887
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement privileged access authorization to systems and system components for all vulnerability scanning activities. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Privileged Access</b></p>Implement privileged access authorization to [Assignment: organization-defined system components] for [Assignment: organization-defined vulnerability scanning activities].' WHERE [Requirement_Id] = 37888
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Respond to findings from security and privacy assessments, monitoring, and audits in accordance with organizational risk tolerance. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Risk Response</b></p>Respond to findings from security and privacy assessments, monitoring, and audits in accordance with organizational risk tolerance.' WHERE [Requirement_Id] = 37889
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Conduct sensitivity impact assessments for systems, programs, or other activities, and document results in the GRC tool before: [a: WMATA System Implementation Statement]</li>
<li>i) Developing or procuring information technology that processes sensitive information; [a.i: WMATA System Implementation Statement]</li>
<li>ii) Initiating a new collection of sensitive information that will be processed using information technology; and [a.ii: WMATA System Implementation Statement]</li>
<li>iii) The results of the sensitivity impact assessment may require the completion of a privacy impact assessment or other documentation specific to the type of sensitive information processed. [a.iii: WMATA System Implementation Statement]</li>
<li>b. Conduct privacy impact assessments for systems, programs, or other activities, and document results in the GRC tool before: [b: WMATA System Implementation Statement]</li>
<li>i) Developing or procuring information technology that processes personally identifiable information; and [b.i: WMATA System Implementation Statement]</li>
<li>ii) Initiating a new collection of personally identifiable information that will be processed using information technology; [b.ii: WMATA System Implementation Statement]</li>

Related Controls : CM-4, CM-9, PT-2, PT-3, PT-5, RA-1, RA-2, RA-3, RA-7
', [Supplemental_Info]=N'<p><b>Privacy Impact Assessments</b></p>Conduct privacy impact assessments for systems, programs, or other activities before:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Identify critical system components and functions by performing a criticality analysis for systems, system components, and system services throughout the Project Lifecycle Management (PLM) process/System Development Life Cycle (SDLC). All new systems shall conduct a criticality analysis as a part of the project intake phase. [WMATA System Implementation Statement]

Related Controls: CP-2, PL-2, PL-8, PL-11, PM-1, PM-11, RA-2, SA-8, SA-15, SR-5
', [Supplemental_Info]=N'<p><b>Criticality Analysis</b></p>Identify critical system components and functions by performing a criticality analysis for [Assignment: organization-defined systems, system components, or system services] at [Assignment: organization-defined decision points in the system development life cycle].' WHERE [Requirement_Id] = 37891
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Reference P/I 15.28 Cybersecurity Policy for requirements. [WMATA System Implementation Statement]

Related Controls: PM-9, PS-8, SA-8, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The policy specifically addresses the unique properties and requirements of OT and the relationship to non-OT systems. [NIST 800-82 Rev 3: WMATA System Implementation Statement]


', [Supplemental_Info]=N'<p><b>System and Services Acquisition Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Perform configuration management during system, component, or service design; development; implementation; operation; disposal, in accordance with the SDLC; [a: WMATA System Implementation Statement]</li>
<li>b. Document, manage, and control the integrity of changes to all system and system component configuration items under configuration management; [b: WMATA System Implementation Statement]</li>
<li>c. Implement only organization-approved changes to the system, component, or service; [c: WMATA System Implementation Statement]</li>
<li>d. Document approved changes to the system, component, or service and the potential security and privacy impacts of such changes; and [d: WMATA System Implementation Statement]</li>
<li>e. Track security flaws and flaw resolution within the system, component, or service and report findings to required stakeholders. [e: WMATA System Implementation Statement]</li>

Related Controls: CM-2, CM-3, CM-4, CM-7, CM-9, SA-4, SA-5, SA-8, SA-15, SI-2, SR-3, SR-4, SR-5, SR-6

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Personnel with knowledge about security and privacy requirements are included in the change management process for the developer.  [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Developer Configuration Management</b></p>Require the developer of the system, system component, or system service to:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Require the developer of the system, system component, or system service, at all post-design stages of the SDLC, to: [WMATA System Implementation Statement]

<li>a. Develop and implement a plan for ongoing security and privacy control assessments; [a: WMATA System Implementation Statement]</li>
<li>b. Perform unit, integration, system, and regression testing/evaluation for releases and changes to the system or system components as specified in the SDLC at a depth and coverage that enable the DMCS-defined security and privacy objectives for the system to be implemented and approved by the AO; [b: WMATA System Implementation Statement]</li>
<li>c. All contracts shall specify acceptance criteria for security and privacy controls and plans commensurate with the security category or classification level of the system; [c: WMATA System Implementation Statement]</li>
<li>d. Produce evidence of the execution of the assessment plan and the results of the testing and evaluation; [d: WMATA System Implementation Statement]</li>
<li>e. Implement a verifiable flaw remediation process; and [e: WMATA System Implementation Statement]</li>
<li>f. Correct flaws identified during testing and evaluation. [f: WMATA System Implementation Statement]</li>

Related Controls: CA-2, CA-7, CM-4, SA-3, SA-4, SA-5, SA-8, SA-15, SA-17, SI-2, SR-5, SR-6, SR-7
', [Supplemental_Info]=N'<p><b>Developer Testing and Evaluation</b></p>Require the developer of the system, system component, or system service, at all post-design stages of the system development life cycle, to:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Require the developer of the system, system component, or system service to follow a documented development process that: [a: WMATA System Implementation Statement]</li>
<li>i) Explicitly addresses security and privacy requirements; [a.i: WMATA System Implementation Statement]</li>
<li>ii) Identifies the standards and tools used in the development process; [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Documents the specific tool options and tool configurations used in the development process; and [a.iii: WMATA System Implementation Statement]</li>
<li>iv) Documents, manages, and ensures the integrity of changes to the process and/or tools used in development; [a.iv: WMATA System Implementation Statement]</li>
<li>b. Review the development process, standards, tools, tool options, and tool configurations annually to determine if the process, standards, tools, tool options and tool configurations selected and employed can satisfy the security and privacy requirements throughout the SDLC. [b: WMATA System Implementation Statement]</li>
Related Controls: MA-6, SA-3, SA-4, SA-8, SA-10, SA-11, SR-3, SR-4, SR-5, SR-6, SR-9
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Development Process, Standards, and Tools</b></p>a. Require the developer of the system, system component, or system service to follow a documented development process that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Require the developer of the system, system component, or system service to perform a criticality analysis: [WMATA System Implementation Statement]

<li>(1) As a part of the SDLC Design Phase (also known as Initiation Phase of the SDLC as defined by NIST 800-64); [1: WMATA System Implementation Statement]</li>
<li>(2) As a part of the A&A Categorization Phase; and [2: WMATA System Implementation Statement]</li>
<li>(3) At the discretion of the AO based on major changes to the system. [3: WMATA System Implementation Statement]</li>

Related Controls: RA-9
', [Supplemental_Info]=N'<p><b> Criticality Analysis</b></p>Require the developer of the system, system component, or system service to perform a criticality analysis:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Require the developer of the system, system component, or system service to provide training on the correct use and operation of the implemented security and privacy functions, controls, and/or mechanisms. [WMATA System Implementation Statement]

Related Controls: AT-2, AT-3, PE-3, SA-4, SA-5
', [Supplemental_Info]=N'<p><b>Developer-provided Training</b></p>Require the developer of the system, system component, or system service to provide the following training on the correct use and operation of the implemented security and privacy functions, controls, and/or mechanisms: [Assignment: organization-defined training].' WHERE [Requirement_Id] = 37897
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Require the developer of the system, system component, or system service to produce a design specification and security and privacy architecture that: [WMATA System Implementation Statement]

<li>a. Is consistent with the organization’s security and privacy architecture that is an integral part of the organization’s enterprise architecture; [a: WMATA System Implementation Statement]</li>
<li>b. Accurately and completely describes the required security and privacy functionality and the allocation of controls among physical and logical components; and [b: WMATA System Implementation Statement]</li>
<li>c. Expresses how individual security and privacy functions, mechanisms, and services work together to provide required security and privacy capabilities and a unified approach to protection. [c: WMATA System Implementation Statement]</li>

Related Controls: PL-2, PL-8, PM-7, SA-3, SA-4, SA-8, SC-7
', [Supplemental_Info]=N'<p><b>Developer Security and Privacy Architecture and Design</b></p>Require the developer of the system, system component, or system service to produce a design specification and security and privacy architecture that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Determine the high-level information security and privacy requirements for the system or system service in mission and business process planning; [a: WMATA System Implementation Statement]</li>
<li>b. Determine, document, and allocate the resources required to protect the system or system service as part of the organizational capital planning and investment control process; and [b: WMATA System Implementation Statement]</li>
<li>c. Establish a discrete line item for information security and privacy in organizational programming and budgeting documentation. [c: WMATA System Implementation Statement]</li>

Related Controls: PL-7, PM-3, PM-11, SA-9, SR-3, SR-5
', [Supplemental_Info]=N'<p><b>Allocation of Resources</b></p>a. Determine the high-level information security and privacy requirements for the system or system service in mission and business process planning;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Require that the developer of a system, system component, or system service: [WMATA System Implementation Statement]

<li>a. Have appropriate access authorizations as determined by assigned official duties or as specified in an associated contract; and [a: WMATA System Implementation Statement]</li>
<li>b. Satisfy the following personnel screening criteria: [b: WMATA System Implementation Statement]</li>
<li>i) Successful completion and adjudication of all required WMATA background checks. All contractors shall provide WMATA with contractually obligated background information; and [b.i: WMATA System Implementation Statement]</li>
<li>ii) Review and analysis of company ownership and relationships that the company has with entities that may potentially affect the quality and reliability of the systems, components, or services being developed. [b.ii: WMATA System Implementation Statement]</li>

Related Controls: PS-2, PS-3, PS-6, PS-7, SA-4, SR-6
', [Supplemental_Info]=N'<p><b>Developer Screening</b></p>Require that the developer of [Assignment: organization-defined system, system component, or system service]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Replace system components when support for the components is no longer available from the developer, vendor, or manufacturer. All systems shall employ vendor-supported products that are not end-of-life (EOL) and that are regularly maintained in accordance with Control 3.11 Maintenance. [a: WMATA System Implementation Statement]</li>
<li>b. Vulnerabilities identified on unsupported devices must be addressed using mitigating security controls as defined by DMCS. [b: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> OT systems may contain system components that are no longer supported by the developer, vendor, or manufacturer and have not been replaced due to various operational, safety, availability, or lifetime constraints. Organizations identify alternative methods to continue supported operation of such system components and consider additional compensating controls to mitigate against known threats and vulnerabilities to unsupported system components. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: PL-2, SA-3 

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: OT systems may contain system components that are no longer supported by the developer, vendor, or manufacturer and have not been replaced due to various operational, safety, availability, or lifetime constraints. Organizations identify alternative methods to continue supported operation of such system components and consider additional compensating controls to mitigate against known threats and vulnerabilities to unsupported system components. [NIST 800-82 Rev 3_Rationale: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Unsupported System Components</b></p>a. Replace system components when support for the components is no longer available from the developer, vendor, or manufacturer; or
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Acquire, develop, and manage the system using the SDLC that incorporates information security and privacy considerations; [a: WMATA System Implementation Statement]</li>
<li>b. Define and document information security and privacy roles and responsibilities throughout the SDLC; [b: WMATA System Implementation Statement]</li>
<li>c. Identify individuals having information security and privacy roles and responsibilities; and [c: WMATA System Implementation Statement]</li>
<li>d. Integrate the organizational information security and privacy risk management process into SDLC activities. [d: WMATA System Implementation Statement]</li>
<li>e. Publishing code to a public code repository requires the express written authorization of the AO. [e: WMATA System Implementation Statement]</li>
Related Controls: AT-3, PL-8, PM-7, SA-4, SA-5, SA-8, SA-11, SA-15, SA-17, SA-22, SR-3, SR-4, SR-5, SR-9
<li>f. Security Controls Enhancement(s): [f: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>System Development Life Cycle</b></p>a. Acquire, develop, and manage the system using [Assignment: organization-defined system development life cycle] that incorporates information security and privacy considerations;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Protect system preproduction environments commensurate with risk throughout the system development life cycle of the system, system component, or system service. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Organizations that do not maintain local preproduction environments and utilize a third-party integrator should ensure contracts are developed to limit the security and privacy risks. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: CM-2, CM-4, RA-3, RA-9, SA-4

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Organizations that do not maintain local pre-production environments and utilize a third-party integrator should ensure that contracts are developed to limit security and privacy risks. [NIST 800-82 Rev 3: WMATA System Implementation Statement] 
', [Supplemental_Info]=N'<p><b>System Development Life Cycle | Manage Preproduction Environment</b></p>Protect system preproduction environments commensurate with risk throughout the system development life cycle for the system, system component, or system service.' WHERE [Requirement_Id] = 37903
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Plan for and implement a technology refresh schedule for the system throughout the system development life cycle. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Many OT systems have an expected life cycle that is longer than most IT components. Technology refresh is addressed in budget planning to limit the use of obsolete systems that present security or reliability risks. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: MA-6

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Many OT systems have an expected life cycle that is longer than most IT components. Technology refresh is addressed in budget planning to limit the use of obsolete systems that present security or reliability risks. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>System Development Life Cycle | Technology Refresh</b></p>Plan for and implement a technology refresh schedule for the system throughout the system development life cycle.' WHERE [Requirement_Id] = 37904
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Include the following requirements, descriptions, and criteria, explicitly or by reference, using standardized contract language in the acquisition contract for the system, system component, or system service: [WMATA System Implementation Statement]

<li>a. Security and privacy functional requirements for all stages of the SDLC as required in Control 3.19 System and Services Acquisition, Section 3, “SA-3 System Development Life Cycle” to include user and administrator guidance for the implementation and operation of controls; [a: WMATA System Implementation Statement]</li>
<li>b. Strength of mechanism requirements associated with capabilities, functions, and mechanisms to include a degree of correctness, completeness, resistance to tampering or bypass, and resistance to direct attack; [b: WMATA System Implementation Statement]</li>
<li>c. Security and privacy assurance requirements to include development processes, procedures, and methodologies as well as the evidence from development and assessment activities that provide grounds for confidence that the required functionality is implemented and possesses the required strength of mechanism; [c: WMATA System Implementation Statement]</li>
<li>d. Controls needed to satisfy the security and privacy requirements; [d: WMATA System Implementation Statement]</li>
<li>e. Security and privacy documentation requirements; [e: WMATA System Implementation Statement]</li>
<li>f. Requirements for protecting security and privacy documentation; [f: WMATA System Implementation Statement]</li>
<li>g. Description of the system development environment and environment in which the system is intended to operate; [g: WMATA System Implementation Statement]</li>
<li>h. Allocation of responsibility or identification of parties responsible for information security, privacy, and supply chain risk management; and [h: WMATA System Implementation Statement]</li>
<li>i. Acceptance criteria. [i: WMATA System Implementation Statement]</li>
<li>j. Providers of defined external information systems are required to identify the location of information systems that receive, process, store, or transmit WMATA data, with special emphasis on sensitive information to include, but is not limited to, Personally Identifiable Information (PII), Federal Tax Information (FTI), etc. [j: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Organizations engage with OT suppliers to raise awareness of cybersecurity needs. The SCADA/Control Systems Procurement Project provides example cybersecurity procurement language for OT. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: CM-6, CM-8, PS-7, SA-3, SA-5, SA-8, SA-11, SA-15, SA-16, SA-17, SA-21, SR-3, SR-5
<li>k. Security Controls Enhancement(s): [k: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Organizations engage with OT suppliers to raise awareness of cybersecurity needs. The SCADA/Control Systems Procurement Project provides example cybersecurity procurement language for OT. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Acquisition Process</b></p>Include the following requirements, descriptions, and criteria, explicitly or by reference, using [Selection (one or more): standardized contract language; [Assignment: organization-defined contract language]] in the acquisition contract for the system, system component, or system service:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Require the developer of the system, system component, or system service to provide a description of the functional properties of the controls to be implemented. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> When acquiring OT products, consideration for security requirements may not have been incorporated into the design. Procurement may need to consider alternative products or complementary hardware, or plan for compensating controls. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: When acquiring OT products, consideration for security requirements may not have been incorporated into the design. Procurement may need to consider alternative products or complementary hardware or plan for compensating controls. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Acquisition Process | Functional Properties of Controls</b></p>Require the developer of the system, system component, or system service to provide a description of the functional properties of the controls to be implemented.' WHERE [Requirement_Id] = 37906
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Employ only information technology products on the FIPS 201-approved products list for PIV capability implemented within organizational systems. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> The use of approved PIV products is only required for organizations that follow OMB Memorandum M-19-17, e.g., federal agencies and contractors. Example compensating controls include employing external products on the FIPS 201-approved products list for PIV capability in conjunction with OT products.  [OT Systems Only: WMATA System Implementation Statement]

Related Controls: IA-2, IA-8, PM-9

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The use of approved PIV products is only required for organizations that follow OMB Memorandum M-19-17 (e.g., federal agencies and contractors). Example compensating controls include employing external products on the FIPS 201-approved products list for PIV capabilities in conjunction with OT products. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Acquisition Process | Use of Approved PIV Products</b></p>Employ only information technology products on the FIPS 201-approved products list for Personal Identity Verification (PIV) capability implemented within organizational systems.' WHERE [Requirement_Id] = 37907
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Include organization data ownership requirements in the acquisition contract; and [1: WMATA System Implementation Statement]</li>
<li>(2) Require all data to be removed from the contractor’s system and returned to the organization within [2: Assignment: organization-defined time frame]. [WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
Rationale for adding SA-4 (12) to LOW, MOD, and HIGH baselines: Organizationally sensitive or proprietary OT data is often provided to contractors for project development or support, so data ownership should be defined prior to exchanging data with a vendor or integrator. The potential sharing of data with other parties and the potential deletion of the data after project completion should be determined. OT systems that are operated by contractors on behalf of the organization may be subject to the same requirements (e.g., legal, regulatory, etc.) for data ownership and retention. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Acquisition Process | Data Ownership</b></p>(a) Include organizational data ownership requirements in the acquisition contract; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Require the developer of the system, system component, or system service to provide design and implementation information for controls that includes: [WMATA System Implementation Statement]

<li>(1) Security-relevant system interfaces with external systems; [1: WMATA System Implementation Statement]</li>
<li>(2) Security-relevant system interfaces with internal systems; [2: WMATA System Implementation Statement]</li>
<li>(3) High-level design for the system expressed in terms of subsystems and the interfaces between subsystems with security-relevant functionality/information; [3: WMATA System Implementation Statement]</li>
<li>(4) Low-level design for the system expressed in terms of modules and the interfaces between modules with security-relevant functionality/information; [4: WMATA System Implementation Statement]</li>
<li>(5) Design and implementation documentation to include manufacturer, version, serial number, verification hash signature, software libraries used, date of purchase or download, and the vendor or download source; [5: WMATA System Implementation Statement]</li>
<li>(6) Source code or hardware schematics and any other implementation information at a level of detail necessary for successful review and implementation of the system; [6: WMATA System Implementation Statement]</li>
<li>(7) List of all Ports, Protocols and Services required for the functionality of the system; [7: WMATA System Implementation Statement]</li>
<li>(8) Data Flow Diagram (DFD) that represents a flow of a data in the system (if applicable); [8: WMATA System Implementation Statement]</li>
<li>(9) Data Classification Matrix including data definition, access restrictions and minimum controls specific for your service; and [9: WMATA System Implementation Statement]</li>
<li>(10) Application Boundary Diagram that illustrates the relationships between the application components and hosted environments (if applicable). [10: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> When acquiring OT products, consideration for security requirements may not have been incorporated into the design. Procurement may need to consider alternative products or complementary hardware, or plan for compensating controls.  [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: When acquiring OT products, consideration for security requirements may not have been incorporated into the design. Procurement may need to consider alternative products or complementary hardware or plan for compensating controls. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Acquisition Process | Design and Implementation Information for Controls</b></p>Require the developer of the system, system component, or system service to provide design and implementation information for the controls that includes: [Selection (one or more): security-relevant external system interfaces; high-level design; low-level design; source code or hardware schematics; [Assignment: organization-defined design and implementation information]] at [Assignment: organization-defined level of detail].' WHERE [Requirement_Id] = 37909
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Require the developer of the system, system component, or system service to: [WMATA System Implementation Statement]

<li>(1) Deliver the system, component, or service with the following implemented: [1: WMATA System Implementation Statement]</li>
<li>(a) Secure baselines based on all relevant/applicable STIGs in accordance with Control 3.4 Configuration Management, Section 6, “CM-6 Configuration Settings”; [1.a: WMATA System Implementation Statement]</li>
<li>(b) Cybersecurity requirements including limitations on deprecated or disallowed functions, ports, protocols, and services; and [1.b: WMATA System Implementation Statement]</li>
<li>(c) Default passwords changed in accordance with Control 3.9 Identification and Authentication; and [1.c: WMATA System Implementation Statement]</li>
<li>(2) Use the configurations as the default for any subsequent system, component, or service reinstallation or upgrade. [2: WMATA System Implementation Statement]</li>

Related Controls: CM-6
', [Supplemental_Info]=N'<p><b> System, Component, and Service Configurations</b></p>Require the developer of the system, system component, or system service to:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Require the developer of the system, system component, or system service to identify the functions, ports, protocols, and services intended for organizational use. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> When acquiring OT products, consideration for security requirements may not have been incorporated into the design. Procurement may need to consider alternative products or complementary hardware, or plan for compensating controls. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: CM-7, SA-9

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: When acquiring OT products, consideration for security requirements may not have been incorporated into the design. Procurement may need to consider alternative products or complementary hardware or plan for compensating controls. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Acquisition Process | Functions, Ports, Protocols, and Services in Use</b></p>Require the developer of the system, system component, or system service to identify the functions, ports, protocols, and services intended for organizational use.' WHERE [Requirement_Id] = 37911
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Obtain or develop (externally or internally) administrator documentation for the system, system component, or system service that describes: [a: WMATA System Implementation Statement]</li>
<li>i) Secure configuration, installation, and operation of the system, component, or service; [a.i: WMATA System Implementation Statement]</li>
<li>ii) Effective use and maintenance of security and privacy functions and mechanisms; and [a.ii: WMATA System Implementation Statement]</li>
<li>iii) Known vulnerabilities regarding configuration and use of administrative or privileged tions; [a.iii: WMATA System Implementation Statement]</li>
<li>b. Obtain or develop (externally or internally) user documentation for the system, system component, or system service that describes: [b: WMATA System Implementation Statement]</li>
<li>i) User-accessible security and privacy functions and mechanisms and how to effectively use those functions and mechanisms; [b.i: WMATA System Implementation Statement]</li>
<li>ii) Methods for user interaction, which enables individuals to use the system, component, or service in a more secure manner and protect individual privacy; and [b.ii: WMATA System Implementation Statement]</li>
<li>iii) User responsibilities in maintaining the security of the system, component, or service and privacy of individuals; [b.iii: WMATA System Implementation Statement]</li>
<li>c. Document attempts to obtain system, system component, or system service documentation when such documentation is either unavailable or nonexistent; and take actions to recreate the documentation if it is essential to the implementation or operation of the controls in response; and [c: WMATA System Implementation Statement]</li>
<li>d. Distribute documentation to required stakeholders. [d: WMATA System Implementation Statement]</li>

Related Controls: CM-4, CM-6, CM-7, CM-8, PL-2, PL-4, PL-8, PS-2, SA-3, SA-4, SA-8, SA-9, SA-10, SA-11, SA-15, SA-16, SA-17, SI-12, SR-3
', [Supplemental_Info]=N'<p><b>System Documentation</b></p>a. Obtain or develop administrator documentation for the system, system component, or system service that describes:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>1. The application of security engineering principles must be integrated into the SDLC. Security engineering principles are primarily targeted at information systems under new development and information systems undergoing major upgrades. For legacy information systems, security engineering principles must be applied to system upgrades and modifications, to the extent feasible, given the current state of the hardware, software, and firmware components within the system. [1: WMATA System Implementation Statement]</li>
<li>2. Apply the following systems security and privacy engineering principles in the specification, design, development, implementation, and modification of the system and system components: [2: WMATA System Implementation Statement]</li>
<li>a. Developing layered protections; [a: WMATA System Implementation Statement]</li>
<li>b. Establishing sound security policy, architecture, and controls as the foundation for design; [b: WMATA System Implementation Statement]</li>
<li>c. Incorporating security into the SDLC; [c: WMATA System Implementation Statement]</li>
<li>d. Delineating physical and logical security boundaries; [d: WMATA System Implementation Statement]</li>
<li>e. Ensuring system developers and integrators are trained on how to develop secure software; [e: WMATA System Implementation Statement]</li>
<li>f. Tailoring security controls to meet organizational and operational needs; [f: WMATA System Implementation Statement]</li>
<li>g. Reducing risk to acceptable levels, thus enabling informed risk management decisions; [g: WMATA System Implementation Statement]</li>
<li>h. Establishing network segmentation; and [h: WMATA System Implementation Statement]</li>
<li>i. Performing threat modeling to identify use cases, threat agents, attack vectors and patterns, design patterns, and compensating controls needed to mitigate risk. [i: WMATA System Implementation Statement]</li>
Related Controls: PL-8, PM-7, RA-2, RA-3, RA-9, SA-3, SA-4, SA-15, SA-17, SC-2, SC-3, SC-32, SC-39, SR-2, SR-3, SR-4, SR-5
<li>j. Security Controls Enhancement(s): [j: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Security and Privacy Engineering Principles</b></p>Apply the following systems security and privacy engineering principles in the specification, design, development, implementation, and modification of the system and system components: [Assignment: organization-defined systems security and privacy engineering principles].' WHERE [Requirement_Id] = 37913
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement the privacy principle of minimization through discrete processes, which detail how systems only process PII or other sensitive information in accordance with Control 3.8 Data Sensitivity that is directly relevant and necessary to accomplish an authorized purpose and should only maintain PII for as long as is necessary to accomplish the purpose. All uses of PII shall be approved by the AO in consultation with the Privacy Administrator in accordance with P/I 9.2 Privacy Policy. [WMATA System Implementation Statement]

Related Controls: PE-8, PM-25, SI-12
', [Supplemental_Info]=N'<p><b> Minimization</b></p>Implement the privacy principle of minimization using [Assignment: organization-defined processes].' WHERE [Requirement_Id] = 37914
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Providers of external system services (including any third-party vendors) shall comply with organizational security and privacy requirements and employ applicable security controls per policy; [a: WMATA System Implementation Statement]</li>
<li>b. Define and document organizational oversight and user roles and responsibilities regarding external system services; and [b: WMATA System Implementation Statement]</li>
<li>c. Employ the following processes, methods, and techniques to monitor control compliance by external service providers on an ongoing basis: [c: WMATA System Implementation Statement]</li>
<li>i) Leverage organizationally controlled monitoring of external system services; and/or [c.i: WMATA System Implementation Statement]</li>
<li>ii) Require annual attestation from external system service providers regarding compliance with applicable security controls. [c.ii: WMATA System Implementation Statement]</li>
Related Controls: AC-20, CA-3, CP-2, IR-4, IR-7, PL-10, PL-11, PS-7, SA-2, SA-4, SR-3, SR-5
<li>d. Security Controls Enhancement(s): [d: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>External System Services</b></p>a. Require that providers of external system services comply with organizational security and privacy requirements and employ the following controls: [Assignment: organization-defined controls];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Require providers of external system services to identify the functions, ports, protocols, and other services required for the use of such services. [WMATA System Implementation Statement]

Related Controls: CM-6, CM-7
', [Supplemental_Info]=N'<p><b> Identification of Functions, Ports, Protocols, and Services</b></p>Require providers of the following external system services to identify the functions, ports, protocols, and other services required for the use of such services: [Assignment: organization-defined external system services].' WHERE [Requirement_Id] = 37916
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Reference P/I 15.28 Cybersecurity Policy for requirements. [WMATA System Implementation Statement]

Related Controls: PM-9, PS-8, SA-8, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The policy specifically addresses the unique properties and requirements of OT and the relationship to non-OT systems. [NIST 800-82 Rev 3_Rationale: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>System and Communication Protection Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Terminate the network connection associated with a communications session at the end of the session or after 15 minutes of inactivity. [WMATA System Implementation Statement]

Related Controls: AC-17, SC-23

<b><u>NIST 800-82 Rev 3:</u></b>
Rationale for removing SC-10 from MOD and HIGH baselines: The intent of this control is effectively covered by AC-17 (9) for OT systems. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Network Disconnect</b></p>Terminate the network connection associated with a communications session at the end of the session or after [Assignment: organization-defined time period] of inactivity.' WHERE [Requirement_Id] = 37918
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Establish and manage cryptographic keys when cryptography is employed within the system in accordance with the following key management requirements: [WMATA System Implementation Statement]

<li>a. Use FIPS 140-2 compliant encryption mechanisms when protecting WMATA Restricted – Medium Sensitivity or WMATA Restricted – High Sensitivity data. Products and modules that have been validated by the AO as FIPS 140-2 compliant will be listed in the Approved Product List (APL). [a: WMATA System Implementation Statement]</li>
<li>b. All key-based data encryption systems must implement a key escrow system to guarantee access to encrypted data when needed. Key escrow data shall be routinely backed up. Recovery procedures must be tested at least annually to ensure access and availability to encrypted data. [b: WMATA System Implementation Statement]</li>
<li>c. Ensure that only authorized personnel have access to keys used to access WMATA Restricted – Medium Sensitivity or WMATA Restricted – High Sensitivity data and must ensure encryption keys are properly stored (separate from data) and available, if needed, for later decryption. Users will ensure the following: [c: WMATA System Implementation Statement]</li>
<li>i) Separation of duties or dual control procedures are enforced. [c.i: WMATA System Implementation Statement]</li>
<li>ii) Any theft or loss of electronic keys results in the notification of management. [c.ii: WMATA System Implementation Statement]</li>
<li>iii) All keys are protected against modification, substitution, and destruction, and secret/private keys are protected against unauthorized disclosure. [c.iii: WMATA System Implementation Statement]</li>
<li>iv) Cryptographic keys are replaced or retired when keys have reached the end of their life or the integrity of the key has been weakened or compromised. [c.iv: WMATA System Implementation Statement]</li>
<li>v) Physical protection is employed to protect equipment used to synchronize, store, and archive keys. [c.v: WMATA System Implementation Statement]</li>
<li>vi) An electronic key management and recovery system, including all relevant key escrow procedures, is documented and in place. This shall be handled through key escrow procedures. [c.vi: WMATA System Implementation Statement]</li>
<li>vii) Custodians of cryptographic keys formally acknowledge they understand and accept their key custodian responsibilities. [c.vii: WMATA System Implementation Statement]</li>
<li>d. Encrypted data are recoverable at any point in time, even when the person(s) who encrypted the data is no longer available. [d: WMATA System Implementation Statement]</li>
<li>e. Only digital certificates either issued by and/or approved by DMCS can be used to access the WMATA network, applications, and/or systems. [e: WMATA System Implementation Statement]</li>
Related Controls : AC-17, AU-9, AU-10, CM-3, IA-3, IA-7, SA-4, SA-8, SA-9, SC-8, SC-12, SC-13, SC-17, SC-20, SI-3, SI-7
<li>f. Security Controls Enhancement(s): [f: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Cryptographic Key Establishment and Management</b></p>Establish and manage cryptographic keys when cryptography is employed within the system in accordance with the following key management requirements: [Assignment: organization-defined requirements for key generation, distribution, storage, access, and destruction].' WHERE [Requirement_Id] = 37919
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Maintain the availability of information using key escrow systems, techniques, and procedures in the event of the loss of cryptographic keys by users. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Availability</b></p>Maintain availability of information in the event of the loss of cryptographic keys by users.' WHERE [Requirement_Id] = 37920
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Determine and document the system’s use of cryptography to include cryptographic algorithms, key sizes, solutions, and solution components; and [a: WMATA System Implementation Statement]</li>
<li>b. Implement cryptography leveraging the latest versions of FIPS 140-2, NIST SP800-131A, or NSA CNSA Suite encryption at the direction of the AO. [b: WMATA System Implementation Statement]</li>

Related Controls: AC-2, AC-3, AC-7, AC-17, AC-18, AC-19, AU-9, AU-10, CM-11, CP-9, IA-3, IA-5, IA-7, MA-4, MP-2, MP-4, MP-5, SA-4, SA-8, SA-9, SC-8, SC-12, SC-20, SC-23, SC-28, SI-3, SI-7
', [Supplemental_Info]=N'<p><b>Cryptographic Protection</b></p>a. Determine the [Assignment: organization-defined cryptographic uses]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Prohibit remote activation of collaborative computing devices and applications including remote meeting devices and applications, networked whiteboards, cameras, and microphones unless authorized by the AO. Only devices and applications listed on the organizational APL may be used. [a: WMATA System Implementation Statement]</li>
<li>b. Provide an explicit indication of use to users physically present at the devices. [b: WMATA System Implementation Statement]</li>

Related Controls: AC-21
', [Supplemental_Info]=N'<p><b>Collaborative Computing Devices and Applications</b></p>a. Prohibit remote activation of collaborative computing devices and applications with the following exceptions: [Assignment: organization-defined exceptions where remote activation is to be allowed]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Obtain public key certificates from DMCS-approved service provider(s); and [a: WMATA System Implementation Statement]</li>
<li>b. Include only approved trust anchors in trust stores or certificate stores managed by the organization. [b: WMATA System Implementation Statement]</li>

Related Controls: AU-10, IA-5, SC-12
', [Supplemental_Info]=N'<p><b>Public Key Infrastructure Certificates</b></p>a. Issue public key certificates under an [Assignment: organization-defined certificate policy] or obtain public key certificates from an approved service provider; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Define acceptable and unacceptable mobile code and mobile code technologies. Only AO- approved technologies are allowed and shall be developed in accordance with Control 3.4, Configuration Management, Section 6, “CM-6 Configuration Settings”. [a: WMATA System Implementation Statement]</li>
<li>b. Authorize, monitor, and control the use of mobile code within the system. [b: WMATA System Implementation Statement]</li>
Related Controls: AU-2, AU-12, CM-2, CM-6, SI-3
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Mobile Code</b></p>a. Define acceptable and unacceptable mobile code and mobile code technologies; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Unapproved mobile code and mobile code technologies shall be removed from the WMATA environment. The System Owner shall document a POA&M identifying corrective actions and associated timeline subject to the approval of the AO. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Identify Unacceptable Code and Take Corrective Actions</b></p>Identify [Assignment: organization-defined unacceptable mobile code] and take [Assignment: organization-defined corrective actions].' WHERE [Requirement_Id] = 37925
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Verify that the acquisition, development, and use of mobile code to be deployed in the system meets DM-defined mobile code requirements in accordance with Control 3.17, Section 13, “SC-18 Mobile Code”, a. [WMATA System Implementation Statement]

Related Controls: SC-18
' WHERE [Requirement_Id] = 37926
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Prevent the download and execution of unapproved mobile code and mobile code technologies. [WMATA System Implementation Statement]
' WHERE [Requirement_Id] = 37927
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Prevent the automatic execution of mobile code in software applications and enforce the following actions prior to executing the code: [WMATA System Implementation Statement]

<li>(1) Email - prompt users prior to opening attachments or clicking on web links; [1: WMATA System Implementation Statement]</li>
<li>(2) Software - prevent the automatic execution of mobile code by disabling auto-execute features on system components that employ portable storage devices, such as compact discs, digital versatile discs, and universal serial bus devices. [2: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Prevent Automatic Execution</b></p>Prevent the automatic execution of mobile code in [Assignment: organization-defined software applications] and enforce [Assignment: organization-defined actions] prior to executing the code.' WHERE [Requirement_Id] = 37928
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Allow execution of permitted mobile code only in confined virtual machine environments. [WMATA System Implementation Statement]

Related Controls: SI-7
', [Supplemental_Info]=N'<p><b>Allow Execution Only in Confined Environments</b></p>Allow execution of permitted mobile code only in confined virtual machine environments.' WHERE [Requirement_Id] = 37929
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Separate user functionality, including user interface services, from system management functionality. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Physical separation includes using separate systems for managing the OT than for operating OT components. Logical separation includes the use of different user accounts for administrative and operator privileges. Example compensating controls including providing increased auditing measures. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-6, SA-4, SA-8, SC-3, SC-7, SC-22, SC-32, SC-39

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Physical separation includes using separate systems for managing the OT and for operating OT components. Logical separation includes the use of different user accounts for administrative and operator privileges. Example compensating controls include providing increased auditing measures. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Separation of System and User Functionality</b></p>Separate user functionality, including user interface services, from system management functionality.' WHERE [Requirement_Id] = 37930
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Provide additional data origin authentication and integrity verification artifacts along with the authoritative name resolution data the system returns in response to external name/address resolution queries; and [a: WMATA System Implementation Statement]</li>
<li>b. Provide the means to indicate the security status of child zones and (if the child supports secure resolution services) to enable verification of a chain of trust among parent and child domains when operating as part of a distributed, hierarchical namespace. [b: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> The use of secure name/address resolution services should be determined only after careful consideration and after verification that it does not adversely impact the operational performance of the OT.  [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AU-10, SC-8, SC-12, SC-13, SC-21, SC-22

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Secure name/address resolution services should only be used after careful consideration and verification that they do not adversely impact the operational performance of the OT. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Secure Name/address Resolution Service  (authoritative Source)</b></p>a. Provide additional data origin authentication and integrity verification artifacts along with the authoritative name resolution data the system returns in response to external name/address resolution queries; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Request and perform data origin authentication and data integrity verification on the name/address resolution responses the system receives from authoritative sources. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> The use of secure name/address resolution services should be determined only after careful consideration and after verification that it does not adversely impact the operational performance of the OT. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: SC-20, SC-22

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Secure name/address resolution services should only be used after careful consideration and verification that they do not adversely impact the operational performance of the OT. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Secure Name/address Resolution Service  (recursive or Caching Resolver)</b></p>Request and perform data origin authentication and data integrity verification on the name/address resolution responses the system receives from authoritative sources.' WHERE [Requirement_Id] = 37932
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Ensure the systems that collectively provide name/address resolution service for an organization are fault-tolerant and implement internal and external role separation. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> The use of secure name/address resolution services should be determined only after careful consideration and after verification that it does not adversely impact the operational performance of the OT.  [OT Systems Only: WMATA System Implementation Statement]

Related Controls: SC-2, SC-20, SC-21, SC-24

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Secure name/address resolution services should only be used after careful consideration and verification that they do not adversely impact the operational performance of the OT. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Architecture and Provisioning for Name/address Resolution Service</b></p>Ensure the systems that collectively provide name/address resolution service for an organization are fault-tolerant and implement internal and external role separation.' WHERE [Requirement_Id] = 37933
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Protect the authenticity of communications sessions.  [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Example compensating controls include auditing measures.  [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AU-10, SC-8, SC-10

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Example compensating controls include auditing measures.  [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Session Authenticity</b></p>Protect the authenticity of communications sessions.' WHERE [Requirement_Id] = 37934
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Systems shall fail to a known, secure system state following failures on system components while preserving system state information. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> The organization selects an appropriate failure state. Preserving OT state information includes consistency among OT state variables and the physical state which the OT represents (e.g., whether valves are open or closed, communication permitted or blocked, continue operations).  [OT Systems Only: WMATA System Implementation Statement]

Related Controls: CP-2, CP-4, CP-10, CP-12, SA-8, SC-7, SC-22, SI-13

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The organization selects an appropriate failure state. Preserving OT state information includes consistency among OT state variables and the physical state that the OT represents (e.g., whether valves are open or closed, communication permitted or blocked, continue operations).  [NIST 800-82 Rev 3_OT Discussion: WMATA System Implementation Statement]

Rationale for adding SC-24 to MOD baseline: As part of the architecture and design of the OT, the organization selects an appropriate failure state in accordance with the function performed by the OT and the operational environment. The ability to choose the failure mode for the physical part of OT differentiates OT systems from other IT systems. This choice may be a significant influence in mitigating the impact of a failure since it may be disruptive to ongoing physical processes (e.g., valves failing in closed position may adversely affect system cooling). [NIST 800-82 Rev 3_Rationale: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Fail in Known State</b></p>Fail to a [Assignment: organization-defined known system state] for the following failures on the indicated components while preserving [Assignment: organization-defined system state information] in failure: [Assignment: list of organization-defined types of system failures on organization-defined system components].' WHERE [Requirement_Id] = 37935
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Protect the confidentiality and integrity of information at rest. [a: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> The use of cryptographic mechanisms is implemented only after careful consideration and after verification that it does not adversely impact the operational performance of the OT. Cryptographic mechanisms may not be feasible on certain OT devices. In these cases, compensating controls may be relocating the data to a location that does not support cryptographic mechanisms.  [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AC-3, AC-4, AC-6, AC-19, CA-7, CM-3, CM-5, CM-6, CP-9, MP-4, MP-5, PE-3, SC-8, SC-12, SC-13, SI-3, SI-7, SI-16
<li>b. Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Cryptographic mechanisms are implemented only after careful consideration and verification that they do not adversely impact the operational performance of the OT. When cryptographic mechanisms are not feasible on certain OT devices, compensating controls may include relocating the data to a location that does support cryptographic mechanisms.  [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Protection of Information at Rest</b></p>Protect the [Selection (one or more): confidentiality; integrity] of the following information at rest: [Assignment: organization-defined information at rest].' WHERE [Requirement_Id] = 37936
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement cryptographic mechanisms to prevent unauthorized disclosure and modification of sensitive information on system components or media commensurate with the security category or classification of the information in accordance with Control 3.8 Data Sensitivity. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Cryptographic Protection</b></p>Implement cryptographic mechanisms to prevent unauthorized disclosure and modification of the following information at rest on [Assignment: organization-defined system components or media]: [Assignment: organization-defined information].' WHERE [Requirement_Id] = 37937
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Isolate security functions from non-security functions. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Organizations consider implementing this control when designing new architectures or updating existing components. An example compensating control includes access controls. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-3, AC-6, AC-25, CM-2, CM-4, SA-4, SA-5, SA-8, SA-15, SA-17, SC-2, SC-7, SC-32, SC-39, SI-16

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Organizations consider implementing this control when designing new architectures or updating existing components. An example compensating control includes access controls. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Security Function Isolation</b></p>Isolate security functions from nonsecurity functions.' WHERE [Requirement_Id] = 37938
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Partition the system into [Assignment: organization-defined system components] residing in separate [Selection: physical; logical] domains or environments based on [Assignment: organization-defined circumstances for physical or logical separation of components]. [WMATA System Implementation Statement]

<li>a. Security Controls Enhancement(s): [a: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>System Partitioning</b></p>Partition the system into [Assignment: organization-defined system components] residing in separate [Selection: physical; logical] domains or environments based on [Assignment: organization-defined circumstances for physical or logical separation of components].' WHERE [Requirement_Id] = 37939
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Partition privileged functions into separate physical domains. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Organizations consider separate physical domains for privileged functions such as those affecting security and safety. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-19, SC-12, SC-13

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Organizations consider separate physical domains for privileged functions, such as those that affect security and safety.  [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>System Partitioning | Separate Physical Domains for Privileged Functions</b></p>Partition privileged functions into separate physical domains.' WHERE [Requirement_Id] = 37940
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Maintain a separate execution domain for each executing system process. [WMATA System Implementation Statement]

<b><u>OT System Only:</u></b> Example compensating controls include partition processes to separate platforms. [OT Systems Only: WMATA System Implementation Statement] 

Related Controls: AC-3, AC-4, AC-6, AC-25, SA-8, SC-2, SC-3, SI-16

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Example compensating controls include partition processes to separate platforms. 
', [Supplemental_Info]=N'<p><b>Process Isolation</b></p>Maintain a separate execution domain for each executing system process.' WHERE [Requirement_Id] = 37941
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Prevent unauthorized and unintended information transfer via shared system resources. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> This control is especially relevant for OT systems that process confidential data. Example compensating controls include architecting the use of the OT to prevent sharing system resources. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-3, AC-4, SA-8

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: This control is especially relevant for OT systems that process confidential data. Example compensating controls include engineering the use of the OT to prevent sharing system resources. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Information in Shared System Resources</b></p>Prevent unauthorized and unintended information transfer via shared system resources.' WHERE [Requirement_Id] = 37942
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'[Selection: Physically; Logically] disable or remove [Assignment: organization-defined connection ports or input/output devices] on the following systems or system components: [Assignment: organization-defined systems or system components]. [WMATA System Implementation Statement]
	
Related Controls: AC-20, MP-7

<b><u>NIST 800-82 Rev 3:</u></b>
Rationale for adding SC-41 to LOW, MOD, and HIGH baselines: OT functionality is generally defined in advance and does not change often.  [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Port and I/O Device Access</b></p>[Selection: Physically; Logically] disable or remove [Assignment: organization-defined connection ports or input/output devices] on the following systems or system components: [Assignment: organization-defined systems or system components].' WHERE [Requirement_Id] = 37943
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a) Synchronize system clocks within and between systems and system components. [a: WMATA System Implementation Statement]</li>
<b><u>OT System Only:</u></b> Organizations coordinate time synchronization on OT to allow for accurate troubleshooting and forensics. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AC-3, AU-8, IA-2, IA-8
<li>b) Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Organizations coordinate time synchronization on OT to allow for accurate troubleshooting and forensics. [NIST 800-82 Rev 3_OT Discussion: WMATA System Implementation Statement]

Rationale for adding SC-45 to LOW, MOD, and HIGH baselines: Organizations may find relative system time beneficial for many OT systems to ensure the safe and reliable delivery of essential functions. Time synchronization can also make root cause analysis more efficient by ensuring that audit logs from different systems are aligned so that organizations have an accurate view of events across multiple systems when the logs are aggregated.  [NIST 800-82 Rev 3_Rationale: WMATA System Implementation Statement]

', [Supplemental_Info]=N'<p><b>System Time Synchronization</b></p>Synchronize system clocks within and between systems and system components.' WHERE [Requirement_Id] = 37944
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Compare the internal system clocks [Assignment: organization-defined frequency] with [Assignment: organization-defined authoritative time source]; and [1: WMATA System Implementation Statement]</li>
<li>(2) Synchronize the internal system clocks to the authoritative time source when the time difference is greater than [Assignment: organization-defined time period]. [2: WMATA System Implementation Statement]</li>
	
<b><u>OT Systems Only:</u></b> Syncing with an authoritative time source may be selected as a control when data is being correlated across organizational boundaries. OT employ suitable mechanisms (e.g., GPS, IEEE 1588) for time stamps.  [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Syncing with an authoritative time source may be selected as a control when data is being correlated across organizational boundaries. OT employ suitable mechanisms (e.g., GPS, IEEE 1588) for timestamps.  [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>System Time Synchronization | Synchronization with Authoritative Time Source</b></p>(a) Compare the internal system clocks [Assignment: organization-defined frequency] with [Assignment: organization-defined authoritative time source]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Establish [Assignment: organization-defined alternate communications paths] for system operations organizational command and control. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Organization considers which systems require alternate communications paths to ensure a loss of communication does not lead to an unacceptable loss of view, control or safety event. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: CP-2, CP-8

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Organizations consider which systems require alternate communication paths to ensure that a loss of communication does not lead to an unacceptable loss of view or control or to a safety event. [NIST 800-82 Rev 3_OT Discussion: WMATA System Implementation Statement]

Rationale for adding SC-47 to HIGH baseline: For continuity of operations during an incident, organizations should consider establishing alternate communications paths for command-and-control purposes to continue to operate and take appropriate actions for high-impact systems when the loss of availability or integrity may result in severe or catastrophic adverse impacts, including impacts to safety and critical service delivery. [NIST 800-82 Rev 3_Rationale: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Alternate Communication Paths</b></p>Establish [Assignment: organization-defined alternate communications paths] for system operations organizational command and control.' WHERE [Requirement_Id] = 37946
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Protect against and limit the effects of denial-of-service events; and [a: WMATA System Implementation Statement]</li>
<li>b. Employ the controls to achieve the denial-of-service objective to include, but not limited to: [b: WMATA System Implementation Statement]</li>
<li>i) Requiring implementation of enterprise boundary protection devices (e.g., firewall, web application firewall, etc.) at all network access points; [b.i: WMATA System Implementation Statement]</li>
<li>ii) Requiring system integration with enterprise boundary protection devices; [b.ii: WMATA System Implementation Statement]</li>
<li>iii) Periodically scanning network and devices for malware; [b.iii: WMATA System Implementation Statement]</li>
<li>iv) Providing detection and monitoring capabilities to detect indicators of attack against WMATA; [b.iv: WMATA System Implementation Statement]</li>
<li>v) Monitoring system resource utilization to ensure sufficient capacity; [b.v: WMATA System Implementation Statement]</li>
<li>vi) Managing excess capacity, bandwidth, or other redundancy; [b.vi: WMATA System Implementation Statement]</li>
<li>vii) Deploying authentication mechanisms wherever technically configurable; [b.vii: WMATA System Implementation Statement]</li>
<li>viii) Designing and implementing networks for maximum resiliency that incorporate high availability (e.g., load balancing, redundant systems, etc.) and automated disaster recovery (e.g., automated failover and isolated restoration capabilities); [b.viii: WMATA System Implementation Statement]</li>
<li>ix) Developing specific plans for responding to DoS and DDoS attacks in the WMATA incident response plan, a system’s disaster recovery and continuity of operations plan, and the enterprise business continuity plan; [b.ix: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Some OT equipment may be more susceptible to DoS attacks due to the time criticality of some OT applications. Risk-based analysis informs prioritization of DoS protection and establishment of policy and procedure. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: CP-2, IR-4, SC-7

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Some OT equipment may be more susceptible to DoS attacks due to the time criticality of some OT applications. Risk-based analysis informs the prioritization of DoS protection and the establishment of policy and procedure. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Denial-of-service Protection</b></p>a. [Selection: Protect against; Limit] the effects of the following types of denial-of-service events: [Assignment: organization-defined types of denial-of-service events]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a) Employ hardware-based, write-protect for [Assignment: organization-defined system firmware components]; and [a: WMATA System Implementation Statement]</li>
<li>b) Implement specific procedures for [Assignment: organization-defined authorized individuals] to manually disable hardware write-protect for firmware modifications and re-enable the write-protect prior to returning to operational mode. [b: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Some OT systems support write-protection by implementing physical key switches or write-protect switches. Organizations define the systems for which write-protection will be enables and develop a process for how to take the system out of write-protect mode. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Some OT systems support write-protection by implementing physical key switches or write-protect switches. Organizations define the systems for which write-protection will be enabled and develop a process for how to take the system out of write-protect mode. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
' WHERE [Requirement_Id] = 37948
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Monitor and control communications at the external managed interfaces to the system and at key internal managed interfaces (e.g., gateways, routers, firewalls, guards, network-based malicious code analysis, virtualization systems, or encrypted tunnels) within the system; [a: WMATA System Implementation Statement]</li>
<li>b. Implement subnetworks for publicly accessible system components that are physically and logically separated from internal organizational networks; and [b: WMATA System Implementation Statement]</li>
<li>c. Connect to external networks or systems only through managed interfaces consisting of boundary protection devices arranged in accordance with an organizational security and privacy architecture. [c: WMATA System Implementation Statement]</li>
Related Controls: AC-4, AC-17, AC-18, AC-19, AC-20, CA-3, CM-2, CM-4, CM-7, CM-10, CP-8, CP-10, IR-4, MA-4, PE-3, PL-8, PM-12, SA-8, SA-17, SC-5, SC-32
<li>d. Security Controls Enhancement(s): [d: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Boundary Protection</b></p>a. Monitor and control communications at the external managed interfaces to the system and at key internal managed interfaces within the system;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Only allow incoming communications from [Assignment: organization-defined authorized sources] to be routed to [Assignment: organization-defined authorized destinations]. [WMATA System Implementation Statement]

Related Controls: AC-3
', [Supplemental_Info]=N'<p><b> Restrict Incoming Communications Traffic</b></p>Only allow incoming communications from [Assignment: organization-defined authorized sources] to be routed to [Assignment: organization-defined authorized destinations].' WHERE [Requirement_Id] = 37950
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Prevent systems from entering unsecure states in the event of an operational failure of a boundary protection device. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> The organization selects an appropriate failure mode (e.g., permit or block all communications). [OT Systems Only: WMATA System Implementation Statement]

Related Controls: CP-2, CP-12, SC-24

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The organization selects an appropriate failure mode (e.g., permit or block all communications).  [NIST 800-82 Rev 3_OT Discussion: WMATA System Implementation Statement]

Rationale for adding SC-7 (18) to MOD baseline: The ability to choose the failure mode for the physical part of the OT differentiates the OT from other IT systems. This choice may be a significant influence in mitigating the impact of a failure.  [NIST 800-82 Rev 3_Rationale: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Boundary Protection | Fail Secure</b></p>Prevent systems from entering unsecure states in the event of an operational failure of a boundary protection device.' WHERE [Requirement_Id] = 37951
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Provide the capability to dynamically isolate [Assignment: organization-defined system components] from other system components. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Dynamic Isolation and Segregation</b></p>Provide the capability to dynamically isolate [Assignment: organization-defined system components] from other system components.' WHERE [Requirement_Id] = 37952
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Employ additional boundary protection mechanisms to isolate system components supporting critical or essential missions and/or business functions (e.g., financial systems, health systems, payment card systems, industrial control systems, etc.). [WMATA System Implementation Statement]

Related Controls: CA-9
', [Supplemental_Info]=N'<p><b> Isolation of System Components</b></p>Employ boundary protection mechanisms to isolate [Assignment: organization-defined system components] supporting [Assignment: organization-defined missions and/or business functions].' WHERE [Requirement_Id] = 37953
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'For systems that process PII: [WMATA System Implementation Statement]

<li>(1) Apply the following processing rules to data elements of personally identifiable information: [1: WMATA System Implementation Statement]</li>
<li>(a) Implement Data Loss Prevention technologies and processes designed to enforce the proper handling of PII, as defined in P/I 9.3 Public Access to Records Policy and Control 3.8 Data Sensitivity. [1.a: WMATA System Implementation Statement]</li>
<li>(2) Monitor for permitted processing at the external interfaces to the system and at key internal boundaries within the system; [2: WMATA System Implementation Statement]</li>
<li>(3) Document each processing exception and require AO approval; and [3: WMATA System Implementation Statement]</li>
<li>(4) Review and remove exceptions that are no longer supported. [4: WMATA System Implementation Statement]</li>

Related Controls: PT-2
', [Supplemental_Info]=N'<p><b> Personally Identifiable Information</b></p>For systems that process personally identifiable information:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Prohibit the direct connection of [Assignment: organization-defined system] to a public network. [WMATA System Implementation Statement]
	
<b><u>OT Systems Only:</u></b> Organizations consider the need for a direct connection to a public network for each OT system, including potential benefits, additional threat vectors, and potential adverse impact specifically relevant to what type of public access that connection introduces. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Organizations consider the need for a direct connection to a public network for each OT system, including potential benefits, additional threat vectors, and potential adverse impacts that are specifically relevant to the type of public access that connection introduces.  [NIST 800-82 Rev 3_OT Discussion: WMATA System Implementation Statement]

Rationale for adding SC-7 (28) to LOW, MOD, and HIGH baselines: Access to OT should be restricted to the individuals required for operation. A connection made from the OT directly to a public network has limited applicability in OT environments but significant potential risk.  [NIST 800-82 Rev 3_Rationale: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Boundary Protection | Connections to Public Networks </b></p>Prohibit the direct connection of [Assignment: organization-defined system] to a public network.' WHERE [Requirement_Id] = 37955
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement [Selection: physically; logically] separate subnetworks to isolate the following critical system components and functions: [Assignment: organization-defined critical system components and functions]. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Subnets can be used to isolate low-risk functions from higher-risk ones, and control from safety. Subnets should be considered along with other boundary protection technologies. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Subnets can be used to isolate low-risk functions from higher-risk ones and control from safety. Subnets should be considered along with other boundary protection technologies. [NIST 800-82 Rev 3_OT Discussion: WMATA System Implementation Statement]

Rationale for adding SC-7 (29) to LOW, MOD, and HIGH baselines: In OT environments, subnets and zoning are common practices for isolating functions. [NIST 800-82 Rev 3_Rationale: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Boundary Protection | Separate Subnets to Isolate Functions </b></p>Implement [Selection: physically; logically] separate subnetworks to isolate the following critical system components and functions: [Assignment: organization-defined critical system components and functions].' WHERE [Requirement_Id] = 37956
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Limit the number of external network connections to the system. External network connections must be documented via a System Architecture/Topology/Data Flow and PPS/M. An ISA may be required at the discretion of the AO. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Access Points</b></p>Limit the number of external network connections to the system.' WHERE [Requirement_Id] = 37957
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Implement a managed interface for each external telecommunication service; [1: WMATA System Implementation Statement]</li>
<li>(2) Establish a traffic flow policy for each managed interface; [2: WMATA System Implementation Statement]</li>
<li>(3) Protect the confidentiality and integrity of the information being transmitted across each interface; [3: WMATA System Implementation Statement]</li>
<li>(4) Document each exception to the traffic flow policy with a supporting mission or business need and the duration of that need; [4: WMATA System Implementation Statement]</li>
<li>(5) Review exceptions to the traffic flow policy at least semi-annually and remove exceptions that are no longer supported by an explicit mission or business need; [5: WMATA System Implementation Statement]</li>
<li>(6) Prevent unauthorized exchange of control plane traffic (e.g., Border Gateway Protocol (BGP) routing, Domain Name System (DNS), and management protocols) with external networks; [6: WMATA System Implementation Statement]</li>
<li>(7) Publish information to enable remote networks to detect unauthorized control plane traffic from internal networks; and (8) Filter unauthorized control plane traffic from external networks. [7: WMATA System Implementation Statement]</li>
<li>(8) Filter unauthorized control plane traffic from external networks. [8: WMATA System Implementation Statement]</li>

Related Controls: AC-3, SC-8, SC-20, SC-21, SC-22
', [Supplemental_Info]=N'<p><b> External Telecommunications Services</b></p>(a) Implement a managed interface for each external telecommunication service;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Deny network communications traffic by default. Any explicit rules to allow network communications traffic by default or exception shall be authorized by the AO. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Deny by Default — Allow by Exception</b></p>Deny network communications traffic by default and allow network communications traffic by exception [Selection (one or more): at managed interfaces; for [Assignment: organization-defined systems]].' WHERE [Requirement_Id] = 37959
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Prevent split tunneling for remote devices connecting to organizational systems unless the split tunnel is authorized by the AO. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Split Tunneling for Remote Devices</b></p>Prevent split tunneling for remote devices connecting to organizational systems unless the split tunnel is securely provisioned using [Assignment: organization-defined safeguards].' WHERE [Requirement_Id] = 37960
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Route internal communications traffic to external networks through authenticated proxy servers at managed interfaces. [WMATA System Implementation Statement]

<li>(1) Inappropriate Web Content and Filtering [1: WMATA System Implementation Statement]</li>
<li>(a) The use of Metro information technology systems to access inappropriate web content is strictly prohibited and will be blocked. Any user attempting to access such content will be subject to disciplinary action, up to and including termination of employment. [1.a: WMATA System Implementation Statement]</li>
<li>(b) Web content filtering shall be employed to prevent access to internet sites and web pages that are non-business related. Filtering shall disallow, segregate, or reject certain internet listings. [b: WMATA System Implementation Statement]</li>

The following web content categories will be blocked:
<li>(i) Sexually explicit and obscene material (including any and all forms of pornography, adult humor, profanity, dating services/personals); [b.i: WMATA System Implementation Statement]</li>
<li>(ii) Websites selling drugs, firearms, and other weapons; [b.ii: WMATA System Implementation Statement]</li>
<li>(iii) Websites advocating or involving terrorism, hacking, gambling, fraud or any other criminal conduct or enterprises; [b.iii: WMATA System Implementation Statement]</li>
<li>(iv) Harassing material, including racial, religious, national origin, sexual or sexual orientation harassment; and/or [b.iv: WMATA System Implementation Statement]</li>
<li>(v) Information that violates federal laws on discrimination. [b.v: WMATA System Implementation Statement]</li>
<li>(c) Miscategorized websites and requests appropriate and necessary business access to restricted websites shall be referred to the DM Helpdesk. [c: WMATA System Implementation Statement]</li>
<li>(d) Website categorization decisions and exceptions to access restricted websites shall be managed by DMCS. [d: WMATA System Implementation Statement]</li>

Related Controls: AC-3
', [Supplemental_Info]=N'<p><b> Route Traffic to Authenticated Proxy Servers</b></p>Route [Assignment: organization-defined internal communications traffic] to [Assignment: organization-defined external networks] through authenticated proxy servers at managed interfaces.' WHERE [Requirement_Id] = 37961
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Protect the confidentiality and integrity of transmitted information. [a: WMATA System Implementation Statement]</li>
Related Controls: AC-17, AC-18, AU-10, IA-3, IA-8, MA-4, PE-4, SA-4, SA-8, SC-7, SC-20, SC-23, SC-28
<li>b. Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Transmission Confidentiality and Integrity</b></p>Protect the [Selection (one or more): confidentiality; integrity] of transmitted information.' WHERE [Requirement_Id] = 37962
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement cryptographic mechanisms to prevent unauthorized disclosure of information and detect changes to information during transmission. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> When transmitting across untrusted network segments, the organization explores all possible cryptographic integrity mechanisms (e.g., digital signature, hash function) to protect confidentiality and integrity of the information. Example compensating controls include physical protections, such as a secure conduit (e.g., point-to-point link) between two system components. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: SC-12, SC-13

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: When transmitting across untrusted network segments, the organization explores all possible cryptographic integrity mechanisms (e.g., digital signature, hash function) to protect the confidentiality and integrity of the information. Example compensating controls include physical protections, such as a secure conduit (e.g., point-to-point link) between two system components.  [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Transmission Confidentiality and Integrity | Cryptographic Protection</b></p>Implement cryptographic mechanisms to [Selection (one or more): prevent unauthorized disclosure of information; detect changes to information] during transmission.' WHERE [Requirement_Id] = 37963
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Reference P/I 15.28 Cybersecurity Policy for requirements. [WMATA System Implementation Statement]

Related Controls: PM-9, PS-8, SA-8, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The policy specifically addresses the unique properties and requirements of OT and the relationship to non-OT systems. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>System and Information Integrity Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Character set, length, numerical range, and acceptable values; [a: WMATA System Implementation Statement]</li>
<li>b. Username and password combinations; [b: WMATA System Implementation Statement]</li>
<li>c. Attributes used to validate a password reset request (e.g., security questions); [c: WMATA System Implementation Statement]</li>
<li>d. PII (excluding unique username identifiers provided as a normal part of a transactional record) or other Sensitive Information in accordance with Control 3.8 Data Sensitivity; [d: WMATA System Implementation Statement]</li>
<li>e. Content related to internal security functions: private encryption keys, whitelist or blacklist rules, object permission attributes and settings; [e: WMATA System Implementation Statement]</li>
<li>f. Content received from system interfaces that is passed to interpreters that can unintentionally be interpreted as commands and to prevent cross-site scripting and injection attacks; [f: WMATA System Implementation Statement]</li>
<li>g. User-supplied data is validated, filtered, and sanitized; [g: WMATA System Implementation Statement]</li>
<li>h. Context-aware escaping is used for dynamic queries and non-parameterized calls when used directly in the interpreter; [h: WMATA System Implementation Statement]</li>
<li>i. Hostile data is not used within object-relational mapping search parameters to extract additional, sensitive records; and [i: WMATA System Implementation Statement]</li>
<li>j. Hostile data is not directly used or concatenated, such that the SQL or command contains both structure and hostile data in dynamic queries, commands, or stored procedures. [j: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Information Input Validation</b></p>Check the validity of the following information inputs: [Assignment: organization-defined information inputs to the system].' WHERE [Requirement_Id] = 37965
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Generate error messages that provide information necessary for corrective actions without revealing information that could be exploited; and [a: WMATA System Implementation Statement]</li>
<li>b. Reveal error messages only to users and administrators in accordance with assigned roles and responsibilities. [b: WMATA System Implementation Statement]</li>

Related Controls: AU-2, AU-3, SI-2
', [Supplemental_Info]=N'<p><b>Error Handling</b></p>a. Generate error messages that provide information necessary for corrective actions without revealing information that could be exploited; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Manage and retain information within the system and information output from the system in accordance with applicable laws, directives, regulations, policies, standards, guidelines and operational requirements. [a: WMATA System Implementation Statement]</li>
Related Controls: All XX-1 Controls, AU-5, AU-11, CA-2, CA-3, CA-5, CA-6, CA-7, CA-9, CM-5, CM-9, CP-2, IR-8, MP-2, MP-3, MP-4, MP-6, PL-2, PL-4, PM-4, PM-8, PM-9, PS-2, PS-6, PT-2, PT-3, RA-2, RA-3, SA-5, SA-8, SR-2
<li>b. Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Information Management and Retention</b></p>Manage and retain information within the system and information output from the system in accordance with applicable laws, executive orders, directives, regulations, policies, standards, guidelines and operational requirements.' WHERE [Requirement_Id] = 37967
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Limit Personally Identifiable Information (PII) being processed in the information life cycle (i.e. information creation, collection, use, processing, storage, maintenance, dissemination, disclosure, and disposition) to the minimum necessary to enable the purpose of the system. [WMATA System Implementation Statement]

Related Controls: PM-25
', [Supplemental_Info]=N'<p><b> Limit Personally Identifiable Information Elements</b></p>Limit personally identifiable information being processed in the information life cycle to the following elements of personally identifiable information: [Assignment: organization-defined elements of personally identifiable information].' WHERE [Requirement_Id] = 37968
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Use the following techniques to minimize the use of Sensitive Information for research, testing, or training: [WMATA System Implementation Statement]

<li>(1) De-identification or subsetting of live production data (“live data”); or [1: WMATA System Implementation Statement]</li>
<li>(2) Use of synthetic data. [2: WMATA System Implementation Statement]</li>

Related Controls: PM-22, PM-25, SI-19
', [Supplemental_Info]=N'<p><b> Minimize Personally Identifiable Information in Testing, Training, and Research</b></p>Use the following techniques to minimize the use of personally identifiable information for research, testing, or training: [Assignment: organization-defined techniques].' WHERE [Requirement_Id] = 37969
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Use techniques to dispose of, destroy, or erase information following the retention period applicable to each type of data. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Information Disposal</b></p>Use the following techniques to dispose of, destroy, or erase information following the retention period: [Assignment: organization-defined techniques].' WHERE [Requirement_Id] = 37970
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Determine mean time to failure (MTTF) for the following system components in specific environments of operation: [Assignment: organization-defined system components]; and [a: WMATA System Implementation Statement]</li>
<li>b. Provide substitute system components and a means to exchange active and standby components in accordance with the following criteria: [Assignment: organization-defined MTTF substitution criteria]. [b: WMATA System Implementation Statement]</li>
	
Related Controls: CP-2, CP-10, MA-2, MA-6, SA-8

<b><u>NIST 800-82 Rev 3:</u></b>
Rationale for adding SI-13 control to HIGH baseline: OT are designed and built with certain boundary conditions, design parameters, and assumptions about their environment and mode of operation. OT may run much longer than conventional systems, allowing latent flaws that are not manifest in other environments to become effective. For example, integer overflow might never occur in systems that are re-initialized more frequently than the occurrence of the overflow. Experience and forensic studies of anomalies and incidents in OT can lead to the identification of emergent properties that were previously unknown, unexpected, or unanticipated. Preventative and restorative actions (e.g., restarting the system or application) are prudent but may not be acceptable in OT for operational reasons. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Predictable Failure Protection</b></p>a. Determine mean time to failure (MTTF) for the following system components in specific environments of operation: [Assignment: organization-defined system components]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement controls to protect the system memory from unauthorized code execution through data execution prevention controls that are either hardware-enforced or software-enforced such as data execution prevention, address space layout randomization, and implementation of secure configuration settings. [WMATA System Implementation Statement]

Related Controls: AC-25, SC-3, SI-7
', [Supplemental_Info]=N'<p><b>Memory Protection</b></p>Implement the following controls to protect the system memory from unauthorized code execution: [Assignment: organization-defined controls].' WHERE [Requirement_Id] = 37972
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement the indicated fail-safe procedures when the indicated failures occur: [Assignment: organization-defined list of failure conditions and associated fail-safe procedures]. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> The selected failure conditions and corresponding procedures may vary among baselines. The same failure event may trigger different responses, depending on the impact level mechanical and analog systems can be sued to provide mechanisms to ensure fail-safe procedures. Fail-safe states should incorporate potential impacts to human safety, physical systems, and the environment. Related controls: CP-6. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: CP-6, CP-12, SC-24, SI-13

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The selected failure conditions and corresponding procedures may vary among baselines. The same failure event may trigger different responses, depending on the impact level. Mechanical and analog systems can be used to provide mechanisms to ensure fail-safe procedures. Fail-safe states should incorporate potential impacts to human safety, physical systems, and the environment. A related controls is CP-6. [NIST 800-82 Rev 3_OT Discussion: WMATA System Implementation Statement] 

Rationale for adding SI-17 to LOW, MOD, and HIGH baselines: This control provides a structure for the organization to identify its policy and procedures for dealing with failures and other incidents. Creating a written record of the decision process for selecting incidents and appropriate responses in light of a changing environment of operations is part of risk management.  [NIST 800-82 Rev 3_Rationale: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Fail-Safe Procedures</b></p>Implement the indicated fail-safe procedures when the indicated failures occur: [Assignment: organization-defined list of failure conditions and associated fail-safe procedures].' WHERE [Requirement_Id] = 37973
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Check the accuracy, relevance, timeliness, and completeness of PII across the information life cycle annually; and [a: WMATA System Implementation Statement]</li>
<li>b. Correct or delete inaccurate or outdated personally identifiable information. [b: WMATA System Implementation Statement]</li>
<li>c. Individual requests for access or amendment to PII will be processed according to the procedures set forth in P/I 9.2 Privacy Policy sections 7.2-7.5. [c: WMATA System Implementation Statement]</li>
Related Controls: PM-22, PM-24, PT-2, SI-4
<li>d. Security Controls Enhancement(s): [d: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Personally Identifiable Information Quality Operations</b></p>a. Check the accuracy, relevance, timeliness, and completeness of personally identifiable information across the information life cycle [Assignment: organization-defined frequency]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>1) Correct or delete PII upon request by individuals or their designated representatives. Discretion shall be used when determining if PII is to be corrected or deleted based on the scope of request, the change(s) sought, the impact of the change(s), and applicable law, regulation, and policy. [1: WMATA System Implementation Statement]</li>
<li>2) Consult with the Privacy Officer and Legal Counsel regarding appropriate measures to be taken for requests to correct or delete PII based on balancing the rights of the individual with the needs of the organization. [2: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b> Individual Requests</b></p>Correct or delete personally identifiable information upon request by individuals or their designated representatives.' WHERE [Requirement_Id] = 37975
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Remove sensitive information about individuals that can be used to distinguish or trace an individual’s identity (e.g., name, social security number, date and place of birth, mother’s maiden name, or biometric records, financial records, educational records, etc.) from datasets unless otherwise authorized by the Privacy Administrator under P/I 9.2 Privacy Policy and AO. See also Control 3.18 System and Information Integrity, Section 11, (a), (ii), “S1-12 (2) Minimize Sensitive Information in Testing, Training, and Research”; [a: WMATA System Implementation Statement]</li>
<li>b. Personally identifiable information is removed from datasets by trained individuals when such information is not (or no longer) necessary to satisfy the requirements envisioned for the data (e.g., if the dataset is only used to produce aggregate statistics, the identifiers that are not needed for producing those statistics are removed); and [b: WMATA System Implementation Statement]</li>
<li>c. Evaluate annually for the effectiveness of de-identification. [c: WMATA System Implementation Statement]</li>

Related Controls: MP-6, PM-22, PM-23, PM-24, RA-2, SI-12
', [Supplemental_Info]=N'<p><b>De-Identification</b></p>a. Remove the following elements of personally identifiable information from datasets: [Assignment: organization-defined elements of personally identifiable information]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Identify, report, and correct system flaws; [a: WMATA System Implementation Statement]</li>
<li>b. Test software and firmware updates related to flaw remediation for effectiveness and potential side effects before installation; [b: WMATA System Implementation Statement]</li>
<li>c. Install security-relevant software and firmware updates within a timeframe set per Control 3.16 Risk Assessment of the release of the updates; and [c: WMATA System Implementation Statement]</li>
<li>d. Incorporate flaw remediation into the organizational configuration management process. [d: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> Flaw remediation, or patching, is complicated since many OT employ OSs and other software no longer maintained by the vendors. OT operators may also not have the resources or capability to test patches and are dependent on vendors to validate the operability of a patch. Sometimes the organization has no choice but to accept the additional risk if no vendor patch is available, patching requires additional time to complete validation/testing, or deployment requires an unacceptable operations shutdown. In these situations, compensating controls should be implemented (e.g., limiting the exposure of these vulnerable system, restricting vulnerable services, implementing virtual patching). Other compensating controls that do not decrease the residual risk but increase the ability to respond may be desirable (e.g., provide a timely response in case of an incident; devise a plan to ensure the OT can identify the exploitation of the flaw). Testing flaw remediation in an OT may exceed the organization’s available resources. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: CA-5, CM-3, CM-4, CM-5, CM-6, CM-8, MA-2, RA-5, SA-8, SA-10, SA-11, SI-3, SI-5, SI-7, SI-11
<li>e. Security Controls Enhancement(s): [e: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Flaw remediation, or patching, is complicated since many OT employ OSs and other software that are no longer maintained by the vendors. OT operators may also not have the resources or capability to test patches and are dependent on vendors to validate the operability of a patch. Sometimes, the organization has no choice but to accept additional risk if no vendor patch is available, if patching requires additional time to complete validation or testing, or if deployment requires an unacceptable operations shutdown. In these situations, compensating controls should be implemented (e.g., limiting the exposure of the vulnerable system, restricting vulnerable services, implementing virtual patching). Other compensating controls that do not decrease the residual risk but increase the ability to respond may be desirable (e.g., provide a timely response in case of an incident, devise a plan to ensure that the OT can identify exploitation of the flaw). Testing flaw remediation in an OT may exceed the organization’s available resources. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Flaw Remediation</b></p>a. Identify, report, and correct system flaws;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Determine if system components have applicable security-relevant software and firmware updates installed using automated mechanisms in accordance with Control 3.16 Risk Assessment, Section 4, “RA-5 Vulnerability Monitoring and Scanning“. [WMATA System Implementation Statement]

Related Controls: CA-7, RA-5, SI-4
', [Supplemental_Info]=N'<p><b> Automated Flaw Remediation Status</b></p>Determine if system components have applicable security-relevant software and firmware updates installed using [Assignment: organization-defined automated mechanisms] [Assignment: organization-defined frequency].' WHERE [Requirement_Id] = 37978
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Identify the following alternative sources of information for [Assignment: organization-defined essential functions and services]: [Assignment: organization-defined alternative information sources]; [a: WMATA System Implementation Statement]</li>
<li>b. Use an alternative information source for the execution of essential functions or services on [Assignment: organization-defined systems or system components] when the primary source of information is corrupted or unavailable.  [b: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Many OT systems use information diversity in their design in order to achieve reliability requirements. Some examples of information diversity for an OT system include sensor voting and state estimation. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Many OT systems use information diversity in their design to achieve reliability requirements. Some examples of information diversity for an OT system include sensor voting and state estimation. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Information Diversity</b></p>a. Identify the following alternative sources of information for [Assignment: organization-defined essential functions and services]: [Assignment: organization-defined alternative information sources]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Implement non-signature based malicious code protection mechanisms at system entry and exit points to detect and eradicate malicious code; [a: WMATA System Implementation Statement]</li>
<li>b. Automatically update malicious code protection mechanisms as new releases are available in accordance with organizational configuration management control family and procedures; [b: WMATA System Implementation Statement]</li>
<li>c. Configure malicious code protection mechanisms to: [c: WMATA System Implementation Statement]</li>
<li>i) Perform real-time monitoring to detect attempts of malicious code execution at endpoints, servers, between security zones, and at network entry and exit points; [c.i: WMATA System Implementation Statement]</li>
<li>ii) Conduct scans of files and embedded code which are attached to, or included in email communication; and [c.ii: WMATA System Implementation Statement]</li>
<li>iii) Block or quarantine malicious code and send alert to required stakeholders in response to malicious code detection. [c.iii: WMATA System Implementation Statement]</li>
<li>d. Address the receipt of false positives during malicious code detection and eradication and the resulting potential impact on the availability of the system. [d: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> The use and deployment of malicious code protection is determined after careful consideration and after verification that it does not adversely impact the operation of the OT. Malicious code protection tools should be configured to minimize their potential impact on the OT (e.g., employ notification rather than quarantine). Example compensating controls include increase traffic monitoring and auditing. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-4, AC-19, CM-3, CM-8, IR-4, MA-3, MA-4, PL-9, RA-5, SC-7, SC-23, SC-28, SI-2, SI-4, SI-7, SI-8

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Malicious code protection should only be deployed after careful consideration and verification that it does not adversely impact the operation of the OT. Malicious code protection tools should be configured to minimize their potential impact on the OT (e.g., employ notification rather than quarantine). Example compensating controls include increased traffic monitoring and auditing. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Malicious Code Protection</b></p>a. Implement [Selection (one or more): signature based; non-signature based] malicious code protection mechanisms at system entry and exit points to detect and eradicate malicious code;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Monitor the system to detect: [a: WMATA System Implementation Statement]</li>
<li>i) Attacks and indicators of potential attacks in accordance with the following monitoring objectives: [a.i: WMATA System Implementation Statement]</li>
<li>(1) Systems shall be monitored in real-time to assure the proper functioning of system processes and controls at external interfaces to the system and within the system; and [a.i.1: WMATA System Implementation Statement]</li>
<li>(2) For assurance that the system is functioning in an optimal, resilient, and secure state and that any irregularities or anomalies that are indicators of a system malfunction or compromise are detected; [a.i.2: WMATA System Implementation Statement]</li>
<li>ii) Unauthorized local, network, and remote connections; [a.ii: WMATA System Implementation Statement]</li>
<li>b. Identify unauthorized use of the system via the following tools, techniques and methods: intrusion detection and prevention systems, malicious code protection software, scanning tools, audit record monitoring software, and network monitoring software; [b: WMATA System Implementation Statement]</li>
<li>c. Invoke internal monitoring capabilities or deploy monitoring devices: [c: WMATA System Implementation Statement]</li>
<li>i) Strategically within the system to collect organization-determined essential information; and [c.i: WMATA System Implementation Statement]</li>
<li>ii) At ad hoc locations within the system to track specific types of transactions of interest to the organization; [c.ii: WMATA System Implementation Statement]</li>
<li>d. Analyze detected events and anomalies; [d: WMATA System Implementation Statement]</li>
<li>e. Adjust the level of system monitoring activity when there is a change in risk to organizational operations and assets, individuals, other organizations, or the Nation; [e: WMATA System Implementation Statement]</li>
<li>f. Obtain legal advice regarding system monitoring activities; and [f: WMATA System Implementation Statement]</li>
<li>g. Provide information system monitoring information to personnel with administration, monitoring, and/or security responsibilities; continuously. [g: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> The organization ensures that use of monitoring tools and techniques does not adversely impact the operational performance of the OT. Example compensating controls include deploying sufficient network process, and physical monitoring. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: AC-2, AC-3, AC-4, AC-8, AC-17, AU-2, AU-6, AU-7, AU-9, AU-12, CA-7, CM-3, CM-6, CM-8, CM-11, IR-4, MA-3, MA-4, PL-9, PM-12, RA-5, SC-5, SC-7, SC-18, SI-3, SI-6, SI-7, SR-9, SR-10
<li>h. Security Controls Enhancement(s): [h: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The organization ensures that the use of monitoring tools and techniques does not adversely impact the operational performance of the OT. Example compensating controls include deploying sufficient network, process, and physical monitoring. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>System Monitoring</b></p>a. Monitor the system to detect:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Make provisions so that encrypted communications traffic is visible to organizational monitoring tools and mechanisms. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Visibility of Encrypted Communications</b></p>Make provisions so that [Assignment: organization-defined encrypted communications traffic] is visible to [Assignment: organization-defined system monitoring tools and mechanisms].' WHERE [Requirement_Id] = 37982
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Alert required stakeholders using automated mechanisms when there are indications of inappropriate or unusual activities with security or privacy implications. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Automated Organization-generated Alerts</b></p>Alert [Assignment: organization-defined personnel or roles] using [Assignment: organization-defined automated mechanisms] when the following indications of inappropriate or unusual activities with security or privacy implications occur: [Assignment: organization-defined activities that trigger alerts].' WHERE [Requirement_Id] = 37983
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Employ a wireless intrusion detection system to identify rogue wireless devices and to detect attack attempts and potential compromises or breaches to the system. [WMATA System Implementation Statement]

Related Controls: AC-18, IA-3
', [Supplemental_Info]=N'<p><b> Wireless Intrusion Detection</b></p>Employ a wireless intrusion detection system to identify rogue wireless devices and to detect attack attempts and potential compromises or breaches to the system.' WHERE [Requirement_Id] = 37984
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Employ automated tools and mechanisms to support near real-time analysis of events. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> In situations where the OT cannot support the use of automated tools to support near-real-time analysis of events, the organization employs compensating controls (e.g., providing an auditing capability on a separate system, nonautomated mechanisms or procedures) in accordance with the general tailoring guidance. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: PM-23, PM-25

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: When the OT cannot support the use of automated tools for near-real-time analysis of events, the organization employs compensating controls (e.g., providing an auditing capability on a separate system, nonautomated mechanisms or procedures) in accordance with the general tailoring guidance. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>System Monitoring | Automated Tools and Mechanisms for Real-time Analysis</b></p>Employ automated tools and mechanisms to support near real-time analysis of events.' WHERE [Requirement_Id] = 37985
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement the following additional monitoring of privileged users: [WMATA System Implementation Statement]

<li>(1) Monitoring of all privileged actions taken or attempted; and [1: WMATA System Implementation Statement]</li>
<li>(2) Actions that violate normal or expected behaviors. [2: WMATA System Implementation Statement]</li>

Related Controls: AC-18
', [Supplemental_Info]=N'<p><b> Privileged Users</b></p>Implement the following additional monitoring of privileged users: [Assignment: organization-defined additional monitoring].' WHERE [Requirement_Id] = 37986
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Detect network services that have not been authorized or approved by the DM Change Control Board and audit and alert when detected. [WMATA System Implementation Statement]

Related Controls: CM-7
', [Supplemental_Info]=N'<p><b> Unauthorized Network Services</b></p>(a) Detect network services that have not been authorized or approved by [Assignment: organization-defined authorization or approval processes]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>(1) Determine criteria for unusual or unauthorized activities or conditions for inbound and outbound communications traffic; [1: WMATA System Implementation Statement]</li>
<li>(2) Monitor inbound and outbound communications traffic continuously for unusual or unauthorized activities or conditions. [2: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b> Inbound and Outbound Communications Traffic</b></p>(a) Determine criteria for unusual or unauthorized activities or conditions for inbound and outbound communications traffic;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Alert required stakeholders when the following system-generated indications of compromise or potential compromise occur. At a minimum, compromise indicators may include but shall not be limited to the following: [WMATA System Implementation Statement]

<li>(1) Protected system files or directories have been modified without notification from the appropriate change/configuration management channels; [1: WMATA System Implementation Statement]</li>
<li>(2) System performance indicates resource consumption that is inconsistent with expected operating conditions; [2: WMATA System Implementation Statement]</li>
<li>(3) Auditing functionality has been disabled or modified to reduce audit visibility; [3: WMATA System Implementation Statement]</li>
<li>(4) Audit or log records have been deleted or modified without explanation; [4: WMATA System Implementation Statement]</li>
<li>(5) The system is raising alerts or faults in a manner that indicates the presence of an abnormal condition; [5: WMATA System Implementation Statement]</li>
<li>(6) Resource or service requests are initiated from clients that are outside of the expected client membership set; [6: WMATA System Implementation Statement]</li>
<li>(7) The system reports failed logins or password changes for administrative or key service accounts; [7: WMATA System Implementation Statement]</li>
<li>(8) Processes and services are running that are outside of the baseline system profile; and [8: WMATA System Implementation Statement]</li>
<li>(9) Utilities, tools, or scripts have been saved or installed on production systems without a clear indication of their use or purpose. [9: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Example compensating controls include manual methods of generating alerts. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AU-4, AU-5, PE-6

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Example compensating controls include manually generating alerts. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>System Monitoring | System-generated Alerts</b></p>Alert [Assignment: organization-defined personnel or roles] when the following system-generated indications of compromise or potential compromise occur: [Assignment: organization-defined compromise indicators].' WHERE [Requirement_Id] = 37989
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Receive system security alerts, advisories, and directives from supply chain partners, external mission or business partners, external service providers, other peer or supporting organizations, Cybersecurity and Infrastructure Agency, Information Sharing and Analysis Centers, and other resources as determined by DMCS on an ongoing basis; [a: WMATA System Implementation Statement]</li>
<li>b. Generate internal security alerts, advisories, and directives as deemed necessary; [b: WMATA System Implementation Statement]</li>
<li>c. Disseminate security alerts, advisories, and directives to all staff with system administration, monitoring, and/or security responsibilities; and other required stakeholders; and [c: WMATA System Implementation Statement]</li>
<li>d. Implement security directives in accordance with established time frames or notify the issuing organization of the degree of noncompliance. [d: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> CISA generates security alerts and advisories relative to OT at https://www.cisa.gove/uscert/ics. Industry-specific ISACs often provide tailored advisories and alerts, which can be found at https://www.nationalisacs.org/. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: PM-15, RA-5, SI-2
<li>e. Security Controls Enhancement(s): [e: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: CISA generates security alerts and advisories relative to OT at https://www.cisa.gov/uscert/ics. Industry-specific ISACs often provide tailored advisories and alerts, which can be found at https://www.nationalisacs.org/. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Security Alerts, Advisories, and Directives</b></p>a. Receive system security alerts, advisories, and directives from [Assignment: organization-defined external organizations] on an ongoing basis;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Broadcast security alerts and advisory information throughout the organization using automated mechanisms. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b> Automated Alerts and Advisories</b></p>Broadcast security alert and advisory information throughout the organization using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37991
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Verify the correct operation of system security and privacy functions; [a: WMATA System Implementation Statement]</li>
<li>b. Perform the verification of the system security and privacy functions during system startup, restart, shutdown, and abort and upon command by the user with appropriate privilege annually or as a part of information system continuous monitoring; [b: WMATA System Implementation Statement]</li>
<li>c. Alert required stakeholders to fail security and privacy verification tests; and [c: WMATA System Implementation Statement]</li>
<li>d. Audits shall be captured in accordance with Control 3.3 Audit and Accountability to reflect sufficient details as to the anomaly that occurred, appropriate action taken (e.g., shutdown of the system) as specified in the System Security Plan (SSP), and/or Control 3.5 Contingency Planning, Section 2, “CP-2 Information System Contingency Plan”, and personnel identified in Section 4, (g), (iii), “SI-4, (5) System-Generated Alerts” and Section 4, (g), (v), “SI-4 (12) Automated Organization-Generated Alerts”, and alerted when anomalies are discovered. [d: WMATA System Implementation Statement]</li>
<li>e. If the system is shut down due to a privacy-related anomaly, the relevant Control 3.3 Audit and Accountability and Control 3.5 Contingency Planning controls shall be updated in the SSP and the Information System Contingency Plan (ISCP)/Disaster Recovery Plan (DRP) to reflect how operations shall be maintained in the event of a system or system component outage. [e: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Shutting down and restarting the OT may not always be feasible upon the identification of an anomaly; these actions should be scheduled according to OT operational requirements. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: CA-7, CM-4, CM-6, CP-2, SI-4, SI-7

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Shutting down and restarting the OT may not always be feasible upon the identification of an anomaly. These actions should be scheduled according to OT operational requirements. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Security and Privacy Function Verification</b></p>a. Verify the correct operation of [Assignment: organization-defined security and privacy functions];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Employ integrity verification tools to detect unauthorized changes to system software, firmware, information, and data; and [a: WMATA System Implementation Statement]</li>
<li>b. Take the following actions when unauthorized changes to the software, firmware, and information are detected: [b: WMATA System Implementation Statement]</li>
<li>i) Audit the changes made in accordance with Control 3.3 Audit and Accountability; [b.i: WMATA System Implementation Statement]</li>
<li>ii) Notify/alert required stakeholders; and [b.ii: WMATA System Implementation Statement]</li>
<li>iii) Take the appropriate action (e.g., shutdown or halting the system, reversing the changes, or triggering audit alerts) as specified in the SSP and/or Control 3.5 Contingency Planning, Section 2, “CP-2 Information System Contingency Plan”. If the system is shut down due to unauthorized changes, the relevant Control 3.3 Audit and Accountability and Control 3.5 Contingency Planning controls shall be updated in the SSP and the CP/DRP to reflect how operations shall be maintained in the event of a system or system component outage. [b.iii: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> The organization determines whether the use of integrity verification applications would adversely impact operation of the ICS and employs compensating controls (e.g., manual integrity verifications that do not affect performance). [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AC-4, CM-3, CM-7, CM-8, CP-2, MA-3, MA-4, RA-5, SA-8, SA-9, SA-10, SC-8, SC-12, SC-13, SC-28, SI-3, SR-3, SR-4, SR-5, SR-6, SR-9, SR-10, SR-11

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The organization determines whether the use of integrity verification applications would adversely impact operation of the ICS and employs compensating controls (e.g., manual integrity verifications that do not affect performance).  [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Software, Firmware, and Information Integrity</b></p>a. Employ integrity verification tools to detect unauthorized changes to the following software, firmware, and information: [Assignment: organization-defined software, firmware, and information]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Perform an integrity check of software, firmware, and information at least monthly and at system startup, restart, shutdown, abort, and during configuration changes or security-relevant events. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> The organization ensures that the use of integrity verification applications does not adversely impact the operational performance of the OT. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: The organization ensures that the use of integrity verification applications does not adversely impact the operational performance of the OT. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Software, Firmware, and Information Integrity | Integrity Checks</b></p>Perform an integrity check of [Assignment: organization-defined software, firmware, and information] [Selection (one or more): at startup; at [Assignment: organization-defined transitional states or security-relevant events]; [Assignment: organization-defined frequency]].' WHERE [Requirement_Id] = 37994
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Implement cryptographic mechanisms that authenticate software and firmware components and provide digitally signed certificates from trusted authorities approved by DMCS prior to installation. [WMATA System Implementation Statement] 

<b><u>OT Systems Only:</u></b> Code authentication provides assurance to the organization that the software and firmware have not been tampered with. If automated mechanisms are not available, organizations could verify code authentication by manually using a combination of techniques including verifying hashes, downloading from reputable sources, verifying version numbers with the vendor, or testing software/firmware in offline/test environment. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: CM-5, SC-12, SC-13

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Code authentication provides assurance that the software and firmware have not been tampered with. If automated mechanisms are not available, organizations could manually verify code authentication by using a combination of techniques, including verifying hashes, downloading from reputable sources, verifying version numbers with the vendor, or testing software and firmware in offline or test environments. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Software, Firmware, and Information Integrity | Code Authentication</b></p>Implement cryptographic mechanisms to authenticate the following software or firmware components prior to installation: [Assignment: organization-defined software or firmware components].' WHERE [Requirement_Id] = 37995
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Employ automated tools that provide notification to required stakeholders upon discovering discrepancies during integrity verification. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> In situations where the organization cannot employ automated tools that provide notification of integrity discrepancies, the organization employs nonautomated mechanisms or procedures. Example compensating controls include performing scheduled manual inspections for integrity violations. [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: When the organization cannot employ automated tools that provide notifications about integrity discrepancies, the organization employs nonautomated mechanisms or procedures. Example compensating controls include performing scheduled manual inspections for integrity violations. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Software, Firmware, and Information Integrity | Automated Notifications of Integrity Violations</b></p>Employ automated tools that provide notification to [Assignment: organization-defined personnel or roles] upon discovering discrepancies during integrity verification.' WHERE [Requirement_Id] = 37996
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Automatically act and implement controls (e.g., shutdown or halting the system, reversing the changes, or triggering audit alerts) when integrity violations are discovered. If the system is shut down due to unauthorized changes, the relevant security controls shall be updated in the SSP and the CP/DRP to reflect how operations shall be maintained in the event of a system or system component outage. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Shutting down and restarting the ICS may not always be feasible upon identification of an anomaly; these actions should be scheduled according to ICS operational requirements.  [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Shutting down and restarting the ICS may not always be feasible upon identification of an anomaly. These actions should be scheduled according to ICS operational requirements. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Software, Firmware, and Information Integrity | Automated Response to Integrity Violations</b></p>Automatically [Selection (one or more): shut the system down; restart the system; implement [Assignment: organization-defined controls]] when integrity violations are discovered.' WHERE [Requirement_Id] = 37997
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Incorporate the detection of unauthorized system changes to include unauthorized changes to established configuration settings or baselines or unauthorized elevation of system privileges into the organizational incident response capability. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> In situations where the ICS cannot detect unauthorized security-relevant changes, the organization employs compensating controls (e.g., manual procedures) in accordance with the general tailoring guidance. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: AU-2, AU-6, IR-4, IR-5, SI-4

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: When the ICS cannot detect unauthorized securityrelevant changes, the organization employs compensating controls (e.g., manual procedures) in accordance with the general tailoring guidance.  [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Software, Firmware, and Information Integrity | Integration of Detection and Response</b></p>Incorporate the detection of the following unauthorized changes into the organizational incident response capability: [Assignment: organization-defined security-relevant changes to the system].' WHERE [Requirement_Id] = 37998
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Employ spam protection mechanisms at system entry and exit points to detect and act on unsolicited messages; and [a: WMATA System Implementation Statement]</li>
<li>b. Update spam protection mechanisms when new releases are available in accordance with organizational configuration management control family and procedures. [b: WMATA System Implementation Statement]</li>
<b><u>OT Systems Only:</u></b> OT organizations implement spam protection by removing spam transport mechanisms, functions, and services (e.g., electronic mail, web browsing) from the OT. [OT Systems Only: WMATA System Implementation Statement]
Related Controls: PL-9, SC-5, SC-7, SI-3, SI-4
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: OT organizations implement spam protection by removing spam transport mechanisms, functions, and services (e.g., electronic mail, web browsing) from the OT.  [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Spam Protection</b></p>a. Employ spam protection mechanisms at system entry and exit points to detect and act on unsolicited messages; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Automatically and continuously update spam protection mechanisms to ensure that updates occur on a regular basis and provide the latest content and protection capabilities. [WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
Rationale for removing SI-8 (2) from MOD and HIGH baselines: Spam transport mechanisms are disabled or removed from the OT, so automatic updates are not necessary. [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Spam Protection | Automatic Updates</b></p>Automatically update spam protection mechanisms [Assignment: organization-defined frequency].' WHERE [Requirement_Id] = 38000
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Reference P/I 15.28 Cybersecurity Policy for requirements. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Supply chain and procedures for OT should consider components received as well as components produced. Many OT systems use legacy components that cannot meet modern supply chain expectations. Appropriate compensating controls should be developed to achieve organization supply chain expectations for legacy systems. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: PM-9, PM-30, PS-8, SI-12

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Supply chain policies and procedures for OT should consider both components received and components produced. Many OT systems use legacy components that cannot meet modern supply chain expectations. Appropriate compensating controls should be developed to achieve organizational supply chain expectations for legacy systems. [NIST 800-82 Rev 3: WMATA System Implementation Statement] 
', [Supplemental_Info]=N'<p><b>Cybersecurity Supply Chain Risk Management Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Inspect systems or system components for physical and logical tampering: [WMATA System Implementation Statement]

<li>a. Immediately upon delivery of a new system or system component and when there is a significant change to a hardware, software, or firmware component; [a: WMATA System Implementation Statement]</li>
<li>b. Immediately when a system or system component is removed and returned from travel to high-risk locations or travel outside organizationally-controlled areas or facilities (other than when personnel are in telework status in the contiguous US); [b: WMATA System Implementation Statement]</li>
<li>c. Randomly when there are indications of a need for inspection to include changes in packaging, specifications, factory location, entities, or locations in which the part is purchased; and [c: WMATA System Implementation Statement]</li>
<li>d. At the discretion of DMCS. [d: WMATA System Implementation Statement]</li>

Related Controls: AT-3, PM-30, SI-4, SI-7, SR-3, SR-4, SR-5, SR-9, SR-11
', [Supplemental_Info]=N'<p><b>Inspection of Systems or Components</b></p>Inspect the following systems or system components [Selection (one or more): at random; at [Assignment: organization-defined frequency], upon [Assignment: organization-defined indications of need for inspection]] to detect tampering: [Assignment: organization-defined systems or system components].' WHERE [Requirement_Id] = 38002
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Develop and implement anti-counterfeit procedures that include the validation of authenticity of any system with the authorized vendor. [a: WMATA System Implementation Statement]</li>
<li>b. Report counterfeit system components to DMCS. [b: WMATA System Implementation Statement]</li>
Related Controls: PE-3, SA-4, SI-7, SR-9, SR-10
<li>c. Security Controls Enhancement(s): [c: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Component Authenticity</b></p>a. Develop and implement anti-counterfeit policy and procedures that include the means to detect and prevent counterfeit components from entering the system; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Train System Owners to detect counterfeit system components (including hardware, software, and firmware). [WMATA System Implementation Statement]

Related Controls: AT-3
' WHERE [Requirement_Id] = 38004
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Validate authenticity of any system being returned to service or coming back from repair with the authorized vendor. [WMATA System Implementation Statement]

Related Controls: CM-3, MA-2, MA-4, SA-10
' WHERE [Requirement_Id] = 38005
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Dispose of data, documentation, tools, or system components only after media sanitization techniques and methods in accordance with Control 3.12 Media Protection, Section 6, “MP-6 Media Sanitization”. [WMATA System Implementation Statement]

Related Controls: MP-6 
', [Supplemental_Info]=N'<p><b>Component Disposal</b></p>Dispose of [Assignment: organization-defined data, documentation, tools, or system components] using the following techniques and methods: [Assignment: organization-defined techniques and methods].' WHERE [Requirement_Id] = 38006
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Develop a plan for managing supply chain risks associated with the research and development, design, manufacturing, acquisition, delivery, integration, operations and maintenance, and disposal of information and operational technology (IT/OT) systems, system components, or system services; [a: WMATA System Implementation Statement]</li>
<li>b. Review and update the supply chain risk management plan annually or as required, to address threat, organizational or environmental changes; and [b: WMATA System Implementation Statement]</li>
<li>c. Protect the supply chain risk management plan from unauthorized disclosure and modification. [c: WMATA System Implementation Statement]</li>
Related Controls: CA-2, CP-4, IR-4, MA-2, MA-6, PE-16, PL-2, PM-9, PM-30, RA-3, RA-7, SA-8, SI-4
<li>d. Security Controls Enhancement(s): [d: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Supply Chain Risk Management Plan</b></p>a. Develop a plan for managing supply chain risks associated with the research and development, design, manufacturing, acquisition, delivery, integration, operations and maintenance, and disposal of the following systems, system components or system services: [Assignment: organization-defined systems, system components, or system services];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Establish a supply chain risk management team consisting of Procurement, the Legal Department, CORs/COTRs, CISO, AO, BISO, Cybersecurity SCRM Team, and other personnel/roles as deemed necessary to lead and support the following SCRM activities: [WMATA System Implementation Statement]

<li>(1) Leading and supporting SCRM activities on projects and programs with a nexus to technology; [1: WMATA System Implementation Statement]</li>
<li>(2) Identification, assessment, and analysis of supply chain risks and the supply chain risk management program; [2: WMATA System Implementation Statement]</li>
<li>(3) Management and mitigation of supply chain risks; and [3: WMATA System Implementation Statement]</li>
<li>(4) Communication with internal and external partners or stakeholders (including third-party vendors (TPV)). [4: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b> Establish SCRM Team</b></p>Establish a supply chain risk management team consisting of [Assignment: organization-defined personnel, roles, and responsibilities] to lead and support the following SCRM activities: [Assignment: organization-defined supply chain risk management activities].' WHERE [Requirement_Id] = 38008
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Establish a process or processes to identify and address weaknesses or deficiencies in the supply chain elements and processes of systems in coordination with the SCRM Team; [a: WMATA System Implementation Statement]</li>
<li>b. Employ security controls in compliance with WMATA policy and instructions to protect against cybersecurity supply chain risks to the system, system component, or system service and to limit the harm or consequences from supply chain-related events; and [b: WMATA System Implementation Statement]</li>
<li>c. As a part of the acquisition process for any new technology, document the selected and implemented cybersecurity supply chain processes and controls in the Cybersecurity Supply Chain Risk Management Plan (CSCRMP). [c: WMATA System Implementation Statement]</li>
<li>i) All WMATA IT/OT systems, upon completion of the acquisition process but prior to operational use, are subject to the Assessment & Authorization (A&A) process and shall document or reference selected and implemented cybersecurity supply chain controls and processes annotated in the CSCRMP in System Security Plans (SSPs) affiliated with the A&A process. [c.i: WMATA System Implementation Statement]</li>
Related Controls: CA-2, MA-2, MA-6, PE-3, PE-16, PL-8, PM-30, SA-2, SA-3, SA-4, SA-5, SA-8, SA-9, SA-10, SA-15, SC-7, SI-7, SR-6, SR-9, SR-11
<li>d. Security Controls Enhancement(s): [d: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Supply Chain Controls and Processes</b></p>a. Establish a process or processes to identify and address weaknesses or deficiencies in the supply chain elements and processes of [Assignment: organization-defined system or system component] in coordination with [Assignment: organization-defined supply chain personnel];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Employ a diverse set of sources for all system components and services. [WMATA System Implementation Statement]

<b><u>OT Systems Only:</u></b> Using a diverse set of suppliers in the OT environment can improve reliability by reducing common cause failures. This is not always possible since some technologies have limited supply options that meet the operational requirements.  [OT Systems Only: WMATA System Implementation Statement]

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Using a diverse set of suppliers in the OT environment can improve reliability by reducing common cause failures. This is not always possible since some technologies have limited supply options that meet the operational requirements.  [NIST 800-82 Rev 3: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Supply Chain Controls and Processes | Diverse Supply Base</b></p>Employ a diverse set of sources for the following system components and services: [Assignment: organization-defined system components and services].' WHERE [Requirement_Id] = 38010
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'In order to limit harm from potential adversaries identifying and targeting the organizational supply chain, evaluate vendors prior to contract award and throughout the lifecycle of the contract for controls designed to reduce the probability of adversaries successfully identifying and targeting the supply chain, including: [WMATA System Implementation Statement]

<li>(1) Avoiding the purchase of custom or non-standardized configurations; [1: WMATA System Implementation Statement]</li>
<li>(2) Employing approved vendor lists with standing reputations in the industry; [2: WMATA System Implementation Statement]</li>
<li>(3) Following pre-agreed maintenance schedules and update and patch delivery mechanisms; [3: WMATA System Implementation Statement]</li>
<li>(4) Maintaining a contingency plan in case of a supply chain event; [4: WMATA System Implementation Statement]</li>
<li>(5) Using procurement carve-outs that provide exclusions to commitments or obligations; and [5: WMATA System Implementation Statement]</li>
<li>(6) Minimizing the time between purchase decisions and delivery. [6: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b> Limitation of Harm</b></p>Employ the following controls to limit harm from potential adversaries identifying and targeting the organizational supply chain: [Assignment: organization-defined controls].' WHERE [Requirement_Id] = 38011
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Ensure that the controls included in the contracts of prime contractors are also included in the contracts of subcontractors. [WMATA System Implementation Statement]

Related Controls: SR-5, SR-8
', [Supplemental_Info]=N'<p><b> Sub-Tier Flow Down</b></p>Ensure that the controls included in the contracts of prime contractors are also included in the contracts of subcontractors.' WHERE [Requirement_Id] = 38012
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Monitoring and documenting the chronology of the origin, development, ownership, location, and changes to a system or system component and the associated data, including personnel and processes used to interact with or make modifications to the system, component, or associated data. Document, monitor, and maintain valid provenance for systems, system components, and associated data, including procedures for allocating responsibilities for the creation, maintenance, and monitoring of provenance for systems and system components; transferring provenance documentation and responsibility between organizations; and preventing and monitoring for unauthorized changes to the provenance records. [a: WMATA System Implementation Statement]</li>
Related Controls: CM-8, MA-2, MA-6, RA-9, SA-3, SA-8, SI-4
<li>b. Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Provenance</b></p>Document, monitor, and maintain valid provenance of the following systems, system components, and associated data: [Assignment: organization-defined systems, system components, and associated data].' WHERE [Requirement_Id] = 38013
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Establish and maintain unique identification (methods sufficient to support an investigation in case of a supply chain change (e.g., if a supply company is purchased), compromise, or event) of cybersecurity supply chain elements, processes, and personnel associated with the identified system and critical system components, including: [WMATA System Implementation Statement]

<li>(1) Cybersecurity supply chain elements to include organizations, entities, or tools used for the research and development, design, manufacturing, acquisition, delivery, integration, operations, maintenance, and disposal of systems and system components. [1: WMATA System Implementation Statement]</li>
<li>(2) Cybersecurity supply chain processes to include development processes for hardware, software, and firmware; shipping and handling procedures; configuration management tools, techniques, and measures to maintain provenance; personnel and physical security programs; or other programs, processes, or procedures associated with the production and distribution of supply chain elements. [2: WMATA System Implementation Statement]</li>
<li>(3) Cybersecurity supply chain personnel to include individuals with specific roles and responsibilities related to the secure research and development, design, manufacturing, acquisition, delivery, integration, operations and maintenance, and disposal of a system or system component. [3: WMATA System Implementation Statement]</li>

Related Controls: IA-2, IA-8, PE-16
', [Supplemental_Info]=N'<p><b> Identity</b></p>Establish and maintain unique identification of the following supply chain elements, processes, and personnel associated with the identified system and critical system components: [Assignment: organization-defined supply chain elements, processes, and personnel associated with organization-defined systems and critical system components].' WHERE [Requirement_Id] = 38014
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Establish and maintain unique identification (e.g., system components may be labeled using serial numbers or tagged using radio-frequency identification tags) of systems and critical system components for tracking through the supply chain. [WMATA System Implementation Statement]

Related Controls: IA-2, IA-8, PE-16
', [Supplemental_Info]=N'<p><b> Track and Trace</b></p>Establish and maintain unique identification of the following systems and critical system components for tracking through the supply chain: [Assignment: organization-defined systems and critical system components].' WHERE [Requirement_Id] = 38015
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Employ controls (e.g., optical and nanotechnology tagging, physically unclonable functions, side-channel analysis, cryptographic hash verifications or digital signatures, and visible anti-tamper labels or stickers) to validate that the system or system component received is genuine and has not been altered, including: [WMATA System Implementation Statement]

<li>(1) Monitoring for out of specification performance, which can be an indicator of tampering or counterfeits. [1: WMATA System Implementation Statement]</li>
<li>(2) Leveraging supplier and contractor processes for validating that a system or component is genuine and has not been altered and for replacing a suspect system or component. [2: WMATA System Implementation Statement]</li>
<li>(3) Monitoring for tampering that may be visible and addressable before accepting delivery, such as inconsistent packaging, broken seals, and incorrect labels. [3: WMATA System Implementation Statement]</li>

Related Controls: AT-3, SR-9, SR-10, SR-11
', [Supplemental_Info]=N'<p><b> Validate as Genuine and Not Altered</b></p>Employ the following controls to validate that the system or system component received is genuine and has not been altered: [Assignment: organization-defined controls].' WHERE [Requirement_Id] = 38016
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>1) Conduct assessments to ensure the integrity of the system and system components by validating the internal composition and provenance of critical or mission-essential technologies, products, and services. For microelectronics, this includes material composition of components. For software, this includes the composition of open-source and proprietary code, including the version of the component at a given point in time. [1: WMATA System Implementation Statement]</li>
<li>2) The validation of the internal composition and provenance shall be achieved by requiring various evidentiary artifacts or records from manufacturers and suppliers which are produced during the research and development, design, manufacturing, acquisition, delivery, integration, operations and maintenance, and disposal of technology, products, and services. Evidentiary artifacts include, but are not limited to, software identification (SWID) tags, software component inventory, the manufacturers’ declarations of platform attributes (e.g., serial numbers, hardware component inventory), and measurements (e.g., firmware hashes) that are tightly bound to the hardware itself. [2: WMATA System Implementation Statement]</li>

Related Controls: RA-3
', [Supplemental_Info]=N'<p><b> Supply Chain Integrity – Pedigree</b></p>Employ [Assignment: organization-defined controls] and conduct [Assignment: organization-defined analysis] to ensure the integrity of the system and system components by validating the internal composition and provenance of critical or mission-essential technologies, products, and services.' WHERE [Requirement_Id] = 38017
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>1) Employ the following acquisition strategies, contract tools, and procurement methods to protect against, identify, and mitigate supply chain risks: [1: WMATA System Implementation Statement]</li>
<li>2) All solicitations shall be reviewed by DMCS and shall include cybersecurity specifications and the cybersecurity questionnaire as applicability is determined by DMCS. Where cybersecurity requirements have been applied to a solicitation, cybersecurity shall be included as an element of the selection criteria. [2: WMATA System Implementation Statement]</li>
<li>3) Acquisition strategies to include: [3: WMATA System Implementation Statement]</li>
<li>a. Requiring tamper-evident packaging or using trusted or controlled distribution; [3.a: WMATA System Implementation Statement]</li>
<li>b. Training, education, and awareness programs for personnel regarding supply chain risk, available mitigation strategies, and when the programs should be employed; and [3.b: WMATA System Implementation Statement]</li>
<li>c. Methods for reviewing and protecting development plans, documentation, and evidence commensurate with the security and privacy requirements of the organization. [3.c: WMATA System Implementation Statement]</li>
Related Controls: AT-3, SA-2, SA-3, SA-4, SA-5, SA-8, SA-9, SA-10, SA-15, SR-6, SR-9, SR-10, SR-11
<li>d. Security Controls Enhancement(s): [d: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Acquisition Strategies, Tools, and Methods</b></p>Employ the following acquisition strategies, contract tools, and procurement methods to protect against, identify, and mitigate supply chain risks: [Assignment: organization-defined acquisition strategies, contract tools, and procurement methods].' WHERE [Requirement_Id] = 38018
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Ensure an adequate supply of critical system components through the following cybersecurity controls pertaining to HVA, as determined by DMCS: [WMATA System Implementation Statement]

<li>(1) Track systems and component mean time to failure to mitigate the loss of temporary or permanent system function; [1: WMATA System Implementation Statement]</li>
<li>(2) The use of multiple suppliers throughout the supply chain for the identified critical components; [2: WMATA System Implementation Statement]</li>
<li>(3) Stockpiling spare components to ensure operation during mission-critical times; and [3: WMATA System Implementation Statement]</li>
<li>(4) The identification of functionally identical or similar components that may be used, if necessary. [4: WMATA System Implementation Statement]</li>

<b><u>OT Systems Only:</u></b> Vendor relationships and spare parts strategies are developed to ensure an adequate supply of critical components is available to meet operational needs. [OT Systems Only: WMATA System Implementation Statement]

Related Controls: RA-9

<b><u>NIST 800-82 Rev 3:</u></b>
OT Discussion: Vendor relationships and spare parts strategies are developed to ensure that an adequate supply of critical components is available to meet operational needs. [NIST 800-82 Rev 3_OT Discussion: WMATA System Implementation Statement]

Rationale for adding SR-5 (1) to MOD and HIGH baselines: OT systems and system components are often built for purpose and have a limited number of vendors or suppliers for a specific component. Organizations identify critical OT system components and controls to ensure an adequate supply in the event of supply chain disruptions. [NIST 800-82 Rev 3_Rationale: WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Acquisition Strategies, Tools, and Methods |Adequate Supply</b></p>Employ the following controls to ensure an adequate supply of [Assignment: organization-defined critical system components]: [Assignment: organization-defined controls].' WHERE [Requirement_Id] = 38019
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Assess the system, system component, or system service prior to selection, acceptance, modification, or update. [WMATA System Implementation Statement]

Related Controls: CA-8, RA-5, SA-11, SI-7
', [Supplemental_Info]=N'<p><b>Assessments Prior to Selection, Acceptance, Modification, or Update</b></p>Assess the system, system component, or system service prior to selection, acceptance, modification, or update.' WHERE [Requirement_Id] = 38020
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Assess and review the supply chain-related risks associated with suppliers or contractors and the system, system component, or system service they provide at the discretion of DMCS. [a: WMATA System Implementation Statement]</li>
Related Controls: SR-3, SR-5
<li>b. Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Supplier Assessments and Reviews</b></p>Assess and review the supply chain-related risks associated with suppliers or contractors and the system, system component, or system service they provide [Assignment: organization-defined frequency].' WHERE [Requirement_Id] = 38021
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Employ organizational analysis; independent third-party analysis; organizational testing; independent third-party testing of systems, system components, or system services, which includes: [WMATA System Implementation Statement]

<li>(1) Supply chain elements including organizations, entities, or tools that are used for the research and development, design, manufacturing, acquisition, delivery, integration, operations, maintenance, and disposal of systems, system components, or system services. [1: WMATA System Implementation Statement]</li>
<li>(2) Supply chain processes including supply chain risk management programs; SCRM strategies and implementation plans; personnel and physical security programs; hardware, software, and firmware development processes; configuration management tools, techniques, and measures to maintain provenance; shipping and handling procedures; and programs, processes, or procedures associated with the production and distribution of supply chain elements. [2: WMATA System Implementation Statement]</li>
<li>(3) Supply chain actors including individuals with specific roles and responsibilities in the supply chain. [3: WMATA System Implementation Statement]</li>

Related Controls: CA-8, SI-4
', [Supplemental_Info]=N'<p><b> Testing and Analysis</b></p>Employ [Selection (one or more): organizational analysis; independent third-party analysis; organizational testing; independent third-party testing] of the following supply chain elements, processes, and actors associated with the system, system component, or system service: [Assignment: organization-defined supply chain elements, processes, and actors].' WHERE [Requirement_Id] = 38022
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Employ the following Operations Security (OPSEC) controls to protect supply chain-related information for the system, system component, or system service, including identifying critical information, analyzing friendly actions related to operations, and other activities to identify actions that can be observed by potential adversaries, determining indicators that potential adversaries might obtain that could be interpreted or pieced together to derive information in sufficient time to cause harm to WMATA, implementing safeguards or countermeasures to eliminate or reduce exploitable vulnerabilities and risk to an acceptable level, and considering how aggregated information may expose users or specific uses of the supply chain. Supply chain information includes user identities; uses for systems, system components, and system services; supplier identities; security and privacy requirements; system and component configurations; supplier processes; design specifications; and testing and evaluation results. [WMATA System Implementation Statement]
', [Supplemental_Info]=N'<p><b>Supply Chain Operations Security</b></p>Employ the following Operations Security (OPSEC) controls to protect supply chain-related information for the system, system component, or system service: [Assignment: organization-defined Operations Security (OPSEC) controls].' WHERE [Requirement_Id] = 38023
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Establish agreements and procedures with entities involved in the supply chain for the system, system component, or system service for the notification of supply chain compromises; and the sharing of results from assessments, audits or other sources that can assist the mitigation and resolution of supply chain risks or improve its processes. [WMATA System Implementation Statement]

Related Controls: IR-4, IR-6, IR-8
', [Supplemental_Info]=N'<p><b>Notification Agreements</b></p>Establish agreements and procedures with entities involved in the supply chain for the system, system component, or system service for the [Selection (one or more): notification of supply chain compromises; results of assessments or audits; [Assignment: organization-defined information]].' WHERE [Requirement_Id] = 38024
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<li>a. Implement a tamper protection program for the system, system component, or system service. [a: WMATA System Implementation Statement]</li>
Related Controls: PE-3, PM-30, SA-15, SI-4, SI-7, SR-3, SR-4, SR-5, SR-10, SR-11
<li>b. Security Controls Enhancement(s): [b: WMATA System Implementation Statement]</li>
', [Supplemental_Info]=N'<p><b>Tamper Resistance and Detection</b></p>Implement a tamper protection program for the system, system component, or system service.' WHERE [Requirement_Id] = 38025
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'Employ anti-tamper technologies, tools, and techniques throughout the system development life cycle. [WMATA System Implementation Statement]

Related Controls: SA-3
', [Supplemental_Info]=N'<p><b> Multiple Stages of System Development Life Cycle</b></p>Employ anti-tamper technologies, tools, and techniques throughout the system development life cycle.' WHERE [Requirement_Id] = 38026
PRINT(N'Operation applied to 646 rows out of 646')

PRINT(N'Update row in [dbo].[GEN_FILE]')
UPDATE [dbo].[GEN_FILE] SET [File_Name]=N'OT Monitoring Tools_The Ultimate Guide for Conducting Multi-Vendor Proof of Concepts_v1.1.pdf', [Short_Name]=N'OT Monitoring Tools', [Publish_Date]='2023-05-10 00:00:00.000', [Summary]=N'The purpose of this guide is to help organizations understand the current market offerings in OT monitoring as well as to provide a structured approach for conducting proof of  concepts.', [Is_Uploaded]=0 WHERE [Gen_File_Id] = 6116

PRINT(N'Update row in [dbo].[DIAGRAM_TEMPLATES]')
UPDATE [dbo].[DIAGRAM_TEMPLATES] SET [Diagram_Markup]=N'
<?xml version="1.0"?>
<mxGraphModel>
  <root>
    <mxCell id="0"/>
    <mxCell id="1" value="Main Layer" parent="0"/>
    <object Criticality="Low" zone="1" ZoneType="Other" SAL="High" label="Zone Core DMZ-High" internalLabel="Zone Core DMZ" id="UxTfs5nLP9km1SiU_4_t-107">
      <mxCell style="swimlane;zone=1;startSize=30;fillColor=#ece4d7;swimlaneFillColor=#f6f3ed;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="870" y="123" width="359" height="440" as="geometry"/>
      </mxCell>
    </object>
    <object label="MPLS" internalLabel="MPLS" id="106">
      <mxCell style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#9673a6;strokeWidth=3;endArrow=none;labelBackgroundColor=#ffffff;fillColor=#e1d5e7;" parent="UxTfs5nLP9km1SiU_4_t-107" source="21" target="35" edge="1">
        <mxGeometry relative="1" as="geometry">
          <mxPoint x="141.5" y="117" as="sourcePoint"/>
        </mxGeometry>
      </mxCell>
    </object>
    <mxCell id="cjdxwiZFUEl386gS18Un-139" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#d6b656;strokeWidth=7;endArrow=none;labelBackgroundColor=none;edgeStyle=isometricEdgeStyle;elbow=vertical;exitX=0;exitY=0.25;exitDx=0;exitDy=0;fillColor=#fff2cc;fontSize=11;" parent="UxTfs5nLP9km1SiU_4_t-107" source="cjdxwiZFUEl386gS18Un-142" target="35" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="141.5" y="327" as="sourcePoint"/>
        <mxPoint x="59.53233354778013" y="201.21360000000004" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object label="&amp;nbsp;" ComponentGuid="672a85a2-e7cd-4fbe-aab6-a166acf9e94e" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="CON-27" id="21">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="UxTfs5nLP9km1SiU_4_t-107" vertex="1">
        <mxGeometry x="132.45249999999987" y="89.95079999999996" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="&amp;nbsp;" ComponentGuid="aee2e5d1-bf36-4630-87c9-7b55ced31283" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="CON-28" id="cjdxwiZFUEl386gS18Un-142">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="UxTfs5nLP9km1SiU_4_t-107" vertex="1">
        <mxGeometry x="132.45249999999987" y="335.95079999999996" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="Zone Core Pair" ComponentGuid="8e38f60e-bb96-444d-b5f8-c5c6400754e3" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="" parent="3" id="cjdxwiZFUEl386gS18Un-147">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/router.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;imageBackground=#6666FF;strokeWidth=4;imageBorder=#0000CC;" parent="UxTfs5nLP9km1SiU_4_t-107" vertex="1">
        <mxGeometry x="199.65589999999997" y="87.21360000000004" width="60" height="25" as="geometry"/>
      </mxCell>
    </object>
    <object label="Zone Core Pair" ComponentGuid="7108598b-52a8-4942-8091-a7c46602d01c" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="" parent="3" id="cjdxwiZFUEl386gS18Un-153">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/router.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;imageBackground=#6666FF;strokeWidth=4;imageBorder=#0000CC;" parent="UxTfs5nLP9km1SiU_4_t-107" vertex="1">
        <mxGeometry x="199.65589999999997" y="333.71360000000004" width="60" height="25" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="051ef56a-0113-457d-b33b-87e29a78626d" Criticality="High" label="Zone Firewall Pair" internalLabel="FW-9" id="cjdxwiZFUEl386gS18Un-156">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/firewall.svg;fontSize=11;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;labelBackgroundColor=none;whiteSpace=wrap;" parent="UxTfs5nLP9km1SiU_4_t-107" vertex="1">
        <mxGeometry x="290.5" y="74" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="71f10319-928c-49bd-ba84-cbc18b8d90c7" Criticality="High" label="Zone Firewall Pair" internalLabel="Zone Firewall Pair" id="cjdxwiZFUEl386gS18Un-158">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/firewall.svg;fontSize=11;labelBackgroundColor=none;whiteSpace=wrap;" parent="UxTfs5nLP9km1SiU_4_t-107" vertex="1">
        <mxGeometry x="290.5" y="321" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object label="Mediation LAN" internalLabel="Mediation LAN" Security="Trusted" id="cjdxwiZFUEl386gS18Un-146">
      <mxCell style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#6c8ebf;labelBackgroundColor=none;fillColor=#dae8fc;strokeWidth=8;labelPosition=right;verticalLabelPosition=middle;align=left;verticalAlign=middle;" parent="UxTfs5nLP9km1SiU_4_t-107" source="cjdxwiZFUEl386gS18Un-142" target="21" edge="1">
        <mxGeometry relative="1" as="geometry">
          <mxPoint x="142.45249999999987" y="235.95080000000007" as="sourcePoint"/>
          <mxPoint x="142.45249999999987" y="155.95080000000007" as="targetPoint"/>
        </mxGeometry>
      </mxCell>
    </object>
    <mxCell id="cjdxwiZFUEl386gS18Un-152" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;labelBackgroundColor=none;endArrow=none;strokeColor=#808080;strokeWidth=1;fontSize=11;" parent="UxTfs5nLP9km1SiU_4_t-107" source="21" target="cjdxwiZFUEl386gS18Un-147" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="cjdxwiZFUEl386gS18Un-155" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;labelBackgroundColor=none;endArrow=none;strokeColor=#808080;strokeWidth=1;fontSize=11;" parent="UxTfs5nLP9km1SiU_4_t-107" source="cjdxwiZFUEl386gS18Un-142" target="cjdxwiZFUEl386gS18Un-153" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <object label="" internalLabel="" id="6nKIGXFCzWmfwkv6MnNh-109">
      <mxCell style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#6c8ebf;labelBackgroundColor=none;fillColor=#dae8fc;strokeWidth=8;labelPosition=right;verticalLabelPosition=middle;align=left;verticalAlign=middle;entryX=0.5;entryY=1;entryDx=0;entryDy=0;exitX=0.5;exitY=0;exitDx=0;exitDy=0;" parent="UxTfs5nLP9km1SiU_4_t-107" source="cjdxwiZFUEl386gS18Un-153" target="cjdxwiZFUEl386gS18Un-147" edge="1">
        <mxGeometry relative="1" as="geometry">
          <mxPoint x="238.5" y="287" as="sourcePoint"/>
          <mxPoint x="248.5" y="141.5" as="targetPoint"/>
        </mxGeometry>
      </mxCell>
    </object>
    <mxCell id="cjdxwiZFUEl386gS18Un-157" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;labelBackgroundColor=none;endArrow=none;strokeColor=#6C8EBF;strokeWidth=8;fontSize=11;" parent="UxTfs5nLP9km1SiU_4_t-107" source="cjdxwiZFUEl386gS18Un-147" target="cjdxwiZFUEl386gS18Un-156" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="cjdxwiZFUEl386gS18Un-159" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;labelBackgroundColor=none;endArrow=none;strokeColor=#6C8EBF;strokeWidth=8;fontSize=11;" parent="UxTfs5nLP9km1SiU_4_t-107" source="cjdxwiZFUEl386gS18Un-153" target="cjdxwiZFUEl386gS18Un-158" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <object label="" internalLabel="" id="cjdxwiZFUEl386gS18Un-160">
      <mxCell style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#6c8ebf;labelBackgroundColor=none;fillColor=#dae8fc;strokeWidth=8;labelPosition=right;verticalLabelPosition=middle;align=left;verticalAlign=middle;" parent="UxTfs5nLP9km1SiU_4_t-107" source="cjdxwiZFUEl386gS18Un-158" target="cjdxwiZFUEl386gS18Un-156" edge="1">
        <mxGeometry relative="1" as="geometry">
          <mxPoint x="320.5" y="307" as="sourcePoint"/>
          <mxPoint x="341.5" y="147" as="targetPoint"/>
        </mxGeometry>
      </mxCell>
    </object>
    <object label="Console Site Router" ComponentGuid="1bf065a7-cfb5-45cd-8458-500f8e01b9a3" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="" parent="3" id="35">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/router.svg;labelBackgroundColor=none;imageBackground=#6666FF;strokeWidth=4;imageBorder=#0000CC;" parent="UxTfs5nLP9km1SiU_4_t-107" vertex="1">
        <mxGeometry x="11.655899999999974" y="190.21360000000004" width="60" height="25" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="XH7oSB1Q3w3cp9QVCW1a-107" value="&lt;div style=&quot;text-align: left&quot;&gt;&lt;span&gt;Control Room Site - Customer Enterprise Network (CEN)&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left&quot;&gt;&lt;span style=&quot;font-weight: 400&quot;&gt;Control Room CENs usually host Nice Recording, DSS Recording, Elite API and/or CADI Services.&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left&quot;&gt;&lt;span style=&quot;font-weight: 400&quot;&gt;Control Room CENs are typically &quot;stubs&quot; (CEN LAN), meaning that they are single, dedicated subnets that are created to only host specific service.&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left&quot;&gt;&lt;span style=&quot;font-weight: 400&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left&quot;&gt;&lt;span style=&quot;font-weight: 400&quot;&gt;The Control Room Firewall is a firewall that is installed at a console site to allow communications with outside networks. The firewall will be configured for &lt;/span&gt;&lt;span style=&quot;font-size: 12px ; font-weight: 400&quot;&gt;network&lt;/span&gt;&lt;span style=&quot;font-weight: 400&quot;&gt;&amp;nbsp;address translation (NAT) mapping. The firewall will also be configured to only pass dispatch console related traffic to and from the customer network.&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left&quot;&gt;&lt;span style=&quot;font-weight: 400&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left&quot;&gt;&lt;span style=&quot;font-weight: 400&quot;&gt;Console Site LAN devices send all traffic to the Console Site Router. Traffic that is destined for the &lt;/span&gt;&lt;span style=&quot;font-size: 12px ; font-weight: 400&quot;&gt;Enterprise&lt;/span&gt;&lt;span style=&quot;font-weight: 400&quot;&gt;&amp;nbsp;CEN is sent to the firewall from the Console Site Router via a static route. All CEN hosts using these services need to be able to route to the dispatch site.&lt;/span&gt;&lt;/div&gt;" style="shape=rectangle;whiteSpace=wrap;html=1;strokeWidth=1;labelPosition=center;verticalLabelPosition=middle;align=center;verticalAlign=middle;fontStyle=1" parent="1" vertex="1">
      <mxGeometry x="150" y="-141" width="950" height="170" as="geometry"/>
    </mxCell>
    <object Criticality="Low" zone="1" ZoneType="Other" SAL="Very High" label="System LAN-Very High" internalLabel="System LAN" id="m1hxJIzNgrUlvDxOGyZo-107">
      <mxCell style="swimlane;zone=1;strokeColor=#B20000;fontColor=#000000;fillColor=#ece4d7;swimlaneFillColor=#f6f3ed;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="1240.5" y="391.5" width="368" height="247" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="9b69355c-4957-4cb4-b955-80056ac4edf3" Criticality="High" label="Firewall Mgt Server" internalLabel="AD-24" id="m1hxJIzNgrUlvDxOGyZo-109">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/active_directory.svg;labelBackgroundColor=none;imageBackground=#FF6666;imageBorder=#FF0000;strokeWidth=4;" parent="m1hxJIzNgrUlvDxOGyZo-107" vertex="1">
        <mxGeometry x="119" y="48" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="86f12799-f93a-4e71-8d84-01308f21254a" Criticality="High" label="CSMS" internalLabel="DB-25" id="m1hxJIzNgrUlvDxOGyZo-110">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/database_server.svg;labelBackgroundColor=none;imageBackground=#FF6666;imageBorder=#FF0000;strokeWidth=4;" parent="m1hxJIzNgrUlvDxOGyZo-107" vertex="1">
        <mxGeometry x="244" y="147" width="43" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="&amp;nbsp;" ComponentGuid="984e1378-9a75-439b-96b1-eaec190b3c3e" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="&amp;nbsp;" id="XNDtLr3cqQsbXonp8KkM-128">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="m1hxJIzNgrUlvDxOGyZo-107" vertex="1">
        <mxGeometry x="38" y="67" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="&amp;nbsp;" ComponentGuid="82282b19-f58e-4b1e-a4aa-b051aa86fe0a" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="&amp;nbsp;" id="XNDtLr3cqQsbXonp8KkM-131">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="m1hxJIzNgrUlvDxOGyZo-107" vertex="1">
        <mxGeometry x="38" y="167" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-130" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="m1hxJIzNgrUlvDxOGyZo-107" source="XNDtLr3cqQsbXonp8KkM-128" target="m1hxJIzNgrUlvDxOGyZo-109" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-132" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="m1hxJIzNgrUlvDxOGyZo-107" source="XNDtLr3cqQsbXonp8KkM-128" target="XNDtLr3cqQsbXonp8KkM-131" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-134" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="m1hxJIzNgrUlvDxOGyZo-107" source="XNDtLr3cqQsbXonp8KkM-131" target="m1hxJIzNgrUlvDxOGyZo-110" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="243" y="177" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object Criticality="Low" zone="1" ZoneType="Other" SAL="High" label="Zone Core LAN-High" internalLabel="Zone Core LAN" id="cjdxwiZFUEl386gS18Un-183">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fontSize=11;strokeColor=#82b366;whiteSpace=wrap;fillColor=#ece4d7;swimlaneFillColor=#f6f3ed;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="1240.5" y="-207.5" width="371" height="566" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="c44bbe77-90c8-44d2-9248-b67f9cd27a78" Criticality="High" label="Zone Database Server" internalLabel="Zone Database Server" id="cjdxwiZFUEl386gS18Un-184">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/database_server.svg;labelBackgroundColor=none;fontSize=11;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;imageBackground=#B5FA8F;imageBorder=#66CC00;strokeWidth=4;" parent="cjdxwiZFUEl386gS18Un-183" vertex="1">
        <mxGeometry x="118" y="225" width="43" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="96763130-f6b8-4cf0-9cc0-e0d4484dd79a" Criticality="High" label="Zone Backup Server" internalLabel="SVR-15" id="cjdxwiZFUEl386gS18Un-185">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;fontSize=11;imageBackground=#B5FA8F;imageBorder=#66CC00;strokeWidth=4;" parent="cjdxwiZFUEl386gS18Un-183" vertex="1">
        <mxGeometry x="258" y="473" width="23" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="775f68d7-29b7-4fca-904d-7288ed3f6ee5" Criticality="High" label="Zone UEM Server" internalLabel="SVR-16" id="cjdxwiZFUEl386gS18Un-186">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;fontSize=11;imageBackground=#B5FA8F;imageBorder=#66CC00;strokeWidth=4;" parent="cjdxwiZFUEl386gS18Un-183" vertex="1">
        <mxGeometry x="128" y="398.5" width="23" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="6622a6ba-9868-475e-bac1-8e33ec5948d9" Criticality="High" label="Zone Statistics Server" internalLabel="AS-17" id="cjdxwiZFUEl386gS18Un-187">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/application_server.svg;labelBackgroundColor=none;fontSize=11;imageBackground=#B5FA8F;imageBorder=#66CC00;strokeWidth=4;" parent="cjdxwiZFUEl386gS18Un-183" vertex="1">
        <mxGeometry x="244" y="325.5" width="44" height="60" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="2g9_9qOLPwzJJ6DQc6ya-110" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0;exitY=0.5;exitDx=0;exitDy=0;endArrow=none;strokeColor=#808080;labelBackgroundColor=none;labelPosition=right;verticalLabelPosition=bottom;align=left;verticalAlign=top;" parent="cjdxwiZFUEl386gS18Un-183" source="cjdxwiZFUEl386gS18Un-184" target="cjdxwiZFUEl386gS18Un-184" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <object ComponentGuid="bc088ff5-a041-4c5c-a02f-2fff627935be" Criticality="High" label="Zone Controller 01" internalLabel="EW-1" id="m-PKMXxfoYSgVNY3it_B-107">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/ews.svg;labelBackgroundColor=none;imageBackground=#B5FA8F;imageBorder=#66CC00;strokeWidth=4;" parent="cjdxwiZFUEl386gS18Un-183" vertex="1">
        <mxGeometry x="100" y="55" width="63" height="55" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="e299a91e-f696-4b7f-b0aa-0dc9f1d6de17" Criticality="High" label="Zone Controller 02" internalLabel="EW-1" id="m-PKMXxfoYSgVNY3it_B-108">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/ews.svg;labelBackgroundColor=none;imageBackground=#B5FA8F;imageBorder=#66CC00;strokeWidth=4;" parent="cjdxwiZFUEl386gS18Un-183" vertex="1">
        <mxGeometry x="226.5" y="142.5" width="63" height="55" as="geometry"/>
      </mxCell>
    </object>
    <object SAL="Moderate" label="CEN-Moderate" internalLabel="CEN" ZoneType="Corporate" zone="1" Criticality="Low" id="2">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=middle;align=center;verticalAlign=middle;strokeColor=#000000;fillColor=#fdf9d9;swimlaneFillColor=#fffef4;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="11" y="71" width="305" height="538" as="geometry"/>
      </mxCell>
    </object>
    <object label="Audio Recording Server" ComponentGuid="e7fdf040-49a3-402a-ac95-257ade9f041c" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="13">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/remote_access_server.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="94" y="421" width="34" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="&lt;span&gt;Agency Software Ops&lt;/span&gt;" ComponentGuid="fb69097e-468e-4622-99cb-8deda74c35fe" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="wJGx4hFZ0Sm7uMFEhMk5-141">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;labelPosition=right;verticalLabelPosition=middle;align=left;verticalAlign=middle;" parent="2" vertex="1">
        <mxGeometry x="202" y="90.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="&lt;span&gt;Agency CADICAD&lt;/span&gt;" ComponentGuid="23249778-d240-4527-9517-223c32eefa33" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="4i8PqE1TzuKkrrOvAeYK-143">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="2" vertex="1">
        <mxGeometry x="162.5" y="170" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="2a8cc1fe-15d9-4d41-85dd-7401edbb9a49" Criticality="Low" label="Remote LMR Console" internalLabel="PC-1" id="wJGx4hFZ0Sm7uMFEhMk5-140">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/pc.svg;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;whiteSpace=wrap;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="79" y="74" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="wJGx4hFZ0Sm7uMFEhMk5-143" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="2" source="wJGx4hFZ0Sm7uMFEhMk5-141" target="wJGx4hFZ0Sm7uMFEhMk5-140" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <object ComponentGuid="fd0531c4-ee86-4d54-8777-74325e7c9b27" Criticality="Low" label="CAD System" internalLabel="EW-2" id="4i8PqE1TzuKkrrOvAeYK-147">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/ews.svg;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="79" y="153" width="60" height="52" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="4i8PqE1TzuKkrrOvAeYK-148" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="2" source="4i8PqE1TzuKkrrOvAeYK-143" target="4i8PqE1TzuKkrrOvAeYK-147" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <object label="CEN Network IP/Mask" ComponentGuid="0d18b12b-055c-46d7-9ae4-ee98179c4afe" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" internalLabel="CON-3" id="xszBj1p53JAKddVs91M7-148">
      <mxCell style="html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;labelPosition=left;verticalLabelPosition=middle;align=right;verticalAlign=middle;" parent="2" vertex="1">
        <mxGeometry x="202" y="242.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="00572486-4939-45a5-b4fd-4d6fcf80716c" Criticality="Low" label="Audio Recorder Client" internalLabel="PC-4" id="74er5_TXb4ZCgvV5zPsg-144">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/pc.svg;whiteSpace=wrap;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="79" y="300" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-145" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="2" source="74er5_TXb4ZCgvV5zPsg-139" target="74er5_TXb4ZCgvV5zPsg-144" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <object label="Agency Recording" ComponentGuid="98a200b6-71ad-4163-85ab-696f712d8352" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" internalLabel="CON-3" id="74er5_TXb4ZCgvV5zPsg-139">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;labelPosition=right;verticalLabelPosition=middle;align=left;verticalAlign=middle;" parent="2" vertex="1">
        <mxGeometry x="202" y="378.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="16cd40b1-38c0-4a16-87c7-4e7b8dae23b0" Criticality="Low" label="Agency Firewall" internalLabel="FW-12" id="cjdxwiZFUEl386gS18Un-180">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/firewall.svg;labelBackgroundColor=none;fontSize=11;whiteSpace=wrap;" parent="2" vertex="1">
        <mxGeometry x="231" y="228" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="cjdxwiZFUEl386gS18Un-182" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;labelBackgroundColor=none;endArrow=none;strokeColor=#808080;strokeWidth=1;fontSize=11;" parent="2" source="xszBj1p53JAKddVs91M7-148" target="cjdxwiZFUEl386gS18Un-180" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="4i8PqE1TzuKkrrOvAeYK-144" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="2" source="wJGx4hFZ0Sm7uMFEhMk5-141" target="xszBj1p53JAKddVs91M7-148" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="225" y="158" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-140" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="2" source="xszBj1p53JAKddVs91M7-148" target="74er5_TXb4ZCgvV5zPsg-139" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="215" y="267" as="sourcePoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="4i8PqE1TzuKkrrOvAeYK-150" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="2" source="4i8PqE1TzuKkrrOvAeYK-143" target="xszBj1p53JAKddVs91M7-148" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="205" y="248" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-143" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="2" source="74er5_TXb4ZCgvV5zPsg-139" target="13" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="195" y="388" as="sourcePoint"/>
      </mxGeometry>
    </mxCell>
    <object SAL="High" label="Control Room-High" internalLabel="Control Room" ZoneType="Control System" zone="1" Criticality="Low" id="3">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#d3eef2;swimlaneFillColor=#f2f8f9;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="390" y="69" width="466" height="540" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-168" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="3" source="18" target="74er5_TXb4ZCgvV5zPsg-164" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="226" y="410" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-169" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="3" source="74er5_TXb4ZCgvV5zPsg-157" target="18" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="146" y="338" as="sourcePoint"/>
        <mxPoint x="207.5" y="271.89944134078223" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-159" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="3" source="18" target="74er5_TXb4ZCgvV5zPsg-158" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="313.31414490287716" y="271.9508000000001" as="sourcePoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-152" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="3" source="18" target="74er5_TXb4ZCgvV5zPsg-151" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <object label="Control Room Firewall" ComponentGuid="d2016409-df25-4c4f-87a0-e6b99e256d60" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="Control Room Firewall" id="14">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/firewall.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="17.2034" y="229.9508" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="260aa052-2428-45ad-8141-410d1d600b93" Criticality="Low" label="Dispatch Console 01" internalLabel="DC-5" id="74er5_TXb4ZCgvV5zPsg-151">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/dispatch_console.svg;whiteSpace=wrap;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;imageBackground=#6666FF;strokeWidth=4;imageBorder=#0000CC;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="114" y="111" width="46" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="d7ff4e13-cc1f-4dab-8192-3b858068cd6b" Criticality="Low" label="Dispatch Console 02" internalLabel="DC-5" id="74er5_TXb4ZCgvV5zPsg-157">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/dispatch_console.svg;whiteSpace=wrap;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;labelBackgroundColor=none;imageBackground=#6666FF;strokeWidth=4;imageBorder=#0000CC;" parent="3" vertex="1">
        <mxGeometry x="116" y="339" width="46" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object ComponentGuid="254b52f1-89c4-4e5c-a774-a680ee1d48ef" Criticality="Low" label="Dispatch Console 03" internalLabel="DC-5" id="74er5_TXb4ZCgvV5zPsg-158">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/dispatch_console.svg;whiteSpace=wrap;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;labelBackgroundColor=none;imageBackground=#6666FF;strokeWidth=4;imageBorder=#0000CC;" parent="3" vertex="1">
        <mxGeometry x="286.5" y="340" width="46" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Console Site Firewall" ComponentGuid="c23f1123-15aa-496a-8910-2ace96d1c82c" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="Control Room Firewall" id="74er5_TXb4ZCgvV5zPsg-162">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/firewall.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="386.7034" y="230.4508" width="60" height="51" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="82" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=#ffffff;" parent="3" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="303.1931999999997" y="255.95080000000007" as="sourcePoint"/>
        <mxPoint x="305.47450000000026" y="255.95080000000007" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object label="Aux I/O" ComponentGuid="8f952cf1-ca6e-46a4-959e-2dc6319e11e1" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="74er5_TXb4ZCgvV5zPsg-164">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/database_server.svg;labelBackgroundColor=none;imageBackground=#6666FF;strokeWidth=4;imageBorder=#0000CC;" parent="3" vertex="1">
        <mxGeometry x="197.5" y="418" width="43" height="60" as="geometry"/>
      </mxCell>
    </object>
    <object label="Control Site LAN" ComponentGuid="37b736a8-a5b0-4adf-b7b1-b3fbefe6aa7a" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="18">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="3" vertex="1">
        <mxGeometry x="207.9424" y="245.9508" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="73" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=#ffffff;" parent="3" source="14" target="18" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="107" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=#ffffff;" parent="3" source="18" target="74er5_TXb4ZCgvV5zPsg-162" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="303.1931999999997" y="255.95080000000007" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object ComponentGuid="3cca3871-7b9c-4240-adad-a0a35a7e70b0" Criticality="High" label="Dispatch IP Logger" internalLabel="DB-6" id="74er5_TXb4ZCgvV5zPsg-153">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/database_server.svg;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;whiteSpace=wrap;labelBackgroundColor=none;imageBackground=#6666FF;imageBorder=#0000CC;strokeWidth=4;" parent="3" vertex="1">
        <mxGeometry x="286" y="109" width="43" height="60" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-170" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="3" source="18" target="74er5_TXb4ZCgvV5zPsg-153" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="223" y="246" as="sourcePoint"/>
        <mxPoint x="291" y="334.7627032983421" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <object label="NAT Network Address Translation&amp;nbsp;" ComponentGuid="a93040be-8a83-4d06-bd6b-045a29c4b524" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="74er5_TXb4ZCgvV5zPsg-146">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="1" vertex="1">
        <mxGeometry x="346" y="314" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-148" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="74er5_TXb4ZCgvV5zPsg-146" target="14" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="cjdxwiZFUEl386gS18Un-181" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;labelBackgroundColor=none;endArrow=none;strokeColor=#808080;strokeWidth=1;fontSize=11;" parent="1" source="74er5_TXb4ZCgvV5zPsg-146" target="cjdxwiZFUEl386gS18Un-180" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <object label="&amp;nbsp;" ComponentGuid="41409b6b-b639-46cf-8e81-cb488a93599e" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="CON-27" id="b0xLSYqVklmmNSaO8BDo-107">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="1" vertex="1">
        <mxGeometry x="1286.5" y="210.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="&amp;nbsp;" ComponentGuid="5591b625-8c0c-4d20-9c78-294cda1bf230" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="CON-27" id="XNDtLr3cqQsbXonp8KkM-112">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="1" vertex="1">
        <mxGeometry x="1286.5" y="137.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="&amp;nbsp;" ComponentGuid="21cde674-dc41-4bf0-a2c9-e2e9ca1f47b3" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="CON-27" id="XNDtLr3cqQsbXonp8KkM-114">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="1" vertex="1">
        <mxGeometry x="1286.5" y="37.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="&amp;nbsp;" ComponentGuid="7c3c217f-c781-4ff3-b580-894111596000" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="CON-27" id="XNDtLr3cqQsbXonp8KkM-116">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="1" vertex="1">
        <mxGeometry x="1286.5" y="-47.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="&amp;nbsp;" ComponentGuid="389b1445-d01a-472a-9a51-ca96fc904c9d" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="CON-27" id="XNDtLr3cqQsbXonp8KkM-118">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="1" vertex="1">
        <mxGeometry x="1286.5" y="-133.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <object label="&amp;nbsp;" ComponentGuid="783265e3-a041-41cc-bf83-d744ed2ab8a5" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="CON-27" id="XNDtLr3cqQsbXonp8KkM-108">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="1" vertex="1">
        <mxGeometry x="1286.5" y="286.5" width="20" height="20" as="geometry"/>
      </mxCell>
    </object>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-107" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="b0xLSYqVklmmNSaO8BDo-107" target="cjdxwiZFUEl386gS18Un-186" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-109" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="b0xLSYqVklmmNSaO8BDo-107" target="XNDtLr3cqQsbXonp8KkM-108" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-111" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="XNDtLr3cqQsbXonp8KkM-108" target="cjdxwiZFUEl386gS18Un-185" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1386.5" y="324.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-113" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="b0xLSYqVklmmNSaO8BDo-107" target="XNDtLr3cqQsbXonp8KkM-112" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-115" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="XNDtLr3cqQsbXonp8KkM-112" target="XNDtLr3cqQsbXonp8KkM-114" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-117" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="XNDtLr3cqQsbXonp8KkM-114" target="XNDtLr3cqQsbXonp8KkM-116" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-119" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="XNDtLr3cqQsbXonp8KkM-116" target="XNDtLr3cqQsbXonp8KkM-118" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-125" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="XNDtLr3cqQsbXonp8KkM-114" target="cjdxwiZFUEl386gS18Un-184" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-127" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="XNDtLr3cqQsbXonp8KkM-112" target="cjdxwiZFUEl386gS18Un-187" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1458.5" y="149.5" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-120" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="XNDtLr3cqQsbXonp8KkM-118" target="m-PKMXxfoYSgVNY3it_B-107" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1343.5" y="-123.80519480519479" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-124" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="XNDtLr3cqQsbXonp8KkM-116" target="m-PKMXxfoYSgVNY3it_B-108" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1468.5" y="-37.92574257425747" as="targetPoint"/>
      </mxGeometry>
    </mxCell>
    <mxCell id="b0xLSYqVklmmNSaO8BDo-108" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;fontColor=#000000;" parent="1" source="cjdxwiZFUEl386gS18Un-156" target="b0xLSYqVklmmNSaO8BDo-107" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-129" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="XNDtLr3cqQsbXonp8KkM-128" target="cjdxwiZFUEl386gS18Un-158" edge="1">
      <mxGeometry relative="1" as="geometry"/>
    </mxCell>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-172" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;exitX=0;exitY=0.5;exitDx=0;exitDy=0;" parent="1" source="35" target="74er5_TXb4ZCgvV5zPsg-162" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="880.1558999999997" y="332.29340945677586" as="sourcePoint"/>
      </mxGeometry>
    </mxCell>
  </root>
</mxGraphModel>
' WHERE [Id] = 18

PRINT(N'Add row to [dbo].[GALLERY_ITEM]')
INSERT INTO [dbo].[GALLERY_ITEM] ([Gallery_Item_Guid], [Icon_File_Name_Small], [Icon_File_Name_Large], [Configuration_Setup], [Description], [Configuration_Setup_Client], [Title], [Is_Visible], [CreationDate]) VALUES ('ff43e99b-d6dd-409f-a07f-22f7aa55b9f3', N'CyberFlorida.png', N'CyberFlorida.png', N'{"Sets":["Florida_NCSF_V2"], "QuestionMode":"Questions", "Model":{"ModelName":"CPG"}, "Origin":"CF"}', N'This module was developed on behalf of The Florida Center for Cybersecurity (Cyber Florida). Cyber Florida was created by the State in 2014 to help Florida become a national leader in cybersecurity education, academic and practical research, and community outreach and engagement. The module includes the Ransomware Readiness Assessment and NIST’s Cybersecurity Framework requirements.', NULL, N'Cyber Florida Mid-Level Assessment', 1, '2024-08-28 12:34:46.050')

PRINT(N'Add row to [dbo].[MATURITY_MODELS]')
SET IDENTITY_INSERT [dbo].[MATURITY_MODELS] ON
INSERT INTO [dbo].[MATURITY_MODELS] ([Maturity_Model_Id], [Model_Name], [Answer_Options], [Questions_Alias], [Analytics_Rollup_Level], [Model_Title], [Maturity_Level_Usage_Type]) VALUES (19, N'SD02-E', N'Y,N,NA,A', N'Requirements', 1, N'Security Directive (SD) Pipeline-2021-02 Series E', N'Static')
SET IDENTITY_INSERT [dbo].[MATURITY_MODELS] OFF

PRINT(N'Add rows to [dbo].[NCSF_CONVERSION_MAPPINGS]')
SET IDENTITY_INSERT [dbo].[NCSF_CONVERSION_MAPPINGS] ON
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (1, N'GV.OC-02', N'1.B,1.C,1.D', N'GV.OC-02,GV.RR,GV.RR-02', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (2, N'GV.RM-05', N'1.G,1.H,1.I', N'GV.RM-05,GV.SC-01,GV.SC-06,GV.SC-09,GV.SC-10', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (3, N'GV.SC-05', N'1.G,1.H,1.I', N'GV.SC-06', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (4, N'ID.RA-01', N'1.E,1.F', N'ID.RA-02', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (5, N'PR.DS-01', N'2.K,2.L,2.M', N'PR.DS-01', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (6, N'', N'2.F,3.A', N'DE.CM-01', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (7, N'', N'1.B,1.C', N'GV.PO,GV.PO-01,GV.PO-02', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (8, N'', N'1.A', N'ID.AM-01', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (9, N'', N'2.S,5.A', N'ID.IM-02,ID.IM-04', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (10, N'', N'1.E', N'ID.RA-01,PR.PS-02,ID.RA-06,ID.RA-08', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (11, N'', N'1.F,3.A', N'ID.RA-03', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (12, N'', N'2.N,2.Q', N'ID.RA-07,PR.PS-01', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (13, N'', N'4.B,4.C', N'ID.RA-08', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (14, N'', N'2.A,2.B,2.C,2.D', N'PR.AA-01,PR.AA-05', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (15, N'', N'2.G,2.H', N'PR.AA-03', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (16, N'', N'2.E', N'PR.AA-05', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (17, N'', N'2.I', N'PR.AT-01', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (18, N'', N'2.J', N'PR.AT-01,PR.AT-02', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (19, N'', N'2.L,2.M', N'PR.DS-02,PR.DS-10', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (20, N'', N'2.V', N'PR.DS-01,PR.PS-01', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (21, N'', N'2.K', N'PR.DS-02', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (22, N'', N'2.R', N'PR.DS-11', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (23, N'', N'2.F', N'PR.IR-01', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (24, N'', N'2.N,2.O,2.P', N'PR.PS-01', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (25, N'', N'2.T,2.U', N'PR.PS-04', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (26, N'', N'5.A', N'RC.RP-01,RC.RP-02', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (27, N'', N'4.A', N'RS.CO-02,RS.CO-04,RS.MA-01,RS.MA-04', 11, N'NCSF_V2')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS] ([Conversion_Id], [Entry_Level_Titles], [Mid_Level_Titles], [Full_Level_Titles], [Maturity_Model_Id], [Set_Name]) VALUES (28, N'', N'2.F,2.W,2.X', N'PR.AA-06,PR.IR-01', 11, N'NCSF_V2')
SET IDENTITY_INSERT [dbo].[NCSF_CONVERSION_MAPPINGS] OFF
PRINT(N'Operation applied to 28 rows out of 28')

PRINT(N'Add rows to [dbo].[NCSF_CONVERSION_MAPPINGS_ENTRY]')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_ENTRY] ([Entry_Level_Titles], [Requirement_Id]) VALUES (N'GV.OC-02', 36479)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_ENTRY] ([Entry_Level_Titles], [Requirement_Id]) VALUES (N'GV.RM-05', 36487)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_ENTRY] ([Entry_Level_Titles], [Requirement_Id]) VALUES (N'GV.SC-05', 36494)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_ENTRY] ([Entry_Level_Titles], [Requirement_Id]) VALUES (N'ID.RA-01', 36409)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_ENTRY] ([Entry_Level_Titles], [Requirement_Id]) VALUES (N'PR.DS-01', 36417)
PRINT(N'Operation applied to 5 rows out of 5')

PRINT(N'Add rows to [dbo].[NCSF_CONVERSION_MAPPINGS_FULL]')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'DE.CM-01', 36424)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'GV.OC-02', 36479)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'GV.PO-01', 36504)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'GV.PO-02', 36505)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'GV.RM-05', 36487)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'GV.RR-02', 36501)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'GV.SC-01', 36490)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'GV.SC-06', 36495)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'GV.SC-09', 36498)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'GV.SC-10', 36499)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'ID.AM-01', 36403)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'ID.IM-02', 36444)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'ID.IM-04', 36446)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'ID.RA-01', 36409)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'ID.RA-02', 36410)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'ID.RA-03', 36411)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'ID.RA-06', 36414)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'ID.RA-07', 36440)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'ID.RA-08', 36441)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'PR.AA-01', 36447)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'PR.AA-03', 36449)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'PR.AA-05', 36451)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'PR.AA-06', 36452)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'PR.AT-01', 36415)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'PR.AT-02', 36416)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'PR.DS-01', 36417)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'PR.DS-02', 36418)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'PR.DS-10', 36453)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'PR.DS-11', 36454)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'PR.IR-01', 36461)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'PR.PS-01', 36455)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'PR.PS-02', 36456)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'PR.PS-04', 36458)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'RC.RP-01', 36433)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'RC.RP-02', 36434)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'RS.CO-02', 36428)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'RS.MA-01', 36468)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_FULL] ([Full_Level_Titles], [Requirement_Id]) VALUES (N'RS.MA-04', 36471)
PRINT(N'Operation applied to 38 rows out of 38')

PRINT(N'Add rows to [dbo].[NCSF_CONVERSION_MAPPINGS_MID]')
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'1.A', 9889)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'1.B', 9896)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'1.C', 9897)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'1.D', 9900)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'1.E', 9901)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'1.F', 9906)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'1.G', 9908)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'1.H', 9909)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'1.I', 9907)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.A', 9898)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.B', 9899)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.C', 9894)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.D', 9895)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.E', 9916)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.F', 9881)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.G', 9883)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.H', 9885)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.I', 9886)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.J', 9884)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.K', 9914)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.L', 9880)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.M', 9882)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.N', 9888)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.O', 9891)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.P', 9913)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.Q', 9887)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.R', 9912)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.S', 9911)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.T', 9892)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.U', 9893)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.V', 9890)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.W', 9904)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'2.X', 9905)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'3.A', 9915)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'4.A', 9902)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'4.B', 9903)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'4.C', 9910)
INSERT INTO [dbo].[NCSF_CONVERSION_MAPPINGS_MID] ([Mid_Level_Titles], [Question_Id]) VALUES (N'5.A', 9917)
PRINT(N'Operation applied to 38 rows out of 38')

PRINT(N'Add rows to [dbo].[NEW_QUESTION_SETS]')
SET IDENTITY_INSERT [dbo].[NEW_QUESTION_SETS] ON
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60707, N'WMATA', 1)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60708, N'WMATA YR2', 1)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60709, N'WMATA', 5)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60710, N'WMATA YR1', 5)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60711, N'WMATA', 8)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60712, N'WMATA YR2', 8)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60713, N'WMATA', 9)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60714, N'WMATA YR2', 9)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60715, N'WMATA', 12)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60716, N'WMATA', 20)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60717, N'WMATA YR2', 20)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60718, N'WMATA', 23)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60719, N'WMATA YR2', 23)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60720, N'WMATA', 24)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60721, N'WMATA', 26)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60722, N'WMATA', 27)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60723, N'WMATA', 28)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60724, N'WMATA', 29)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60725, N'WMATA', 30)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60726, N'WMATA', 32)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60727, N'WMATA', 33)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60728, N'WMATA', 34)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60729, N'WMATA', 35)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60730, N'WMATA', 36)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60731, N'WMATA', 37)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60732, N'WMATA', 38)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60733, N'WMATA', 39)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60734, N'WMATA', 41)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60735, N'WMATA', 43)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60736, N'WMATA', 44)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60737, N'WMATA', 45)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60738, N'WMATA', 48)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60739, N'WMATA', 49)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60740, N'WMATA', 50)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60741, N'WMATA', 51)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60742, N'WMATA', 52)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60743, N'WMATA', 54)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60744, N'WMATA', 56)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60745, N'WMATA', 57)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60746, N'WMATA', 58)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60747, N'WMATA', 59)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60748, N'WMATA', 60)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60749, N'WMATA', 61)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60750, N'WMATA', 62)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60751, N'WMATA', 63)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60752, N'WMATA', 65)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60753, N'WMATA', 66)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60754, N'WMATA', 68)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60755, N'WMATA YR1', 68)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60756, N'WMATA', 69)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60757, N'WMATA YR3', 69)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60758, N'WMATA', 71)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60759, N'WMATA', 74)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60760, N'WMATA', 75)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60761, N'WMATA YR2', 75)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60762, N'WMATA', 76)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60763, N'WMATA YR2', 76)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60764, N'WMATA', 77)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60765, N'WMATA YR2', 77)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60766, N'WMATA', 78)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60767, N'WMATA YR2', 78)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60768, N'WMATA', 79)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60769, N'WMATA YR2', 79)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60770, N'WMATA', 80)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60771, N'WMATA YR2', 80)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60772, N'WMATA', 81)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60773, N'WMATA YR2', 81)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60774, N'WMATA', 82)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60775, N'WMATA YR2', 82)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60776, N'WMATA', 84)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60777, N'WMATA YR2', 84)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60778, N'WMATA', 85)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60779, N'WMATA YR3', 85)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60780, N'WMATA', 87)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60781, N'WMATA YR3', 87)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60782, N'WMATA', 88)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60783, N'WMATA YR3', 88)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60784, N'WMATA', 89)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60785, N'WMATA YR2', 89)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60786, N'WMATA', 90)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60787, N'WMATA YR3', 90)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60788, N'WMATA', 91)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60789, N'WMATA YR2', 91)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60790, N'WMATA', 92)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60791, N'WMATA YR2', 92)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60792, N'WMATA', 93)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60793, N'WMATA YR2', 93)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60794, N'WMATA', 94)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60795, N'WMATA YR2', 94)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60796, N'WMATA', 95)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60797, N'WMATA YR3', 95)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60798, N'WMATA', 96)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60799, N'WMATA YR3', 96)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60800, N'WMATA', 98)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60801, N'WMATA YR2', 98)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60802, N'WMATA', 99)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60803, N'WMATA YR3', 99)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60804, N'WMATA', 100)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60805, N'WMATA YR3', 100)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60806, N'WMATA', 101)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60807, N'WMATA YR3', 101)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60808, N'WMATA', 102)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60809, N'WMATA YR3', 102)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60810, N'WMATA', 105)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60811, N'WMATA YR2', 105)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60812, N'WMATA', 106)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60813, N'WMATA YR3', 106)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60814, N'WMATA', 107)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60815, N'WMATA YR2', 107)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60816, N'WMATA', 108)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60817, N'WMATA YR2', 108)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60818, N'WMATA', 109)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60819, N'WMATA', 115)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60820, N'WMATA YR3', 115)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60821, N'WMATA', 123)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60822, N'WMATA YR2', 123)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60823, N'WMATA', 124)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60824, N'WMATA YR2', 124)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60825, N'WMATA', 126)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60826, N'WMATA YR3', 126)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60827, N'WMATA', 127)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60828, N'WMATA YR2', 127)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60829, N'WMATA', 130)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60830, N'WMATA YR3', 130)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60831, N'WMATA', 131)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60832, N'WMATA YR2', 131)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60833, N'WMATA', 132)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60834, N'WMATA YR2', 132)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60835, N'WMATA', 133)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60836, N'WMATA YR2', 133)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60837, N'WMATA', 134)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60838, N'WMATA YR2', 134)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60839, N'WMATA', 135)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60840, N'WMATA', 136)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60841, N'WMATA', 137)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60842, N'WMATA', 141)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60843, N'WMATA', 142)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60844, N'WMATA', 143)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60845, N'WMATA YR2', 143)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60846, N'WMATA', 145)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60847, N'WMATA YR2', 145)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60848, N'WMATA', 148)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60849, N'WMATA YR2', 148)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60850, N'WMATA', 152)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60851, N'WMATA YR2', 152)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60852, N'WMATA', 153)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60853, N'WMATA YR2', 153)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60854, N'WMATA', 163)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60855, N'WMATA', 164)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60856, N'WMATA', 165)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60857, N'WMATA', 166)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60858, N'WMATA', 170)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60859, N'WMATA', 171)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60860, N'WMATA', 172)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60861, N'WMATA', 173)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60862, N'WMATA', 174)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60863, N'WMATA YR2', 174)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60864, N'WMATA', 175)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60865, N'WMATA YR2', 175)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60866, N'WMATA', 176)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60867, N'WMATA YR2', 176)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60868, N'WMATA', 178)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60869, N'WMATA', 179)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60870, N'WMATA YR2', 179)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60871, N'WMATA', 180)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60872, N'WMATA', 181)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60873, N'WMATA', 182)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60874, N'WMATA', 184)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60875, N'WMATA', 187)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60876, N'WMATA YR2', 187)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60877, N'WMATA', 192)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60878, N'WMATA YR3', 192)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60879, N'WMATA', 193)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60880, N'WMATA YR3', 193)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60881, N'WMATA', 196)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60882, N'WMATA YR2', 196)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60883, N'WMATA', 197)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60884, N'WMATA YR3', 197)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60885, N'WMATA', 198)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60886, N'WMATA YR3', 198)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60887, N'WMATA', 202)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60888, N'WMATA YR1', 202)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60889, N'WMATA', 205)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60890, N'WMATA YR1', 205)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60891, N'WMATA', 206)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60892, N'WMATA YR1', 206)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60893, N'WMATA', 208)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60894, N'WMATA YR1', 208)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60895, N'WMATA', 209)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60896, N'WMATA YR2', 209)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60897, N'WMATA', 211)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60898, N'WMATA YR1', 211)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60899, N'WMATA', 214)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60900, N'WMATA YR2', 214)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60901, N'WMATA', 215)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60902, N'WMATA YR2', 215)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60903, N'WMATA', 216)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60904, N'WMATA YR2', 216)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60905, N'WMATA', 217)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60906, N'WMATA YR2', 217)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60907, N'WMATA', 219)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60908, N'WMATA YR1', 219)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60909, N'WMATA', 220)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60910, N'WMATA YR1', 220)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60911, N'WMATA', 221)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60912, N'WMATA YR1', 221)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60913, N'WMATA', 222)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60914, N'WMATA YR1', 222)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60915, N'WMATA', 223)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60916, N'WMATA YR1', 223)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60917, N'WMATA', 224)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60918, N'WMATA YR1', 224)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60919, N'WMATA', 225)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60920, N'WMATA YR1', 225)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60921, N'WMATA', 226)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60922, N'WMATA YR1', 226)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60923, N'WMATA', 227)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60924, N'WMATA YR3', 227)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60925, N'WMATA', 231)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60926, N'WMATA YR1', 231)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60927, N'WMATA', 232)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60928, N'WMATA YR1', 232)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60929, N'WMATA', 233)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60930, N'WMATA YR1', 233)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60931, N'WMATA', 234)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60932, N'WMATA YR2', 234)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60933, N'WMATA', 235)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60934, N'WMATA YR1', 235)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60935, N'WMATA', 236)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60936, N'WMATA YR2', 236)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60937, N'WMATA', 237)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60938, N'WMATA YR3', 237)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60939, N'WMATA', 238)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60940, N'WMATA YR3', 238)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60941, N'WMATA', 241)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60942, N'WMATA YR3', 241)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60943, N'WMATA', 243)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60944, N'WMATA YR2', 243)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60945, N'WMATA', 244)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60946, N'WMATA YR3', 244)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60947, N'WMATA', 245)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60948, N'WMATA', 248)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60949, N'WMATA YR1', 248)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60950, N'WMATA', 252)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60951, N'WMATA YR1', 252)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60952, N'WMATA', 254)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60953, N'WMATA YR1', 254)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60954, N'WMATA', 258)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60955, N'WMATA YR1', 258)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60956, N'WMATA', 259)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60957, N'WMATA', 260)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60958, N'WMATA', 261)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60959, N'WMATA YR1', 261)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60960, N'WMATA', 262)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60961, N'WMATA YR2', 262)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60962, N'WMATA', 268)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60963, N'WMATA YR1', 268)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60964, N'WMATA', 269)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60965, N'WMATA YR1', 269)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60966, N'WMATA', 270)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60967, N'WMATA YR1', 270)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60968, N'WMATA', 276)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60969, N'WMATA YR1', 276)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60970, N'WMATA', 277)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60971, N'WMATA YR1', 277)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60972, N'WMATA', 282)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60973, N'WMATA', 290)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60974, N'WMATA YR2', 290)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60975, N'WMATA', 304)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60976, N'WMATA YR3', 304)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60977, N'WMATA', 310)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60978, N'WMATA YR1', 310)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60979, N'WMATA', 311)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60980, N'WMATA YR1', 311)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60981, N'WMATA', 312)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60982, N'WMATA YR1', 312)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60983, N'WMATA', 325)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60984, N'WMATA', 336)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60985, N'WMATA YR1', 336)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60986, N'WMATA', 338)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60987, N'WMATA', 340)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60988, N'WMATA', 344)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60989, N'WMATA', 345)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60990, N'WMATA', 347)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60991, N'WMATA', 352)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60992, N'WMATA YR1', 352)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60993, N'WMATA', 353)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60994, N'WMATA', 360)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60995, N'WMATA YR1', 360)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60996, N'WMATA', 361)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60997, N'WMATA YR1', 361)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60998, N'WMATA', 362)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (60999, N'WMATA YR2', 362)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61000, N'WMATA', 364)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61001, N'WMATA', 385)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61002, N'WMATA', 387)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61003, N'WMATA YR1', 387)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61004, N'WMATA', 388)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61005, N'WMATA YR1', 388)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61006, N'WMATA', 389)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61007, N'WMATA YR1', 389)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61008, N'WMATA', 393)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61009, N'WMATA YR1', 393)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61010, N'WMATA', 395)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61011, N'WMATA YR2', 395)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61012, N'WMATA', 396)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61013, N'WMATA YR2', 396)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61014, N'WMATA', 397)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61015, N'WMATA YR1', 397)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61016, N'WMATA', 403)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61017, N'WMATA YR2', 403)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61018, N'WMATA', 404)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61019, N'WMATA', 406)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61020, N'WMATA', 414)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61021, N'WMATA', 416)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61022, N'WMATA', 418)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61023, N'WMATA', 420)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61024, N'WMATA YR2', 420)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61025, N'WMATA', 424)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61026, N'WMATA YR1', 424)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61027, N'WMATA', 428)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61028, N'WMATA YR2', 428)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61029, N'WMATA', 437)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61030, N'WMATA', 440)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61031, N'WMATA YR1', 440)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61032, N'WMATA', 441)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61033, N'WMATA YR1', 441)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61034, N'WMATA', 442)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61035, N'WMATA YR1', 442)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61036, N'WMATA', 443)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61037, N'WMATA YR1', 443)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61038, N'WMATA', 444)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61039, N'WMATA', 446)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61040, N'WMATA', 450)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61041, N'WMATA YR1', 450)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61042, N'WMATA', 451)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61043, N'WMATA YR1', 451)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61044, N'WMATA', 452)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61045, N'WMATA YR1', 452)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61046, N'WMATA', 453)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61047, N'WMATA YR1', 453)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61048, N'WMATA', 454)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61049, N'WMATA', 455)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61050, N'WMATA', 456)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61051, N'WMATA', 459)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61052, N'WMATA YR1', 459)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61053, N'WMATA', 460)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61054, N'WMATA YR1', 460)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61055, N'WMATA', 464)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61056, N'WMATA', 465)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61057, N'WMATA', 466)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61058, N'WMATA', 467)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61059, N'WMATA', 469)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61060, N'WMATA', 470)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61061, N'WMATA YR2', 470)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61062, N'WMATA', 471)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61063, N'WMATA YR2', 471)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61064, N'WMATA', 474)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61065, N'WMATA YR1', 474)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61066, N'WMATA', 475)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61067, N'WMATA YR1', 475)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61068, N'WMATA', 476)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61069, N'WMATA YR1', 476)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61070, N'WMATA', 477)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61071, N'WMATA YR1', 477)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61072, N'WMATA', 478)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61073, N'WMATA YR1', 478)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61074, N'WMATA', 479)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61075, N'WMATA YR1', 479)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61076, N'WMATA', 480)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61077, N'WMATA YR1', 480)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61078, N'WMATA', 482)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61079, N'WMATA YR2', 482)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61080, N'WMATA', 483)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61081, N'WMATA YR3', 483)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61082, N'WMATA', 487)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61083, N'WMATA YR2', 487)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61084, N'WMATA', 488)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61085, N'WMATA YR2', 488)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61086, N'WMATA', 489)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61087, N'WMATA YR2', 489)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61088, N'WMATA', 490)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61089, N'WMATA YR3', 490)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61090, N'WMATA', 511)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61091, N'WMATA YR2', 511)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61092, N'WMATA', 512)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61093, N'WMATA YR2', 512)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61094, N'WMATA', 513)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61095, N'WMATA YR2', 513)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61096, N'WMATA', 514)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61097, N'WMATA YR3', 514)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61098, N'WMATA', 515)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61099, N'WMATA', 516)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61100, N'WMATA YR2', 516)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61101, N'WMATA', 518)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61102, N'WMATA YR2', 518)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61103, N'WMATA', 519)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61104, N'WMATA YR2', 519)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61105, N'WMATA', 520)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61106, N'WMATA YR2', 520)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61107, N'WMATA', 521)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61108, N'WMATA YR2', 521)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61109, N'WMATA', 522)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61110, N'WMATA YR2', 522)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61111, N'WMATA', 523)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61112, N'WMATA YR3', 523)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61113, N'WMATA', 524)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61114, N'WMATA YR3', 524)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61115, N'WMATA', 525)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61116, N'WMATA YR3', 525)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61117, N'WMATA', 527)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61118, N'WMATA YR3', 527)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61119, N'WMATA', 529)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61120, N'WMATA', 531)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61121, N'WMATA YR1', 531)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61122, N'WMATA', 532)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61123, N'WMATA YR1', 532)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61124, N'WMATA', 533)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61125, N'WMATA YR3', 533)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61126, N'WMATA', 535)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61127, N'WMATA YR3', 535)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61128, N'WMATA', 536)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61129, N'WMATA YR1', 536)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61130, N'WMATA', 537)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61131, N'WMATA YR1', 537)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61132, N'WMATA', 538)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61133, N'WMATA YR1', 538)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61134, N'WMATA', 539)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61135, N'WMATA YR2', 539)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61136, N'WMATA', 540)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61137, N'WMATA YR1', 540)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61138, N'WMATA', 542)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61139, N'WMATA YR3', 542)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61140, N'WMATA', 544)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61141, N'WMATA YR3', 544)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61142, N'WMATA', 547)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61143, N'WMATA YR1', 547)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61144, N'WMATA', 548)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61145, N'WMATA YR1', 548)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61146, N'WMATA', 551)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61147, N'WMATA YR1', 551)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61148, N'WMATA', 552)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61149, N'WMATA YR1', 552)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61150, N'WMATA', 553)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61151, N'WMATA YR2', 553)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61152, N'WMATA', 554)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61153, N'WMATA YR3', 554)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61154, N'WMATA', 557)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61155, N'WMATA YR1', 557)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61156, N'WMATA', 558)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61157, N'WMATA YR1', 558)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61158, N'WMATA', 559)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61159, N'WMATA YR1', 559)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61160, N'WMATA', 560)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61161, N'WMATA YR1', 560)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61162, N'WMATA', 561)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61163, N'WMATA YR2', 561)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61164, N'WMATA', 562)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61165, N'WMATA YR2', 562)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61166, N'WMATA', 565)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61167, N'WMATA YR3', 565)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61168, N'WMATA', 576)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61169, N'WMATA YR1', 576)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61170, N'WMATA', 577)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61171, N'WMATA YR1', 577)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61172, N'WMATA', 578)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61173, N'WMATA YR1', 578)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61174, N'WMATA', 579)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61175, N'WMATA YR1', 579)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61176, N'WMATA', 580)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61177, N'WMATA YR1', 580)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61178, N'WMATA', 581)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61179, N'WMATA YR2', 581)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61180, N'WMATA', 583)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61181, N'WMATA YR3', 583)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61182, N'WMATA', 587)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61183, N'WMATA YR1', 587)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61184, N'WMATA', 588)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61185, N'WMATA YR1', 588)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61186, N'WMATA', 591)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61187, N'WMATA YR1', 591)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61188, N'WMATA', 592)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61189, N'WMATA YR1', 592)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61190, N'WMATA', 593)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61191, N'WMATA YR1', 593)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61192, N'WMATA', 595)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61193, N'WMATA YR1', 595)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61194, N'WMATA', 601)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61195, N'WMATA YR1', 601)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61196, N'WMATA', 603)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61197, N'WMATA YR1', 603)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61198, N'WMATA', 605)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61199, N'WMATA YR1', 605)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61200, N'WMATA', 606)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61201, N'WMATA YR1', 606)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61202, N'WMATA', 607)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61203, N'WMATA YR1', 607)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61204, N'WMATA', 608)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61205, N'WMATA YR1', 608)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61206, N'WMATA', 609)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61207, N'WMATA YR1', 609)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61208, N'WMATA', 610)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61209, N'WMATA YR1', 610)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61210, N'WMATA', 612)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61211, N'WMATA', 614)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61212, N'WMATA', 615)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61213, N'WMATA', 616)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61214, N'WMATA YR1', 616)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61215, N'WMATA', 620)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61216, N'WMATA', 622)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61217, N'WMATA YR1', 622)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61218, N'WMATA', 623)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61219, N'WMATA YR1', 623)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61220, N'WMATA', 630)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61221, N'WMATA YR1', 630)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61222, N'WMATA', 631)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61223, N'WMATA YR1', 631)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61224, N'WMATA', 632)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61225, N'WMATA YR1', 632)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61226, N'WMATA', 634)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61227, N'WMATA', 636)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61228, N'WMATA', 638)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61229, N'WMATA', 640)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61230, N'WMATA YR3', 640)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61231, N'WMATA', 641)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61232, N'WMATA', 643)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61233, N'WMATA YR2', 643)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61234, N'WMATA', 644)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61235, N'WMATA YR3', 644)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61236, N'WMATA', 645)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61237, N'WMATA YR3', 645)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61238, N'WMATA', 646)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61239, N'WMATA YR3', 646)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61240, N'WMATA', 648)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61241, N'WMATA YR3', 648)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61242, N'WMATA', 649)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61243, N'WMATA YR3', 649)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61244, N'WMATA', 650)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61245, N'WMATA YR3', 650)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61246, N'WMATA', 651)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61247, N'WMATA YR3', 651)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61248, N'WMATA', 652)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61249, N'WMATA YR3', 652)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61250, N'WMATA', 654)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61251, N'WMATA YR3', 654)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61252, N'WMATA', 655)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61253, N'WMATA YR3', 655)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61254, N'WMATA', 656)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61255, N'WMATA YR3', 656)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61256, N'WMATA', 657)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61257, N'WMATA YR2', 657)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61258, N'WMATA', 658)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61259, N'WMATA YR2', 658)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61260, N'WMATA', 659)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61261, N'WMATA YR2', 659)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61262, N'WMATA', 660)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61263, N'WMATA YR2', 660)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61264, N'WMATA', 661)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61265, N'WMATA YR2', 661)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61266, N'WMATA', 662)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61267, N'WMATA YR2', 662)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61268, N'WMATA', 663)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61269, N'WMATA YR2', 663)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61270, N'WMATA', 664)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61271, N'WMATA YR2', 664)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61272, N'WMATA', 665)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61273, N'WMATA YR2', 665)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61274, N'WMATA', 666)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61275, N'WMATA YR2', 666)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61276, N'WMATA', 669)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61277, N'WMATA YR2', 669)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61278, N'WMATA', 675)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61279, N'WMATA YR2', 675)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61280, N'WMATA', 677)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61281, N'WMATA YR2', 677)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61282, N'WMATA', 678)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61283, N'WMATA YR2', 678)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61284, N'WMATA', 679)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61285, N'WMATA YR2', 679)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61286, N'WMATA', 680)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61287, N'WMATA YR2', 680)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61288, N'WMATA', 682)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61289, N'WMATA YR2', 682)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61290, N'WMATA', 683)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61291, N'WMATA YR2', 683)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61292, N'WMATA', 684)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61293, N'WMATA YR3', 684)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61294, N'WMATA', 691)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61295, N'WMATA YR3', 691)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61296, N'WMATA', 693)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61297, N'WMATA YR3', 693)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61298, N'WMATA', 694)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61299, N'WMATA YR3', 694)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61300, N'WMATA', 703)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61301, N'WMATA YR1', 703)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61302, N'WMATA', 704)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61303, N'WMATA YR1', 704)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61304, N'WMATA', 705)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61305, N'WMATA YR1', 705)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61306, N'WMATA', 707)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61307, N'WMATA YR2', 707)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61308, N'WMATA', 708)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61309, N'WMATA YR2', 708)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61310, N'WMATA', 709)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61311, N'WMATA YR2', 709)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61312, N'WMATA', 710)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61313, N'WMATA YR3', 710)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61314, N'WMATA', 711)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61315, N'WMATA YR2', 711)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61316, N'WMATA', 712)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61317, N'WMATA YR2', 712)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61318, N'WMATA', 713)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61319, N'WMATA', 716)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61320, N'WMATA', 719)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61321, N'WMATA', 720)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61322, N'WMATA YR2', 720)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61323, N'WMATA', 721)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61324, N'WMATA YR2', 721)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61325, N'WMATA', 722)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61326, N'WMATA YR2', 722)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61327, N'WMATA', 723)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61328, N'WMATA', 724)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61329, N'WMATA', 725)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61330, N'WMATA', 728)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61331, N'WMATA YR2', 728)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61332, N'WMATA', 729)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61333, N'WMATA YR2', 729)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61334, N'WMATA', 730)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61335, N'WMATA YR2', 730)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61336, N'WMATA', 742)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61337, N'WMATA YR3', 742)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61338, N'WMATA', 746)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61339, N'WMATA YR2', 746)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61340, N'WMATA', 747)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61341, N'WMATA YR2', 747)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61342, N'WMATA', 748)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61343, N'WMATA YR2', 748)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61344, N'WMATA', 749)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61345, N'WMATA YR2', 749)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61346, N'WMATA', 750)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61347, N'WMATA YR3', 750)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61348, N'WMATA', 751)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61349, N'WMATA YR3', 751)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61350, N'WMATA', 752)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61351, N'WMATA YR1', 752)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61352, N'WMATA', 753)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61353, N'WMATA YR2', 753)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61354, N'WMATA', 754)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61355, N'WMATA YR2', 754)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61356, N'WMATA', 755)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61357, N'WMATA YR2', 755)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61358, N'WMATA', 758)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61359, N'WMATA YR2', 758)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61360, N'WMATA', 759)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61361, N'WMATA YR1', 759)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61362, N'WMATA', 760)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61363, N'WMATA YR1', 760)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61364, N'WMATA', 761)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61365, N'WMATA YR1', 761)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61366, N'WMATA', 762)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61367, N'WMATA YR1', 762)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61368, N'WMATA', 763)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61369, N'WMATA YR1', 763)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61370, N'WMATA', 764)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61371, N'WMATA', 766)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61372, N'WMATA YR2', 766)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61373, N'WMATA', 772)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61374, N'WMATA YR3', 772)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61375, N'WMATA', 773)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61376, N'WMATA YR1', 773)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61377, N'WMATA', 774)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61378, N'WMATA YR1', 774)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61379, N'WMATA', 775)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61380, N'WMATA YR1', 775)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61381, N'WMATA', 779)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61382, N'WMATA YR1', 779)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61383, N'WMATA', 780)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61384, N'WMATA YR1', 780)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61385, N'WMATA', 782)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61386, N'WMATA YR1', 782)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61387, N'WMATA', 783)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61388, N'WMATA YR1', 783)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61389, N'WMATA', 784)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61390, N'WMATA YR1', 784)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61391, N'WMATA', 785)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61392, N'WMATA YR2', 785)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61393, N'WMATA', 786)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61394, N'WMATA YR2', 786)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61395, N'WMATA', 788)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61396, N'WMATA YR1', 788)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61397, N'WMATA', 790)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61398, N'WMATA YR2', 790)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61399, N'WMATA', 794)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61400, N'WMATA YR1', 794)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61401, N'WMATA', 797)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61402, N'WMATA YR1', 797)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61403, N'WMATA', 799)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61404, N'WMATA YR2', 799)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61405, N'WMATA', 800)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61406, N'WMATA YR3', 800)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61407, N'WMATA', 801)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61408, N'WMATA YR1', 801)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61409, N'WMATA', 812)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61410, N'WMATA YR1', 812)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61411, N'WMATA', 814)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61412, N'WMATA YR1', 814)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61413, N'WMATA', 815)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61414, N'WMATA YR1', 815)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61415, N'WMATA', 816)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61416, N'WMATA YR2', 816)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61417, N'WMATA', 818)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61418, N'WMATA YR1', 818)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61419, N'WMATA', 895)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61420, N'WMATA YR1', 895)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61421, N'WMATA', 991)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61422, N'WMATA YR3', 991)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61423, N'WMATA', 1217)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61424, N'WMATA', 1244)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61425, N'WMATA YR1', 1244)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61426, N'WMATA', 1259)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61427, N'WMATA YR1', 1259)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61428, N'WMATA', 1260)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61429, N'WMATA YR2', 1260)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61430, N'WMATA', 1269)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61431, N'WMATA YR1', 1269)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61432, N'WMATA', 1280)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61433, N'WMATA YR1', 1280)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61434, N'WMATA', 1282)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61435, N'WMATA YR3', 1282)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61436, N'WMATA', 1283)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61437, N'WMATA YR3', 1283)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61438, N'WMATA', 1284)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61439, N'WMATA YR2', 1284)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61440, N'WMATA', 1292)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61441, N'WMATA YR2', 1292)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61442, N'WMATA', 1293)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61443, N'WMATA YR2', 1293)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61444, N'WMATA', 1297)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61445, N'WMATA YR2', 1297)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61446, N'WMATA', 1301)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61447, N'WMATA YR1', 1301)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61448, N'WMATA', 1302)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61449, N'WMATA YR1', 1302)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61450, N'WMATA', 1304)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61451, N'WMATA YR3', 1304)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61452, N'WMATA', 1308)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61453, N'WMATA YR1', 1308)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61454, N'WMATA', 1309)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61455, N'WMATA', 1310)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61456, N'WMATA YR2', 1310)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61457, N'WMATA', 1311)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61458, N'WMATA YR2', 1311)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61459, N'WMATA', 1312)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61460, N'WMATA YR3', 1312)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61461, N'WMATA', 1313)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61462, N'WMATA YR3', 1313)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61463, N'WMATA', 1314)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61464, N'WMATA YR3', 1314)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61465, N'WMATA', 1315)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61466, N'WMATA YR2', 1315)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61467, N'WMATA', 1316)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61468, N'WMATA YR2', 1316)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61469, N'WMATA', 1321)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61470, N'WMATA YR3', 1321)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61471, N'WMATA', 1324)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61472, N'WMATA YR2', 1324)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61473, N'WMATA', 1326)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61474, N'WMATA YR1', 1326)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61475, N'WMATA', 1327)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61476, N'WMATA YR1', 1327)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61477, N'WMATA', 1328)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61478, N'WMATA YR1', 1328)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61479, N'WMATA', 1329)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61480, N'WMATA YR1', 1329)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61481, N'WMATA', 1330)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61482, N'WMATA YR1', 1330)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61483, N'WMATA', 1334)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61484, N'WMATA YR1', 1334)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61485, N'WMATA', 1336)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61486, N'WMATA YR3', 1336)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61487, N'WMATA', 1337)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61488, N'WMATA YR3', 1337)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61489, N'WMATA', 1338)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61490, N'WMATA YR3', 1338)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61491, N'WMATA', 1346)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61492, N'WMATA YR3', 1346)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61493, N'WMATA', 1352)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61494, N'WMATA YR2', 1352)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61495, N'WMATA', 1356)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61496, N'WMATA YR3', 1356)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61497, N'WMATA', 1358)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61498, N'WMATA', 1367)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61499, N'WMATA', 1368)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61500, N'WMATA', 1369)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61501, N'WMATA', 1378)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61502, N'WMATA', 1384)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61503, N'WMATA YR1', 1384)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61504, N'WMATA', 1392)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61505, N'WMATA', 1405)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61506, N'WMATA', 1406)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61507, N'WMATA', 1407)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61508, N'WMATA', 1416)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61509, N'WMATA', 1421)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61510, N'WMATA YR2', 1421)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61511, N'WMATA', 1468)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61512, N'WMATA YR3', 1468)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61513, N'WMATA', 1840)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61514, N'WMATA YR2', 1840)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61515, N'WMATA', 1853)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61516, N'WMATA YR1', 1853)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61517, N'WMATA', 1854)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61518, N'WMATA YR1', 1854)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61519, N'WMATA', 1865)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61520, N'WMATA YR3', 1865)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61521, N'WMATA', 1871)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61522, N'WMATA YR2', 1871)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61523, N'WMATA', 1872)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61524, N'WMATA YR2', 1872)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61525, N'WMATA', 1873)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61526, N'WMATA YR2', 1873)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61527, N'WMATA', 1874)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61528, N'WMATA YR2', 1874)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61529, N'WMATA', 1875)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61530, N'WMATA YR2', 1875)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61531, N'WMATA', 1877)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61532, N'WMATA YR3', 1877)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61533, N'WMATA', 1878)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61534, N'WMATA YR3', 1878)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61535, N'WMATA', 1882)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61536, N'WMATA YR3', 1882)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61537, N'WMATA', 1883)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61538, N'WMATA YR3', 1883)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61539, N'WMATA', 1885)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61540, N'WMATA YR2', 1885)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61541, N'WMATA', 1886)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61542, N'WMATA YR2', 1886)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61543, N'WMATA', 1889)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61544, N'WMATA YR2', 1889)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61545, N'WMATA', 1890)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61546, N'WMATA YR2', 1890)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61547, N'WMATA', 1891)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61548, N'WMATA YR2', 1891)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61549, N'WMATA', 1892)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61550, N'WMATA YR2', 1892)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61551, N'WMATA', 1893)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61552, N'WMATA YR2', 1893)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61553, N'WMATA', 1894)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61554, N'WMATA YR3', 1894)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61555, N'WMATA', 1896)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61556, N'WMATA YR3', 1896)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61557, N'WMATA', 1899)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61558, N'WMATA YR2', 1899)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61559, N'WMATA', 1900)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61560, N'WMATA YR3', 1900)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61561, N'WMATA', 1902)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61562, N'WMATA YR2', 1902)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61563, N'WMATA', 1903)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61564, N'WMATA YR2', 1903)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61565, N'WMATA', 1904)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61566, N'WMATA YR3', 1904)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61567, N'WMATA', 1905)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61568, N'WMATA YR3', 1905)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61569, N'WMATA', 1906)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61570, N'WMATA YR2', 1906)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61571, N'WMATA', 1908)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61572, N'WMATA YR3', 1908)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61573, N'WMATA', 1911)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61574, N'WMATA', 1913)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61575, N'WMATA', 1916)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61576, N'WMATA YR3', 1916)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61577, N'WMATA', 1917)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61578, N'WMATA YR1', 1917)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61579, N'WMATA', 1920)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61580, N'WMATA', 1927)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61581, N'WMATA YR3', 1927)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61582, N'WMATA', 1939)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61583, N'WMATA YR2', 1939)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61584, N'WMATA', 1946)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61585, N'WMATA YR1', 1946)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61586, N'WMATA', 1947)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61587, N'WMATA YR3', 1947)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61588, N'WMATA', 1948)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61589, N'WMATA', 1950)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61590, N'WMATA', 1951)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61591, N'WMATA', 1952)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61592, N'WMATA', 1967)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61593, N'WMATA YR2', 1967)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61594, N'WMATA', 1968)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61595, N'WMATA', 1969)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61596, N'WMATA', 1970)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61597, N'WMATA', 1971)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61598, N'WMATA', 1972)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61599, N'WMATA', 1974)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61600, N'WMATA', 1975)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61601, N'WMATA', 1981)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61602, N'WMATA', 1984)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61603, N'WMATA', 1985)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61604, N'WMATA', 1987)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61605, N'WMATA', 1995)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61606, N'WMATA YR2', 1995)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61607, N'WMATA', 2006)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61608, N'WMATA', 2007)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61609, N'WMATA', 2013)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61610, N'WMATA', 2022)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61611, N'WMATA', 2804)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61612, N'WMATA', 2819)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61613, N'WMATA', 2820)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61614, N'WMATA', 2821)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61615, N'WMATA', 2839)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61616, N'WMATA', 2841)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61617, N'WMATA', 2853)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61618, N'WMATA', 2854)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61619, N'WMATA', 2867)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61620, N'WMATA', 3848)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61621, N'WMATA', 3875)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61622, N'WMATA', 3876)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61623, N'WMATA', 3944)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61624, N'WMATA', 9716)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61625, N'WMATA', 9718)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61626, N'WMATA', 9726)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61627, N'WMATA YR1', 9726)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61628, N'WMATA', 9727)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61629, N'WMATA YR1', 9727)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61630, N'WMATA', 9729)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61631, N'WMATA YR1', 9729)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61632, N'WMATA', 9730)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61633, N'WMATA YR1', 9730)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61634, N'WMATA', 9732)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61635, N'WMATA YR1', 9732)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61636, N'WMATA', 9737)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61637, N'WMATA YR1', 9737)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61638, N'WMATA', 9738)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61639, N'WMATA YR1', 9738)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61640, N'WMATA', 9745)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61641, N'WMATA YR1', 9745)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61642, N'WMATA', 9747)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61643, N'WMATA YR1', 9747)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61644, N'WMATA', 9769)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61645, N'WMATA YR1', 9769)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61646, N'WMATA', 9770)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61647, N'WMATA YR1', 9770)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61648, N'WMATA', 9771)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61649, N'WMATA YR1', 9771)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61650, N'WMATA', 9772)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61651, N'WMATA YR1', 9772)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61652, N'WMATA', 9773)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61653, N'WMATA YR1', 9773)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61654, N'WMATA', 9791)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61655, N'WMATA YR2', 9791)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61656, N'WMATA', 9792)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61657, N'WMATA YR1', 9792)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61658, N'WMATA', 9793)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61659, N'WMATA YR1', 9793)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61660, N'WMATA', 9794)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61661, N'WMATA YR1', 9794)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61662, N'WMATA', 9795)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61663, N'WMATA YR1', 9795)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61664, N'WMATA', 9821)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61665, N'WMATA YR1', 9821)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61666, N'WMATA', 9823)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61667, N'WMATA YR1', 9823)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61668, N'WMATA', 9824)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61669, N'WMATA YR1', 9824)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61670, N'WMATA', 9827)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61671, N'WMATA YR1', 9827)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61672, N'WMATA', 9829)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61673, N'WMATA YR1', 9829)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61674, N'WMATA', 9832)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61675, N'WMATA YR1', 9832)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61676, N'WMATA', 9833)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61677, N'WMATA YR1', 9833)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61678, N'WMATA', 9837)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61679, N'WMATA YR2', 9837)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61680, N'WMATA', 9838)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61681, N'WMATA YR2', 9838)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61682, N'WMATA', 9845)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61683, N'WMATA', 9847)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61684, N'WMATA YR1', 9847)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61685, N'WMATA', 9848)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61686, N'WMATA YR1', 9848)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61687, N'WMATA', 9849)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61688, N'WMATA YR1', 9849)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61689, N'WMATA', 9850)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61690, N'WMATA YR2', 9850)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61691, N'WMATA', 9851)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61692, N'WMATA YR2', 9851)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61693, N'WMATA', 9852)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61694, N'WMATA YR2', 9852)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61695, N'WMATA', 9853)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61696, N'WMATA YR2', 9853)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61697, N'WMATA', 9855)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61698, N'WMATA YR1', 9855)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61699, N'WMATA', 9856)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61700, N'WMATA YR1', 9856)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61701, N'WMATA', 9857)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61702, N'WMATA YR1', 9857)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61703, N'WMATA', 9859)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61704, N'WMATA YR2', 9859)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61705, N'WMATA', 9860)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61706, N'WMATA YR2', 9860)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61707, N'WMATA', 9862)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61708, N'WMATA YR2', 9862)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61709, N'WMATA', 9863)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61710, N'WMATA YR2', 9863)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61711, N'WMATA', 9864)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61712, N'WMATA YR2', 9864)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61713, N'WMATA', 9865)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61714, N'WMATA YR2', 9865)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61715, N'WMATA', 9866)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61716, N'WMATA YR2', 9866)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61717, N'WMATA', 9868)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61718, N'WMATA YR2', 9868)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61719, N'WMATA', 9869)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61720, N'WMATA YR2', 9869)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61721, N'WMATA', 9870)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61722, N'WMATA YR2', 9870)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61723, N'WMATA', 9871)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61724, N'WMATA YR2', 9871)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61725, N'WMATA', 9882)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61726, N'WMATA', 9888)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61727, N'WMATA YR3', 9888)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61728, N'WMATA', 9897)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61729, N'WMATA', 9913)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61730, N'WMATA YR1', 9913)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61731, N'WMATA', 9932)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61732, N'WMATA YR2', 9932)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61733, N'WMATA', 9949)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61734, N'WMATA YR2', 9949)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61735, N'WMATA', 9951)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61736, N'WMATA YR1', 9951)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61737, N'WMATA', 9952)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61738, N'WMATA YR1', 9952)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61739, N'WMATA', 9961)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61740, N'WMATA', 9985)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61741, N'WMATA YR2', 9985)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61742, N'WMATA', 9986)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61743, N'WMATA YR2', 9986)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61744, N'WMATA', 9997)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61745, N'WMATA', 10011)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61746, N'WMATA YR3', 10011)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61747, N'WMATA', 10032)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61748, N'WMATA', 10033)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61749, N'WMATA', 10036)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61750, N'WMATA YR2', 10036)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61751, N'WMATA', 10037)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61752, N'WMATA YR2', 10037)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61753, N'WMATA', 10038)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61754, N'WMATA YR2', 10038)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61755, N'WMATA', 10039)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61756, N'WMATA YR2', 10039)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61757, N'WMATA', 10042)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61758, N'WMATA YR2', 10042)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61759, N'WMATA', 10059)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61760, N'WMATA', 10078)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61761, N'WMATA YR3', 10078)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61762, N'WMATA', 10081)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61763, N'WMATA YR1', 10081)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61764, N'WMATA', 10237)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61765, N'WMATA', 10240)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61766, N'WMATA YR1', 10240)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61767, N'WMATA', 10307)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61768, N'WMATA YR1', 10307)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61769, N'WMATA', 10322)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61770, N'WMATA YR3', 10322)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61771, N'WMATA', 10323)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61772, N'WMATA YR3', 10323)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61773, N'WMATA', 10337)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61774, N'WMATA', 10339)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61775, N'WMATA YR2', 10339)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61776, N'WMATA', 10340)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61777, N'WMATA YR2', 10340)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61778, N'WMATA', 10351)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61779, N'WMATA YR2', 10351)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61780, N'WMATA', 10365)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61781, N'WMATA YR1', 10365)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61782, N'WMATA', 10408)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61783, N'WMATA', 10455)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61784, N'WMATA', 10466)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61785, N'WMATA YR1', 10466)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61786, N'WMATA', 10477)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61787, N'WMATA', 10513)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61788, N'WMATA YR2', 10513)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61789, N'WMATA', 10514)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61790, N'WMATA YR2', 10514)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61791, N'WMATA', 10564)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61792, N'WMATA YR2', 10564)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61793, N'WMATA', 10565)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61794, N'WMATA YR2', 10565)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61795, N'WMATA', 10566)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61796, N'WMATA YR2', 10566)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61797, N'WMATA', 10567)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61798, N'WMATA YR2', 10567)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61799, N'WMATA', 10568)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61800, N'WMATA YR2', 10568)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61801, N'WMATA', 10573)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61802, N'WMATA', 10574)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61803, N'WMATA', 10579)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61804, N'WMATA', 10597)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61805, N'WMATA', 10644)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61806, N'WMATA', 10695)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61807, N'WMATA', 10697)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61808, N'WMATA', 10703)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61809, N'WMATA', 10713)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61810, N'WMATA YR2', 10713)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61811, N'WMATA', 10744)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61812, N'WMATA', 10765)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61813, N'WMATA', 10798)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61814, N'WMATA', 10799)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61815, N'WMATA', 10813)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61816, N'WMATA', 10835)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61817, N'WMATA', 10837)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61818, N'WMATA', 10872)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61819, N'WMATA YR1', 10872)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61820, N'WMATA', 10963)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61821, N'WMATA YR2', 10963)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61822, N'WMATA', 11061)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61823, N'WMATA', 11216)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61824, N'WMATA YR2', 11216)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61825, N'WMATA', 11218)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61826, N'WMATA YR1', 11218)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61827, N'WMATA', 11236)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61828, N'WMATA YR1', 11236)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61829, N'WMATA', 11258)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61830, N'WMATA YR2', 11258)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61831, N'WMATA', 11278)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61832, N'WMATA YR1', 11278)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61833, N'WMATA', 11279)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61834, N'WMATA YR1', 11279)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61835, N'WMATA', 11288)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61836, N'WMATA YR1', 11288)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61837, N'WMATA', 11291)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61838, N'WMATA YR1', 11291)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61839, N'WMATA', 11303)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61840, N'WMATA YR2', 11303)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61841, N'WMATA', 11306)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61842, N'WMATA YR2', 11306)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61843, N'WMATA', 11366)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61844, N'WMATA YR2', 11366)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61845, N'WMATA', 11369)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61846, N'WMATA YR2', 11369)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61847, N'WMATA', 11410)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61848, N'WMATA YR1', 11410)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61849, N'WMATA', 11433)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61850, N'WMATA YR2', 11433)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61851, N'WMATA', 11434)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61852, N'WMATA', 11445)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61853, N'WMATA YR3', 11445)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61854, N'WMATA', 11488)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61855, N'WMATA YR2', 11488)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61856, N'WMATA', 11492)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61857, N'WMATA YR3', 11492)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61858, N'WMATA', 11616)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61859, N'WMATA YR3', 11616)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61860, N'WMATA', 11623)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61861, N'WMATA YR3', 11623)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61862, N'WMATA', 11625)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61863, N'WMATA YR3', 11625)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61864, N'WMATA', 11633)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61865, N'WMATA YR2', 11633)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61866, N'WMATA', 11634)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61867, N'WMATA YR2', 11634)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61868, N'WMATA', 11697)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61869, N'WMATA YR3', 11697)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61870, N'WMATA', 11700)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61871, N'WMATA YR2', 11700)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61872, N'WMATA', 11731)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61873, N'WMATA YR3', 11731)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61874, N'WMATA', 11732)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61875, N'WMATA YR3', 11732)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61876, N'WMATA', 11733)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61877, N'WMATA YR3', 11733)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61878, N'WMATA', 11792)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61879, N'WMATA YR3', 11792)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61880, N'WMATA', 11843)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61881, N'WMATA YR3', 11843)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61882, N'WMATA', 11921)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61883, N'WMATA', 11923)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61884, N'WMATA', 12080)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61885, N'WMATA YR2', 12080)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61886, N'WMATA', 12153)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61887, N'WMATA', 12169)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61888, N'WMATA YR1', 12169)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61889, N'WMATA', 12232)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61890, N'WMATA YR1', 12232)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61891, N'WMATA', 12237)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61892, N'WMATA YR1', 12237)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61893, N'WMATA', 12238)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61894, N'WMATA YR1', 12238)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61895, N'WMATA', 12239)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61896, N'WMATA YR1', 12239)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61897, N'WMATA', 12258)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61898, N'WMATA', 12259)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61899, N'WMATA', 12260)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61900, N'WMATA', 12275)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61901, N'WMATA', 12276)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61902, N'WMATA', 12281)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61903, N'WMATA', 12282)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61904, N'WMATA', 12340)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61905, N'WMATA', 12341)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61906, N'WMATA', 12342)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61907, N'WMATA', 12343)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61908, N'WMATA', 12349)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61909, N'WMATA', 12357)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61910, N'WMATA', 12358)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61911, N'WMATA', 12401)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61912, N'WMATA', 12412)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61913, N'WMATA', 12413)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61914, N'WMATA', 12451)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61915, N'WMATA YR2', 12451)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61916, N'WMATA', 12456)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61917, N'WMATA YR1', 12456)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61918, N'WMATA', 12486)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61919, N'WMATA', 12505)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61920, N'WMATA YR3', 12505)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61921, N'WMATA', 12522)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61922, N'WMATA YR3', 12522)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61923, N'WMATA', 12596)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61924, N'WMATA', 12668)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61925, N'WMATA YR3', 12668)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61926, N'WMATA', 12669)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61927, N'WMATA', 12748)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61928, N'WMATA YR3', 12748)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61929, N'WMATA', 12835)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61930, N'WMATA YR3', 12835)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61931, N'WMATA', 12890)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61932, N'WMATA', 12892)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61933, N'WMATA', 12896)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61934, N'WMATA', 12898)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61935, N'WMATA', 12900)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61936, N'WMATA', 12901)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61937, N'WMATA', 12902)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61938, N'WMATA', 12905)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61939, N'WMATA', 12908)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61940, N'WMATA', 12925)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61941, N'WMATA', 12957)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61942, N'WMATA', 12958)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61943, N'WMATA', 12959)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61944, N'WMATA', 12960)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61945, N'WMATA', 12961)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61946, N'WMATA', 13009)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61947, N'WMATA', 13019)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61948, N'WMATA', 13023)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61949, N'WMATA', 13039)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61950, N'WMATA YR1', 13039)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61951, N'WMATA', 13040)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61952, N'WMATA YR1', 13040)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61953, N'WMATA', 13044)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61954, N'WMATA', 13045)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61955, N'WMATA', 13054)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61956, N'WMATA', 13117)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61957, N'WMATA', 13119)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61958, N'WMATA', 13182)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61959, N'WMATA YR1', 13182)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61960, N'WMATA', 13185)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61961, N'WMATA YR1', 13185)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61962, N'WMATA', 13200)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61963, N'WMATA', 13233)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61964, N'WMATA YR2', 13233)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61965, N'WMATA', 13248)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61966, N'WMATA', 13280)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61967, N'WMATA', 13281)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61968, N'WMATA', 13282)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61969, N'WMATA', 13290)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61970, N'WMATA', 13331)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61971, N'WMATA', 13337)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61972, N'WMATA', 13340)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61973, N'WMATA', 15979)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61974, N'WMATA', 15980)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61975, N'WMATA', 15981)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61976, N'WMATA', 15985)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61977, N'WMATA', 15990)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61978, N'WMATA YR1', 15990)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61979, N'WMATA', 15992)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61980, N'WMATA YR1', 15992)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61981, N'WMATA', 15993)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61982, N'WMATA', 15998)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61983, N'WMATA', 15999)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61984, N'WMATA', 16000)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61985, N'WMATA', 16003)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61986, N'WMATA', 16004)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61987, N'WMATA', 16005)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61988, N'WMATA', 16006)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61989, N'WMATA YR2', 16006)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61990, N'WMATA', 16009)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61991, N'WMATA YR2', 16009)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61992, N'WMATA', 16010)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61993, N'WMATA YR2', 16010)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61994, N'WMATA', 16014)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61995, N'WMATA YR3', 16014)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61996, N'WMATA', 16015)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61997, N'WMATA YR3', 16015)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61998, N'WMATA', 16017)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (61999, N'WMATA', 16018)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62000, N'WMATA', 16019)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62001, N'WMATA', 16022)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62002, N'WMATA YR3', 16022)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62003, N'WMATA', 16023)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62004, N'WMATA YR3', 16023)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62005, N'WMATA', 16024)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62006, N'WMATA YR3', 16024)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62007, N'WMATA', 16025)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62008, N'WMATA YR3', 16025)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62009, N'WMATA', 16026)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62010, N'WMATA', 16027)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62011, N'WMATA', 16028)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62012, N'WMATA', 16029)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62013, N'WMATA YR2', 16029)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62014, N'WMATA', 16030)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62015, N'WMATA', 16031)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62016, N'WMATA', 16033)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62017, N'WMATA YR1', 16033)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62018, N'WMATA', 16037)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62019, N'WMATA YR3', 16037)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62020, N'WMATA', 16040)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62021, N'WMATA YR3', 16040)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62022, N'WMATA', 16041)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62023, N'WMATA YR3', 16041)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62024, N'WMATA', 16042)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62025, N'WMATA YR3', 16042)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62026, N'WMATA', 16043)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62027, N'WMATA YR3', 16043)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62028, N'WMATA', 16044)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62029, N'WMATA YR3', 16044)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62030, N'WMATA', 16045)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62031, N'WMATA YR3', 16045)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62032, N'WMATA', 16046)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62033, N'WMATA YR3', 16046)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62034, N'WMATA', 16055)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62035, N'WMATA', 16056)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62036, N'WMATA', 16058)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62037, N'WMATA', 16059)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62038, N'WMATA', 16063)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62039, N'WMATA YR1', 16063)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62040, N'WMATA', 16064)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62041, N'WMATA YR3', 16064)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62042, N'WMATA', 16065)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62043, N'WMATA', 16066)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62044, N'WMATA', 16067)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62045, N'WMATA', 16068)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62046, N'WMATA', 16069)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62047, N'WMATA', 16070)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62048, N'WMATA YR1', 16070)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62049, N'WMATA', 16071)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62050, N'WMATA', 16072)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62051, N'WMATA', 16079)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62052, N'WMATA', 16080)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62053, N'WMATA', 16082)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62054, N'WMATA YR3', 16082)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62055, N'WMATA', 16083)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62056, N'WMATA', 16084)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62057, N'WMATA', 16085)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62058, N'WMATA', 16086)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62059, N'WMATA', 16087)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62060, N'WMATA', 16088)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62061, N'WMATA', 16089)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62062, N'WMATA', 16090)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62063, N'WMATA', 16091)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62064, N'WMATA', 16092)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62065, N'WMATA', 16093)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62066, N'WMATA', 16094)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62067, N'WMATA', 16095)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62068, N'WMATA', 16096)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62069, N'WMATA', 16097)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62070, N'WMATA', 16098)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62071, N'WMATA', 16103)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62072, N'WMATA', 16104)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62073, N'WMATA', 16105)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62074, N'WMATA', 16106)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62075, N'WMATA', 16107)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62076, N'WMATA', 16109)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62077, N'WMATA', 16110)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62078, N'WMATA', 16111)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62079, N'WMATA', 16112)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62080, N'WMATA', 16113)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62081, N'WMATA', 16114)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62082, N'WMATA', 16115)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62083, N'WMATA', 16116)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62084, N'WMATA', 16117)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62085, N'WMATA', 16119)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62086, N'WMATA YR2', 16119)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62087, N'WMATA', 16120)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62088, N'WMATA YR2', 16120)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62089, N'WMATA', 16121)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62090, N'WMATA', 16122)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62091, N'WMATA', 16123)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62092, N'WMATA YR1', 16123)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62093, N'WMATA', 16124)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62094, N'WMATA', 16125)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62095, N'WMATA', 16126)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62096, N'WMATA', 16127)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62097, N'WMATA', 16128)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62098, N'WMATA', 16129)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62099, N'WMATA', 16130)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62100, N'WMATA', 16131)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62101, N'WMATA', 16133)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62102, N'WMATA', 16134)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62103, N'WMATA YR2', 16134)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62104, N'WMATA', 16139)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62105, N'WMATA', 16140)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62106, N'WMATA', 16141)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62107, N'WMATA', 16142)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62108, N'WMATA', 16143)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62109, N'WMATA', 16145)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62110, N'WMATA', 16146)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62111, N'WMATA', 16147)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62112, N'WMATA', 16148)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62113, N'WMATA', 16151)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62114, N'WMATA YR2', 16151)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62115, N'WMATA', 16155)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62116, N'WMATA', 16156)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62117, N'WMATA', 16157)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62118, N'WMATA YR1', 16157)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62119, N'WMATA', 16164)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62120, N'WMATA YR1', 16164)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62121, N'WMATA', 16165)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62122, N'WMATA YR1', 16165)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62123, N'WMATA', 16168)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62124, N'WMATA', 17057)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62125, N'WMATA', 17058)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62126, N'WMATA YR1', 17058)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62127, N'WMATA', 17059)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62128, N'WMATA YR1', 17059)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62129, N'WMATA', 17060)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62130, N'WMATA YR1', 17060)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62131, N'WMATA', 17061)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62132, N'WMATA YR1', 17061)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62133, N'WMATA', 17062)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62134, N'WMATA YR1', 17062)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62135, N'WMATA', 17081)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62136, N'WMATA YR1', 17081)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62137, N'WMATA', 17083)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62138, N'WMATA YR1', 17083)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62139, N'WMATA', 17084)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62140, N'WMATA YR2', 17084)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62141, N'WMATA', 17085)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62142, N'WMATA YR2', 17085)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62143, N'WMATA', 17086)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62144, N'WMATA YR2', 17086)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62145, N'WMATA', 17087)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62146, N'WMATA YR3', 17087)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62147, N'WMATA', 17091)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62148, N'WMATA YR3', 17091)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62149, N'WMATA', 17092)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62150, N'WMATA YR3', 17092)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62151, N'WMATA', 17093)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62152, N'WMATA', 17095)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62153, N'WMATA YR1', 17095)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62154, N'WMATA', 17097)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62155, N'WMATA YR2', 17097)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62156, N'WMATA', 17101)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62157, N'WMATA YR1', 17101)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62158, N'WMATA', 17103)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62159, N'WMATA YR3', 17103)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62160, N'WMATA', 17106)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62161, N'WMATA YR3', 17106)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62162, N'WMATA', 17107)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62163, N'WMATA YR3', 17107)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62164, N'WMATA', 17108)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62165, N'WMATA YR3', 17108)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62166, N'WMATA', 17112)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62167, N'WMATA YR1', 17112)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62168, N'WMATA', 17114)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62169, N'WMATA YR2', 17114)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62170, N'WMATA', 17115)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62171, N'WMATA YR2', 17115)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62172, N'WMATA', 17120)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62173, N'WMATA YR3', 17120)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62174, N'WMATA', 17121)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62175, N'WMATA YR3', 17121)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62176, N'WMATA', 17122)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62177, N'WMATA YR2', 17122)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62178, N'WMATA', 17123)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62179, N'WMATA', 17124)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62180, N'WMATA YR2', 17124)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62181, N'WMATA', 17129)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62182, N'WMATA YR1', 17129)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62183, N'WMATA', 17130)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62184, N'WMATA', 17133)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62185, N'WMATA YR2', 17133)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62186, N'WMATA', 17134)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62187, N'WMATA YR3', 17134)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62188, N'WMATA', 17136)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62189, N'WMATA YR3', 17136)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62190, N'WMATA', 17137)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62191, N'WMATA', 17138)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62192, N'WMATA', 17139)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62193, N'WMATA', 17140)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62194, N'WMATA', 17141)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62195, N'WMATA', 17142)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62196, N'WMATA', 17143)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62197, N'WMATA', 17144)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62198, N'WMATA', 17146)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62199, N'WMATA', 17150)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62200, N'WMATA', 17151)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62201, N'WMATA', 17152)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62202, N'WMATA', 17153)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62203, N'WMATA', 17154)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62204, N'WMATA', 17155)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62205, N'WMATA', 17156)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62206, N'WMATA', 17157)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62207, N'WMATA', 17158)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62208, N'WMATA', 17159)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62209, N'WMATA', 17160)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62210, N'WMATA', 17161)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62211, N'WMATA', 17162)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62212, N'WMATA', 17163)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62213, N'WMATA', 17164)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62214, N'WMATA', 17165)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62215, N'WMATA', 17167)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62216, N'WMATA', 17168)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62217, N'WMATA', 17175)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62218, N'WMATA', 17177)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62219, N'WMATA', 17179)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62220, N'WMATA', 17182)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62221, N'WMATA', 17187)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62222, N'WMATA', 17191)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62223, N'WMATA', 17197)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62224, N'WMATA', 17198)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62225, N'WMATA', 17201)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62226, N'WMATA', 17202)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62227, N'WMATA', 17203)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62228, N'WMATA', 17206)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62229, N'WMATA', 17207)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62230, N'WMATA', 17210)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62231, N'WMATA', 17211)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62232, N'WMATA', 17212)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62233, N'WMATA', 17213)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62234, N'WMATA', 17214)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62235, N'WMATA', 17215)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62236, N'WMATA', 17216)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62237, N'WMATA', 17217)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62238, N'WMATA', 17218)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62239, N'WMATA', 17219)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62240, N'WMATA', 17220)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62241, N'WMATA', 17221)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62242, N'WMATA', 17222)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62243, N'WMATA', 17223)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62244, N'WMATA', 17224)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62245, N'WMATA', 17225)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62246, N'WMATA', 17226)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62247, N'WMATA', 17227)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62248, N'WMATA', 17228)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62249, N'WMATA', 17229)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62250, N'WMATA', 17230)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62251, N'WMATA', 17231)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62252, N'WMATA', 17232)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62253, N'WMATA', 17233)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62254, N'WMATA', 17234)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62255, N'WMATA', 17235)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62256, N'WMATA', 17236)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62257, N'WMATA', 17237)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62258, N'WMATA', 17238)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62259, N'WMATA', 17239)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62260, N'WMATA', 17240)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62261, N'WMATA', 17241)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62262, N'WMATA', 17242)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62263, N'WMATA', 17243)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62264, N'WMATA', 17244)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62265, N'WMATA', 17245)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62266, N'WMATA', 17246)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62267, N'WMATA', 17247)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62268, N'WMATA', 17248)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62269, N'WMATA', 17249)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62270, N'WMATA', 17250)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62271, N'WMATA', 17251)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62272, N'WMATA', 17252)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62273, N'WMATA', 17253)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62274, N'WMATA', 17254)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62275, N'WMATA', 17255)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62276, N'WMATA', 17256)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62277, N'WMATA', 17257)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62278, N'WMATA', 17258)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62279, N'WMATA', 17259)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62280, N'WMATA', 17260)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62281, N'WMATA', 17261)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62282, N'WMATA', 17264)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62283, N'WMATA', 17269)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62284, N'WMATA', 17270)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (62285, N'WMATA', 17303)
SET IDENTITY_INSERT [dbo].[NEW_QUESTION_SETS] OFF
PRINT(N'Operation applied to 1579 rows out of 1579')

PRINT(N'Add rows to [dbo].[PARAMETERS]')
SET IDENTITY_INSERT [dbo].[PARAMETERS] ON
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5250, N'[WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5251, N'[OT Systems Only: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5252, N'[NIST 800-82 Rev 3: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5253, N'[a: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5254, N'[b: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5255, N'[c: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5256, N'[a.i: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5257, N'[a.ii: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5258, N'[b.i: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5259, N'[b.ii: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5260, N'[b.iii: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5261, N'[b.iv: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5262, N'[b.i.1: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5263, N'[b.i.2: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5264, N'[b.i.3: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5265, N'[b.i.4: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5266, N'[1: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5267, N'[2: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5268, N'[NIST 800-82 Rev 3_OT Discussion: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5269, N'[NIST 800-82 Rev 3_Rationale: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5270, N'[c.i: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5271, N'[c.ii: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5272, N'[c.iii: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5273, N'[c.iv: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5274, N'[c.v: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5275, N'[d: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5276, N'[e: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5277, N'[f: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5278, N'[f.i: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5279, N'[f.ii: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5280, N'[f.iii: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5281, N'[f.iv: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5282, N'[f.v: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5283, N'[g: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5284, N'[a.iii: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5285, N'[1.a: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5286, N'[1.b: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5287, N'[1.c: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5288, N'[d.i: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5289, N'[d.ii: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5290, N'[d.iii: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5291, N'[h: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5292, N'[h.i: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5293, N'[h.ii: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5294, N'[h.iii: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5295, N'[i: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5296, N'[i.i: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5297, N'[i.ii: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5298, N'[i.iii: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5299, N'[j: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5300, N'[j.i: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5301, N'[ j.ii: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5302, N'[k: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5303, N'[l: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5304, N'[OT Systems Only 1: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5305, N'[OT Systems Only 2: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5306, N'[m: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5307, N'[3: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5308, N'[4: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5309, N'[2.a: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5310, N'[2.b: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5311, N'[2.c: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5312, N'[3.a: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5313, N'[3.b: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5314, N'[NIST 800-82 Rev 3_Access to OT: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5315, N'[a.iv: WMATA System Implementation Statement]')
INSERT INTO [dbo].[PARAMETERS] ([Parameter_ID], [Parameter_Name]) VALUES (5316, N'[a.v: WMATA System Implementation Statement]')
SET IDENTITY_INSERT [dbo].[PARAMETERS] OFF


