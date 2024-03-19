Alias: $languages = http://hl7.org/fhir/valueset/languages
Alias: $condition-category = http://hl7.org/fhir/valueset/condition-category
Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org
Alias: $service-category = http://hl7.org/fhir/valueset/service-category
Alias: $terminology = http://example.com/terminology
Alias: $goal-status = http://hl7.org/fhir/valueset/goal-status
Alias: $goal-priority = http://hl7.org/fhir/valueset/goal-priority
Alias: $ActPriority = http://hl7.org/fhir/v3/ActPriority
Alias: $organization-type = http://hl7.org/fhir/organization-type
// Alias: $observation-category = http://hl7.org/fhir/observation-category


Instance: Inline-Instance-for-undefined-1
InstanceOf: Patient
Usage: #example
* name
  * given = "Abby"
  * family = "McIntyre"
* birthDate = "2011-05-05"
* gender = #female
* address
  * use = #home
  * type = #both
  * text = "534 Erewhon St PeasantVille, Rainbow, Vic  3999"
  * line = "534 Erewhon St"
  * city = "PleasantVille"
  * district = "Rainbow"
  * state = "Vic"
  * postalCode = "3999"
  * period.start = "1974-12-25"
* contact
  * relationship.text = "Grandmother"
  * name
    * given = "Sarah"
    * family = "Smith"
  * telecom
    * system = #phone
    * value = "888-555-1212"
  * gender = #female
  // * communication
    // * language.coding
      // * system = "http://hl7.org/fhir/valueset/languages"
      // * code = "en"
    // * preferred = true

Instance: Inline-Instance-for-undefined-2
InstanceOf: Patient
Usage: #example
* name
  * given = "Sarah"
  * family = "Kelly"
* active = true
* telecom
  * system = #phone
  * value = "777-555-1212"
* gender = #female
* birthDate = "1950-09-05"
* address
  * use = #home
  * type = #both
  * text = "534 Erewhon St PeasantVille, Rainbow, Vic  3999"
  * line = "534 Erewhon St"
  * city = "PleasantVille"
  * district = "Rainbow"
  * state = "Vic"
  * postalCode = "3999"
  * period.start = "1974-12-25"
// * communication.language = $languages#en
  // * preferred = true

Instance: Inline-Instance-for-undefined-3
InstanceOf: Patient
Usage: #example
* name
  * given = "Andy"
  * family = "Smith"
* active = true
* telecom
  * system = #phone
  * value = "888-555-1212"
* gender = #male
* birthDate = "2017-10-05"
// * communication.language = $languages#en
  // * preferred = true

Instance: Inline-Instance-for-undefined-4
InstanceOf: Patient
Usage: #example
* name
  * given = "Ben"
  * family = "Jameson"
* active = true
* telecom
  * system = #phone
  * value = "666-555-1212"
* gender = #male
* birthDate = "1986-04-15"
* address
  * use = #home
  * type = #both
  * text = "999 Main St PeasantVille, Rainbow, Vic  3999"
  * line = "999 Main St"
  * city = "PleasantVille"
  * district = "Rainbow"
  * state = "Vic"
  * postalCode = "3999"
  * period.start = "1974-12-25"
// * communication.language = $languages#en
  // * preferred = true

Instance: Inline-Instance-for-undefined-5
InstanceOf: Patient
Usage: #example
* name
  * given = "Tim"
  * family = "Harper"
* active = true
* telecom
  * system = #phone
  * value = "555-555-1212"
* gender = #male
* birthDate = "1988-08-21"
* address
  * use = #home
  * type = #both
  * text = "999 Main St PeasantVille, Rainbow, Vic  3999"
  * line = "999 Main St"
  * city = "PleasantVille"
  * district = "Rainbow"
  * state = "Vic"
  * postalCode = "3999"
  * period.start = "1974-12-25"
// * communication.language = $languages#en
  // * preferred = true

Instance: Inline-Instance-for-undefined-6
InstanceOf: Group
Usage: #example
* identifier
  * system = "http://example.com/group-identifier"
  * value = "AbbyJohnsonHUDGroup"
* type = #person
// * actual = true
* membership = #enumerated
* code.text = "HUD local organization"
* quantity = 4
* managingEntity = Reference(Organization/HUD)
* member[0].entity = Reference(Patient/abby-mcIntyre) "abby-mcIntyre"
* member[+].entity = Reference(Patient/sarah-kelly) "sarah-kelly"
* member[+].entity = Reference(Patient/andy-smith) "andy-smith"
* member[+].entity = Reference(Patient/ben-jameson) "ben-jameson"
* member[+].entity = Reference(Patient/tim-harper) "tim-harper"

Instance: Inline-Instance-for-undefined-7
InstanceOf: Condition
Usage: #example
* identifier
  * system = "http://example.com/condition-identifier"
  * value = "12345"
* clinicalStatus = #active  
* verificationStatus = #confirmed
* category = $condition-category#housing-instability "Housing Instability"
* severity = $sct#123456 "Severe"
* code = $loinc#12345-6 "Housing Instability"
* subject.display = "Patient/2"
* onsetDateTime = "2024-04-01"
* recordedDate = "2023-11-06"
// * recorder.display = "Practitioner/1"
// * participant.type.coding
  // * system = "http://hl7.org/fhir/valueset/participant-type"
  // * code = "social-worker"
  // * display = "Social Worker"

Instance: example-service-request
InstanceOf: ServiceRequest
Usage: #example
* status = #active
* intent = #proposal
* category = $service-category#housing-instability "Housing Instability"
* priority = #urgent
* code.concept.coding
  * system = "http://example.com/terminology"
  * code = #ask-terminology-group
  * display = "Ask Terminology Group"
* subject.display = "Group/1"
* occurrenceDateTime = "2024-04-01"
// * requestor.display = "Practitioner/456"
// * performerType = $terminology#social-worker "Social Worker"

Instance: example-goal
InstanceOf: Goal
Usage: #example
* lifecycleStatus = #planned
* achievementStatus = $goal-status#in-progress "In Progress"
* category = $terminology#housing-instability "Housing Instability"
* priority = $goal-priority#high-priority "High Priority"
* statusDate = "2023-11-06"
* statusReason = "Grandmother will not be able to be Guardian"
* description.text = "Grandmother will not be able to be Guardian"
* subject.display = "Group/1"
// * expressedBy.display = "Practitioner/789"

Instance: example-encounter
InstanceOf: Encounter
Usage: #example
* status = #planned
* identifier
  * system = "http://example.com/identifier"
  * value = "12345"
// * class
  // * system = "http://hl7.org/fhir/v3/ActCode"
  // * code = "obsenc"
  // * display = "Observational Encounter"
* type = $terminology#your-code-here "Your Code Here"
// * serviceType.coding
  // * system = "http://example.com/terminology"
  // * code = "aged-care-assessment"
  // * display = "Aged Care Assessment"
* priority = $ActPriority#I "I - High"
* subject.display = "Group/123"
// * participant
  // * type = $terminology#social-worker "Social Worker"
  // * individual.display = "Practitioner/456"

Instance: example-practitioner
InstanceOf: Practitioner
Usage: #example
* identifier
  * system = "http://example.com/identifier"
  * value = "12345"
* active = true
* name
  * given = "Nancy"
  * family = "Smith"
* gender = #female

Instance: Inline-Instance-for-undefined-8
InstanceOf: Organization
Usage: #example
* identifier
  * system = "http://example.com/identifier"
  * value = "67890"
* active = true
* type = $organization-type#bus "Business"
* name = "HUD Regional Authority for ..."
* contact
  * purpose = $terminology#purpose-code "Purpose Code"
  * name.text = "Robert Johnson"
  * telecom
    * system = #phone
    * value = "800-555-1212"
  * address
    * line[0] = "Address Line 1"
    * line[+] = "Address Line 2"
    * city = "City"
    * state = "State"
    * postalCode = "12345"
    * country = "Country"
* endpoint.display = "Endpoint/1"

Instance: example-observation
InstanceOf: Observation
Usage: #example
* identifier
  * system = "http://example.com/identifier"
  * value = "54321"
* status = #final
* category = $observation-category#your-category-code "Your Category"
* code = $loinc#12345-6 "Your LOINC Code"
* subject.display = "Patient/1"
* encounter.display = "Encounter/456"
* effectiveDateTime = "2024-03-01T00:00:00Z"
* performer.display = "Practitioner/789"
* valueCodeableConcept = $terminology#homelessness "Homelessness"
// * note = "Filling Note"