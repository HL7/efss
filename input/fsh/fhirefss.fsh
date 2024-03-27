Alias: LNC = http://loinc.org
Alias: GROUPTYPE = http://hl7.org/fhir/group-type	
Alias: MEMBERSHIP = http://hl7.org/fhir/ValueSet/group-membership-basis


Resource: IndividualRole
Id: IndividualRole
Parent: DomainResource
Title: "IndividualRole"
Description: "IndividualRole."
* ^baseDefinition = "http://hl7.org/fhir/StructureDefinition/DomainResource"
* ^kind = #resource
* individual 1..1 SU Reference(Person) "individual" "Individual"


Resource: EFSSLifeSet
Id: EFSS-LifeSet
Parent: DomainResource
Title: "Life Set"
Description: "Life Set is an amalgamation of the persons/groups who constitute the interactions and relationships from the perspectice of an individual.  The associations from the individual to the person/group are explicit in nature as to avoid confusion and structured to properly elaborate all aspects of the particular association"
* ^baseDefinition = "http://hl7.org/fhir/StructureDefinition/DomainResource"
* ^kind = #resource
* subject 1..1 SU IndividualRole "Individual whose associations these are" "Individual"
* identifier 0..* SU Identifier "identifier" "Identifier"
* association 0..* SU EFSSAssociation  "Association" "Association"


Resource: EFSSAssociation
Id: EFSS-association
Parent: DomainResource
Title: "Association"
Description: "Association"
* ^baseDefinition = "http://hl7.org/fhir/StructureDefinition/DomainResource"
* ^kind = #resource
* association 1..1 SU Reference(IndividualRole or Organization or LegalJurisdiction) "individual" "Individual"
* type 1..1 SU CodeableConcept "Type of relationship, for instance biological daugher or co-habitant" "Relationship"
* type from LifeSetAssociationVS (example)
* effectiveTime 0..1 SU Period "When the association is/was active" "Effective Time"
* effectiveTiming 0..1 SU Timing "When the association is in effect during the effect time; For instance co-habition 6 weeks out of the year due to divorece settlement" "Effective Time"
* status 0..* SU CodeableConcept "status" "Status"
* type from LifeSetAssociationStatusCodeVS (example)
* verification 0..* SU CodeableConcept "Verification status of association" "Verification"
* type from LifeSetAssociationVerificationCodeVS (example)
* qualification 0..* CodeableConcept "Qualification" "Qualification"


Extension: EFSSSubject
Description: "FHIRsubject"
Id: EFSS-subject
* value[x] only Reference(IndividualRole or Patient)

Extension: EFSSQualificationValue
Description: "FHIRQualificationValue"
Id: EFSS-qualificationvalue
* value[x] 1..1

Profile: EFSSQualification
Description: "FHIRQualification"
Id: EFSS-qualification
Parent: CodeableConcept
* coding 1..*
* extension contains
    EFSSQualificationValue named value 1..1 MS
 

// Extension: EFSSAssociation
// Description: "FHIRAssociation"
// Id: EFSS-assssociation
// * extension contains
//     association 1..1 MS and 
//     type 1..1 MS and 
//     effectiveTime 0..1 and
//     effectiveTiming 0..* and
//     status 0..* and
//     verification 0..* and
//     qualification 0..*
// * extension[association] ^short = "associtions"
// * extension[association].value[x] only Reference(Patient or IndividualRole or Organization or LegalJurisdiction)
// * extension[type].value[x] only CodeableConcept 
// * extension[type] ^short = "Type of relationship, for instance biological daugher or co-habitant"  
// * extension[effectiveTime].value[x]  only Period 
// * extension[effectiveTime] ^short = "When the association is/was active" 
// * extension[effectiveTiming].value[x] only Timing 
// * extension[effectiveTiming] ^short = "When the association is in effect during the effect time; For instance co-habition 6 weeks out of the year due to divorece settlement" 
// * extension[status].value[x] only CodeableConcept 
// * extension[status] ^short = "status"  
// * extension[verification].value[x] only CodeableConcept 
// * extension[verification] ^short = "Verification status of association"  
// * extension[qualification].value[x] only EFSSQualification 
// * extension[qualification] ^short = "Qualification"  


Extension: EFSSIndividualReference
Id: EFSS-IndividualReference
Description: "FHIR Individual Reference"
* ^url = "http://hl7.us/fhir/ig/efss/StructureDefinition/FHIRIndividualReference"
* value[x] only  Reference(IndividualRole or Patient) 

Extension: EFSSMembershipType
Description: "Type of membership, HUD household for instance"
* ^url = "http://hl7.us/fhir/ig/efss/StructureDefinition/FHIRMembershipType"
* value[x]  only CodeableConcept 


Extension: EFSSMembershipStatus
Description: "Status of membershipe"
* ^url = "http://hl7.us/fhir/ig/efss/StructureDefinition/FHIRMembershipStatus"
* value[x]  only CodeableConcept 

Extension: EFSSMembershipRole
Description: "Membership role such as head of household"
* ^url = "http://hl7.us/fhir/ig/efss/StructureDefinition/FHIRMembershipRole"
* value[x]  only CodeableConcept 

Extension: EFSSMembershipVerification
Description: "FHIR Membership Verification"
* ^url = "http://hl7.us/fhir/ig/efss/StructureDefinition/FHIRMembershipVerification"
* value[x]  only CodeableConcept 

Extension: EFSSMembershipEffectivePeriod
Description: "FHIR Membership Effective Period"
* ^url = "http://hl7.us/fhir/ig/efss/StructureDefinition/FHIRMembershipEffectivePeriod"
* value[x]  only Period 



Profile: EFSSScreeningSet
Id: EFSS-ScreeningSet
Parent: Group
Title: "Screening Set"
Description: "Screening Set is a composition of individuals in need of service(s). The focus of the Screening Set is provide an effecient construct for identifying and illustraing the individuals in the composition.  The Screen Set itself is meant to be transaction and temporal in nature.  The Screen Set would be active while the steps taken to acquire the services have been completed. Screenig Set should be viewed as the trigger for acquisition process for the required services but not utilized for the acquisition workflow operations "
* characteristic 0..0
* member.extension contains
  EFSSIndividualReference named individual 0..1 MS and
  EFSSMembershipType named membershipType 0..*  and
  EFSSMembershipStatus named membershipStatus 0..* and
  EFSSMembershipRole named membershipRole 0..* and
  EFSSMembershipVerification named membershipVerification 0..* and
  EFSSMembershipEffectivePeriod named membershipEffectivePeriod 0..1

Invariant:   FHIRScreeningSetMembershiop-1
Description: "entity or individual extension needs to be populated"
Severity:    #error
// Expression:  "family.exists() or given.exists()"
// XPath:       "f:given or f:family"



Resource: LegalJurisdiction
Id: EFSS-LegalJurisdiction
Parent: DomainResource
Title: "LegalJurisdiction"
Description: "A legal jurisdiction refers to a source of law or a body that has the power to make and enforce laws within a particular jurisdiction."
* ^baseDefinition = "http://hl7.org/fhir/StructureDefinition/DomainResource"
* ^kind = #resource
* identifier 0..* SU Identifier "identifier" "Identifier"
* active 1..1 SU boolean "active" "active"
* name 0..* SU string "name" "name"
* alias 0..* SU string "name" "name"
* telecom 0..* SU ContactPoint "telecom" "Telecom"
* partOf 0..* SU Reference(LegalJurisdiction) "legalJurisdiction" "LegalJurisdiction"
