Instance: Abby-McIntyre
InstanceOf: Person
Usage: #example
Description: "Abby McIntyre: 12-year-old female receiving care management services through her school social worker using a FHIR-based system."
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Abby McIntyre: 12-year-old female receiving care management services through her school social worker using a FHIR-based system.</div>"
* name.text = "Abby McIntyre"
* birthDate = "2012"

Instance: Abby-McIntyre-IndividualRole
InstanceOf: EFSSIndividualRole
Usage: #example
Description: "Abby McIntyre: 12-year-old female receiving care management services through her school social worker using a FHIR-based system."
* individual = Reference(Abby-McIntyre)


Instance: Andy-Smith
InstanceOf: Person
Usage: #example
Description: "Andy Smith: 6-year-old male half-brother of Abby who is also residing with Abby’s grandmother."
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Andy Smith: 6-year-old male half-brother of Abby who is also residing with Abby’s grandmother.</div>"
* name.text = "Andy Smith"
* birthDate = "2018"

Instance: Sarah-Kelly
InstanceOf: Person
Usage: #example
Description: "Sarah Kelly: Abby’s 73-year old grandmother who is presently Abby’s guardian."
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Sarah Kelly: Abby’s 73-year old grandmother who is presently Abby’s guardian.</div>"
* name.text = "Sarah Kelly"
* birthDate = "1951"

Instance: Ben-Jameson
InstanceOf: Person
Usage: #example
Description: "Ben Jameson:  Abby’s 37-year-old uncle who is seeking to be Abby’s alternative guardian and has services using the local HMIS."
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ben Jameson:  Abby’s 37-year-old uncle who is seeking to be Abby’s alternative guardian and has services using the local HMIS.</div>"
* name.text = "Ben Jameson"
* birthDate = "1987"

Instance: Tim-Harper
InstanceOf: Person
Usage: #example
Description: "Tim Harper:  Tim is Ben’s partner. They have no legal relationship but have become a committed couple during their time together in a local homeless encampment.  Tim is employed, but his work teaching art is low paid, and he has not been able to afford rent since his neighborhood was gentrified."
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Tim Harper:  Tim is Ben’s partner. They have no legal relationship but have become a committed couple during their time together in a local homeless encampment.  Tim is employed, but his work teaching art is low paid, and he has not been able to afford rent since his neighborhood was gentrified.</div>"
* name.text = "Tim Harper"
* birthDate = "1986"

Instance: Nancy-Smith
InstanceOf: Practitioner
Usage: #example
Description: "Nancy Smith:  Abby’s social worker is using a FHIR-based system as the care management system where Abby is one of her clients."
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Nancy Smith:  Abby’s social worker is using a FHIR-based system as the care management system where Abby is one of her clients.</div>"
* name.text = "Nancy Smith"

Instance: Robert-Aston
InstanceOf: Practitioner
Usage: #example
Description: "Robert Aston:  HUD case manager using the local HMIS to help Ben and Tim to secure housing to make Ben a fit guardian for his niece."
* text.status = #additional
* name.text = "Robert Aston"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Robert Aston:  HUD case manager using the local HMIS to help Ben and Tim to secure housing to make Ben a fit guardian for his niece.</div>"