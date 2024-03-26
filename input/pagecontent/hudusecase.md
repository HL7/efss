Two Use Cases are provided that have been used to determine what functionality the FHIR System needs to support to address Social Services. The Whole Person Care View scope of these Use Cases has been simplified to only factors specific to Social Services and do not include other clinical or behavioral considerations.

The following is a generic sequencing diagram that is applicable across the use cases described below.

### Use Case Sequence 
{%include housinginsecuritysequence.svg%}

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
