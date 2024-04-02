Two Use Cases are provided that have been used to determine what functionality the FHIR System needs to support to address Social Services. The Whole Person Care View scope of these Use Cases has been simplified to only factors specific to Social Services and do not include other clinical or behavioral considerations.

The following is a generic sequencing diagram that is applicable across the use cases described below.

### Use Case Sequence 
The sequence diagram assumes:
* Step 6 of the SDOH workflow guide is completed. **(add link)**
* Data from SDOHCC ServiceRequest is used. 
* LifeSet is also used to create ScreeningSet.
* Consideration was given to the SDOHCC Group Profile but cannot be justified because:
   * Entities for people must refer to a Patient or Practitioner Resource. 
   * The SDOH Clinical Care IG states, "Profile for identifying groups of patients who have a Social Determinants of Health (SDOH) condition and are members of a specific payer organization." However, belonging to a payer organization is not a requirement for Social Services. Doing so would require recording false information.

{%include housinginsecuritysequence.svg%}

The result is the ProgramSystem sending data to the FHIR System to update the appropriate resources and profile.

### Data Elements Needed For Exchanges
In the scope, a key task is to send information from the FHIR System to the Program System and vice versa. FHIR Data sent to the Program System identifies the need and provides data used for determining eligibility, enrollment, and provisioning of the social service. Program Data sent to the FHIR System identifies the social service addressing the social need and additional data for the FHIR System to track and monitor the provisioned service.

#### Request for Social Service
The column "FHIR Property Example" data elements come from the SDOH Clinical Care Implementation Guide.

|Data Element Label|Definition|FHIR Property Example|HUD Data Element Example |
|---|---|---|---|
|Name of Program|The name of the particular assistance program (Service) to fulfill the social condition|ServiceRequest.code.displayName|2.02.2 ProjectName, 2.02.1 ProjectID, 5.05.1 ProjectID is a reused type |
|Type of Program|The social services domain for the assistance program|ServiceRequest.Category|Not applicable |
|Status of Program|The present state of the program from inception to completion.|ServiceRequest.Status|2.06, Field 1 , list |
|Recipient of Program|The beneficiaries of the program, whether an individual or household. The membership of a household may change due to different factors such as eligibility rules and case manager decisions.|ServiceRequest.Subject(IndividualRole, ScreeningSet)|Table 5.05, Field 1 |
|Occurrencee|Time period over which the service is needed.|ServiceRequest.OccurancePeriod|Table 3.10 (3.20), Field 1 and Table 3.11, Field 1 |
|Priority|The level of importance assigned for the requires.|ServiceRequest.priority| |
|Requestor|Who is requesting the service|ServiceRequest.requestor(Reference(Organization)| |
|Performer|Who the request is being made to|ServiceRequest.performer(Reference(Organization)|Not necessary |
|Reason|Description of the reason for the request|ServiceRequest.reasonCode| |
|Notes|Additional text that provides information about the case|ServiceRequest.note| |

#### Membership in Household 

|Data Element Label|Definition|FHIR Property Example|HUD Data Element Example|
|---|---|---|---|
|Identifier|Identifier for the specific instance of the Household|ScreeningSet.Identifer|Table 5.09, Field 1|
|Type of Group|In FHIR, the specific type of group for this program|ScreeningSet.type|Not necessary|

#### Members in Household

|Data Element Label|Definition|FHIR Property Example|HUD Data Element Example |
|---|---|---|---|
|Identifier|The identifier used for each member of the group|ScreeningSet.member.identfier|Table 5.08, Field 1|
|Effectivetime|The timeperiod in which the member is valid for this grouping.|ScreeningSet.member.effectiveTime|
|Status|The present status of the member for this grouping|ScreeningSet.member.status|
|Role|Role of Individual in the household|ScreeningSet.member.role|Table 3.15, Field 1, value = 1|
|Verification|Information that confirms the membership of the individual within this group.|ScreeningSet.member.verification|

#### Associations and Relationships between potential individuals in the group

|Data Element Label|Definition|FHIR Property Example|HUD Data Element Example |
|---|---|---|---|
|Subject Identifier|Identifier of an individual who is the subject of the relationship|LifeSet.identifier|Table 5.08, Field 1|
|Target Identifier|Identifier of the individual who is  the target of the relationship|LifeSet.Target (Reference)|Table 5.08, Field 1|
|Type|Type of Association between the two parties|Lifeset.association.type|**???**|
|EffectiveTime|Time in which the association is applicable|Lifeset.association.effectiveTime|
|EffectiveTiming|Effective Timing involving a repeating patterns of effective times|
|Status|????|
|Verification|Evidence that the association is true|
|Qualification|Rule or condition to apply for inclusion in association.type|

#### Individual (IndividualRole)

|Data Element Label|Definition|FHIR Property Example|HUD Data Element Example |
|---|---|---|---|
|Identifier|Identifier for Individual|IndividualRole.Idnentifier|Table 3.02, Field 1|
|Name|Name of Individual|IndividualRole.PersonName|Table 3.01, field 1,2,3,4|
|Address|Current Address of Individual|IndividualRole.Address|Table 2.03, Fields 4,5,6,7|
|Mobile Phone|Mobile Phone of Individual|Individualrole.telecom where system = mobile||
|Date of Birth|Date of Birth|IndividualRole.DateofBirth|Table 3.03, field 1|
|Gender|Identified Gender of Individual|IndividualRole. AdministrativeGender|Table 3.06 Field 1|
|Marital Status|Present Marital Status of Individual|IndividualRole.MaritialStatus||
|Race|Race of Individual|IndividualRole.race|Table 3.04, field 1|
|Ethnicity|Ethnicity of individual|IndividualRole.Ethnicity|Table 3.04, field 1,2|
|Language|Language spoken by Individual|IndividualRole.communication.code||

#### Other Observations

|Data Element Label|Definition|FHIR Property Example|HUD Data Element Example |
|---|---|---|---|
|Veteran Status|Status of the individual as a Veteran|Military Observation and may CQL for boolean|Table 3.07, field 1. list|
|Disability Condition|Status of the individuals disabling condition status|Condition valueset and may require CQL|Table 3.08, field 1|
|Income|Income|FHIR Observation|Table 4.02, multiple fields|
|Non-cash benefits|Recipient of other assistance programs (TANF, WIC, etc) status|Data in AssistanceProgram and may CQL for boolean|Table 4.03, multiple fields|
|Health Insurance|Beneficiary of a specific health insurance, e.g. medicare, Medicaid, VA, etc., status|Coverage Data and and may CQL for boolean|Table 4.04, multiple fields
|Physical Disability|Status of the individuals physically disability condition status|Condition valueset and may require CQL|

**Note:** Exchange of Assessment information outside of scope

### Housing Insecurity (HUD)

The Housing Insecurity Use Case is driven by the need to provision new housing for a child because her present housing needs to be addressed because of her present housing needs to change. Incorporated in the description is the possible requirement of the need to change the guardian for the children involved, although it has not been identified in the two use cases.

Abby McIntyre is a 12-year-old female and Andy Smith, her 6-year-old half-brother, are living with her grandmother, their legal guardian. Unfortunately, her grandmother has recently been given a medical diagnosis that makes it important for alternative guardianship to be prepared for should the grandmother no longer be able to serve in this role. During a recent interview with Nancy Smith, a social worker with the child welfare agency who is currently working with Abby McIntyre to establish an alternative guardianship, it was discovered that her uncle, Ben Jameson, with whom she is close, has housing insecurity issues that would preclude him from being named her next guardian. Ben has previously been registered in the local HMIS system. Nancy has determined it should be a goal in Abby’s care plan to reduce Ben’s housing insecurity so that he can take on her care should her grandmother no longer be able to house and care for her.  

**Actors**

* **Abby McIntyre:** 12-year-old female receiving care management services through her school social worker using a FHIR-based system.
* **Andy Smith:** 6-year-old male half-brother of Abby who is also residing with Abby's grandmother.
* **Sarah Kelly:** Abby's 73-year-old grandmother who is presently Abby's guardian.
* **BenJameson:** Abby’s 37-year-old uncle who is seeking to be Abby’s alternative guardian and has services using the local HMIS.
* **Tim Harper:** Tim is Ben's partner. They have no legal relationship but have become a committed couple during their time together in a local homeless encampment.  Tim is employed, but his work teaching art is very low paid, and he has not been able to afford rent since his neighborhood was gentrified.
* **Nancy Smith:** Abby’s social worker who is using a FHIR-based system as the care management system where Abby is one of her clients.
* **Robert Aston:** HUD case manager using the local HMIS to help Ben and Tim to secure housing to make Ben a fit guardian for his niece.
* **FHIR-based System:** This system is an electronic care coordination system that Nancy uses to help assist and track her client’s progress.

**Pre-Conditions / Scoping Statements**

Data sharing agreements and individual consent to share processes have been created between the agencies operating the HMIS and FHIR Care Coordination System to exchange data and all data exchanged is compliant with these agreements and/or consents.  (This is out of scope for the project.)

#### Use Case Statement 1
* **Requirement:** As Abby’s care coordinator, I want to capture sufficient information about Abbey and the potential members of her household so that applications for housing services can be submitted to multiple housing programs.

* **Acceptance Criteria:** As the FHIR Care Coordination system, I want to send the data to the HMIS system in their native format for import into their system.

* **Additional Information:** In the Artifacts Section, additional documents provide more detailed information; the Payload Description for FHIR System to Program System, Payload Description for Program System to FHIR System, and Additional HUD Terms.
