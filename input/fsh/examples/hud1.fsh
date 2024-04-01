

Instance: HUD1-ServiceRequest
InstanceOf: ServiceRequest
Usage: #example
Description: "ServiceRequest"
* status = #active
* intent = #proposal
* subject.display = "Abby-McIntyre"

Instance: HUD1-Screening-Set
InstanceOf: Group
Usage: #example
Description: "HUD1-Screening-Set"
* type = #person
* membership = #enumerated
// * membership.entity.reference.display = "Abby-McIntyre"
* member[0].entity = Reference(Patient/Myra-Jones-Patient)
* member[=].period.start = "2014-10-08"


Instance: HUD1-LifeSet
InstanceOf: Group
Usage: #example
Description: "HUD1-LifeSet"
* type = #person
* membership = #enumerated
* member[0].entity.extension[0].valueCoding = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable "Not Applicable"
// * member[0].entity.extension[=].url = "data-absent-reason"
* member[0].entity.extension[=].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"

Instance: Myra-Jones-Patient
InstanceOf: Patient
Usage: #example
Description: "Myra-Jones-Patient"
* identifier.system = "urn:oid:1.3.6.1.4.1.22812.3.2009316.3"
* identifier.value = "160920144139807"
* address.city = "Beaverton"
* address.use = #home
* address.line = "1357 Amber Drive"
* address.postalCode = "97006"
* address.state = "OR"
* managingOrganization.display = "Organization/3"
* gender = #female
* name.given = "Myra"
* name.use = #official
* name.family = "Jones"
* communication.language.coding.display = "en"
* communication.preferred = true
* birthDate = "1947-05-01"

 