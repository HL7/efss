Alias: LNC = http://loinc.org
Alias: GROUPTYPE = http://hl7.org/fhir/group-type	
Alias: MEMBERSHIP = http://hl7.org/fhir/ValueSet/group-membership-basis


Resource: EFSSIndividualRole
Id: EFSS-IndividualRole
Parent: DomainResource
Title: "IndividualRole"
Description: "IndividualRole."
* ^baseDefinition = "http://hl7.org/fhir/StructureDefinition/DomainResource"
* ^kind = #resource
* individual 1..1 SU Reference(Person) "individual" "Individual"

 
Resource: EFSSLifeSet
Id: EFSS-Life-Set
Parent: DomainResource
Title: "Life Set"
Description: "Life Set is an amalgamation of the persons/groups who constitute the interactions and relationships from the perspectice of an individual.  The associations from the individual to the person/group are explicit in nature as to avoid confusion and structured to properly elaborate all aspects of the particular association"
* ^baseDefinition = "http://hl7.org/fhir/StructureDefinition/DomainResource"
* ^kind = #resource
* subject 1..1 SU Reference(EFSSIndividualRole or Patient) "Individual whose associations these are" "Individual"
* identifier 0..* SU Identifier "identifier" "Identifier"
* association 0..* SU BackboneElement  "Association" "Association"
* association.entity 1..1 SU Reference(EFSSIndividualRole or Organization or LegalJurisdiction) "individual" "Individual"
* association.type 1..1 SU CodeableConcept "Type of relationship, for instance biological daugher or co-habitant" "Relationship"
* association.type from LifeSetAssociationVS (example)
* association.effectiveTime 0..1 SU Period "When the association is/was active" "Effective Time"
* association.effectiveTiming 0..1 SU Timing "When the association is in effect during the effect time; For instance co-habition 6 weeks out of the year due to divorece settlement" "Effective Time"
* association.status 0..* SU CodeableConcept "status" "Status"
* association.status from LifeSetAssociationStatusCodeVS (example)
* association.verification 0..* SU CodeableConcept "Verification status of association" "Verification"
* association.verification from LifeSetAssociationVerificationCodeVS (example)
* association.qualification 0..* BackboneElement "Qualification" "Qualification"
* association.qualification.code 1..1 SU CodeableConcept "Qualification" "Qualification"
* association.qualification.value 1..1 SU  Quantity "Qualification" "Qualification"


// 	Quantity	 
// .... valueCodeableConcept			CodeableConcept	
// .... valueString			string	

// .... valueBoolean			boolean	
// .... valueInteger			integer	
// .... valueRange			Range	
// .... valueRatio			Ratio	
// .... valueSampledData			SampledData	
// .... valueTime			time	
// .... valueDateTime			dateTime	
// .... valuePeriod			Period	
// .... valueAttachment			Attachment

// * association 0..* SU BackboneElement  "Association" "Association"
// * serviceAnimal 0..* BackboneElement "Service animals" "Animals trained to assist the person by performing certain tasks."
// * serviceAnimal.name 0..1 string "Name of service animal" "The name by which the service animal responds."
// * serviceAnimal.breed 1..* CodeableConcept "Breed of service animal" "The dominant breed or breeds of the service animal."
// * serviceAnimal.startDate 0..1 date "Date the service animal began work" "The date on which the service animal began working for the person."


// Resource: EFSSAssociation
// Id: EFSS-Association
// Parent: DomainResource
// Title: "Association"
// Description: "Association"
// * ^baseDefinition = "http://hl7.org/fhir/StructureDefinition/DomainResource"
// * ^kind = #resource
// * association 1..1 SU Reference(EFSSIndividualRole or Organization or LegalJurisdiction) "individual" "Individual"
// * type 1..1 SU CodeableConcept "Type of relationship, for instance biological daugher or co-habitant" "Relationship"
// * type from LifeSetAssociationVS (example)
// * effectiveTime 0..1 SU Period "When the association is/was active" "Effective Time"
// * effectiveTiming 0..1 SU Timing "When the association is in effect during the effect time; For instance co-habition 6 weeks out of the year due to divorece settlement" "Effective Time"
// * status 0..* SU CodeableConcept "status" "Status"
// * type from LifeSetAssociationStatusCodeVS (example)
// * verification 0..* SU CodeableConcept "Verification status of association" "Verification"
// * type from LifeSetAssociationVerificationCodeVS (example)
// * qualification 0..* CodeableConcept "Qualification" "Qualification"


// Extension: EFSSSubject
// Description: "FHIRsubject"
// Id: EFSS-Subject
// * value[x] only Reference(EFSSIndividualRole or Patient)

Extension: EFSSQualificationValue
Description: "FHIRQualificationValue"
Id: EFSS-Qualificationvalue
* value[x] 1..1

// Profile: EFSSQualification
// Description: "FHIRQualification"
// Id: EFSS-Qualification
// Parent: CodeableConcept
// * coding 1..*
// * extension contains
//     EFSSQualificationValue named value 1..1 MS
 
Extension: EFSSIndividualReference
Id: EFSS-IndividualReference
Description: "FHIR Individual Reference"
* ^url = "http://hl7.us/fhir/ig/efss/StructureDefinition/FHIRIndividualReference"
* value[x] only  Reference(EFSSIndividualRole or Patient) 

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
