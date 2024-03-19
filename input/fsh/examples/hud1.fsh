

Instance: HUD1-ServiceRequest
InstanceOf: ServiceRequest
Usage: #example
* status = #active
* intent = #proposal
* subject.display = "Abby-McIntyre"

Instance: HUD1-Screening-Set
InstanceOf: Group
Usage: #example
* type = #person
* membership = #enumerated
// * membership.entity.reference.display = "Abby-McIntyre"
* member[0].entity = Reference(Patient/pat1)
* member[=].period.start = "2014-10-08"


Instance: HUD1-LifeSet
InstanceOf: Group
Usage: #example
* type = #person
* membership = #enumerated
* member[0].entity.extension[0].valueCoding = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable "Not Applicable"
* member[0].entity.extension[=].url = "data-absent-reason"
// * member[0].entity.extension[=].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"


// * member[0].entity.extension.valueString = "some string herer"
// * member[0].entity.extension.url = "some string herer"
//  = Reference(Patient/pat1)
// * member[=].period.start = "2014-10-08"
// HUD1-Observation
// HUD1-Condition





// Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
// Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category

 

// Instance: Myra-Jones-Patient
// InstanceOf: Patient
// Usage: #example
// * identifier.system = "urn:oid:1.3.6.1.4.1.22812.3.2009316.3"
// * identifier.value = "160920144139807"
// * extension[0].extension.valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
// * extension[=].extension.url = "ombCategory"
// * extension[=].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
// * extension[+].extension.valueCoding = urn:oid:2.16.840.1.113883.6.238#2135-2 "Hispanic or Latino"
// * extension[=].extension.url = "ombCategory"
// * extension[=].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
// * address.city = "Beaverton"
// * address.use = #home
// * address.line = "1357 Amber Drive"
// * address.postalCode = "97006"
// * address.state = "OR"
// * managingOrganization.display = "Organization/3"
// * gender = #female
// * name.given = "Myra"
// * name.use = #official
// * name.family = "Jones"
// * communication.language.coding.display = "en"
// * communication.preferred = true
// * birthDate = "1947-05-01"

// Instance: Hives-Allergy-Intolerance
// InstanceOf: AllergyIntolerance
// Usage: #example
// * identifier[0].system = "urn:oid:1.3.6.1.4.1.22812.3.2009316.3.4.10.2"
// * identifier[=].value = "545077400001"
// * identifier[+].system = "urn:oid:1.3.6.1.4.1.22812.3.2009316.3.4.10.2"
// * identifier[=].value = "545077400003"
// * code.coding[0] = urn:oid:2.16.840.1.113883.6.88#1191
// * code.coding[+] = urn:oid:2.16.840.1.113883.6.96#293586001
// * reaction.severity = #severe
// // * reaction.manifestation.coding.system = "urn:oid:2.16.840.1.113883.6.96"
// // * reaction.manifestation.coding.code = "247472004"
// * reaction.manifestation.reference.display = "Hives"
// * patient = Reference(160920144139807)
// * clinicalStatus = $allergyintolerance-clinical#active2 "Active2"
// * clinicalStatus.text = "Active"
// * type.text = "intolerance"
// * category = #medication
// * onsetDateTime = "2008-05-01"

// Instance: Albuterol-Medication-Administration
// InstanceOf: MedicationAdministration
// Usage: #example
// * identifier.value = "cdbd33f0-6cde-11db-9fe1-0800200c9a66"
// * dosage.dose.value = 1
// // * performer.actor.display = "2.16.840.1.113883.4.6::2222222222"
// * occurencePeriod.start = "2012-08-06"
// * subject = Reference(160920144139807)
// * medication.concept.coding[0].system = "urn:oid:2.16.840.1.113883.6.88"
// * medication.concept.coding[0].code = #582498
// * medication.concept.coding[0].display = "Albuterol 0.09 MG/ACTUAT inhalant powder"
// // * medicationCodeableConcept.text = "Albuterol 0.09 MG/ACTUAT inhalant powder"
// * status = #in-progress

// Instance: Albuterol-Medication
// InstanceOf: Medication
// Usage: #example
// * identifier.value = "2a620155-9d11-439e-92b3-5d9815ff4ee8"
// * code = urn:oid:2.16.840.1.113883.6.88#582498 "Albuterol 0.09 MG/ACTUAT inhalant powder"
// * code.text = "Albuterol 0.09 MG/ACTUAT inhalant powder"

// Instance: XRAY-Procedure
// InstanceOf: Procedure
// Usage: #example
// * identifier[0].system = "urn:oid:1.3.6.1.4.1.22812.3.2009316.3.4.7"
// * identifier[=].value = "545069400001"
// * identifier[+].system = "urn:oid:1.3.6.1.4.1.22812.3.2009316.3.4.7"
// * identifier[=].value = "545069400003"
// * code.coding[0] = urn:oid:2.16.840.1.113883.6.96#416940007 "H/O chest x-ray"
// * code.coding[+] = urn:oid:2.16.840.1.113883.6.103#V15.89
// * code.coding[+] = urn:oid:2.16.840.1.113883.6.90#Z92.89
// * code.coding[+] = urn:oid:2.16.840.1.113883.3.247.1.1#2782946
// * subject = Reference(160920144139807)
// * status = #completed

// Instance: Influenza-Immunization
// InstanceOf: Immunization
// Usage: #example
// * identifier.value = "e6f1ba43-c0ed-4b9b-9f12-f435d8ad8f92"
// * note.text = "Influenza Virus Vaccine 1 8/15/2010 Completed"
// * performer.actor.display = "2.16.840.1.113883.19.5.9999.456::2981824"
// * patient = Reference(160920144139807)
// * occurrenceDateTime = "2010-08-15"
// * lotNumber = "1"
// // * recorded = "2010-08-15"
// * vaccineCode = urn:oid:2.16.840.1.113883.12.292#88 "Influenza virus vaccine"
// * status = #completed

// Instance: Urinanalysis-Observation
// InstanceOf: Observation
// Usage: #example
// * identifier.system = "urn:oid:2.16.840.1.113883.19"
// * identifier.value = "123456789"
// * note.text = "Status: Current every day smoker Detail: Moderate smoker (10-19 cigs/day) Started: 1992 Stopped: Recorded June 6, 2014 10:32am"
// * code = urn:oid:2.16.840.1.113883.6.1#24357-6
// * code.text = "Urinanalysis macro (dipstick) panel"
// // * issued = "2014-06-06T10:32-05:00"
// * status = #final

// Instance: Urinanalysis-Diagnostic-Report
// InstanceOf: DiagnosticReport
// Usage: #example
// * identifier.system = "urn:oid:1.3.6.1.4.1.22812.20.1.1.4.5"
// * identifier.value = "1"
// * code = urn:oid:2.16.840.1.113883.6.1#24357-6
// * code.text = "Urinanalysis macro (dipstick) panel"
// * effectivePeriod.start = "2015-06-22"
// * effectivePeriod.end = "2015-06-22"
// * subject.display = "1.3.6.1.4.1.22812.3.2009316.3::160920144139807"
// * status = #final

// Instance: HEART-RATE-Observation
// InstanceOf: Observation
// Usage: #example
// * identifier.system = "urn:oid:2.16.840.1.113883.3.42.126.100001.19"
// * identifier.value = "216881330410151584"
// * note.text = "80 /min"
// * code = urn:oid:2.16.840.1.113883.6.1#8867-4 "HEART RATE"
// * code.text = "HEART RATE"
// * effectivePeriod.start = "2014-05-20T19:36:05-06:00"
// * category = $observation-category#vital-signs "Vital Signs"
// * category.text = "Vital Signs"
// * status = #final
// * valueQuantity.value = 80
// * valueQuantity.unit = "/min"

// Instance: Outpatient-Encounter
// InstanceOf: Encounter
// Usage: #example
// * identifier.value = "2a620155-9d11-439e-92b3-5d9815ff4de8"
// * subject = Reference(160920144139807)
// // * diagnosis.condition.concept.display = "Condition/db734647-fc99-424c-a864-7e3cda82e704"
// * type = urn:oid:2.16.840.1.113883.6.12#99213 "Office outpatient visit 15 minutes"
// // * class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
// // * class.code = "IMP"
// // * class.display = "inpatient encounter"
// * status = #unknown