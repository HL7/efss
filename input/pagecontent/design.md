### Background
Two different FHIR Models were evaluated. One was a model from the SDOH Clinical Care IG. The other, the FHIR Analysis Model,  was created by first developing a Social Services Domain Analysis Model (SS DAM). A FHIR Server and endpoints were created for the two models and populated with data from the use cases. 

Data payloads were constructed to support the CG scope for each model evaluated. The first payload, Data to the Program System comes from the FHIR System sent to the Program System. This enables the Program System to determine eligibility and enroll the group of individuals in a social program. The Data to the Program System has content that would have been developed following the Gravity SDOH IG. 

The second payload, Data from the Program System, is sent to the FHIR System which documents Social Services received. It includes data about who receives the services, the where/when/how much, and sufficient data correlating to the request and condition identified in the originating FHIR System. 

### SDOH CC IG Model
Two different designs for the FHIR model were considered as FHIR provides the ability to have instances of an individual populated in different FHIR resources. The two Resources considered were populating both the Patient Resource and the Related Person Resource. 

#### Model Using the Patient Resource and RelatedPerson Resource
The first design created used a singular FHIR Patient Resources and FHIR RelatedPerson Resources for all the other personas in the Use Cases. Additional SDOH Profiles of SDOH Goal, SDOH Condition, SDOH Group, SDOH Healthcare Service,  and SDOH Location were also populated based on the Use Cases.  

This approach was never fully implemented and tested. Reasons as to why this approach was abandoned are the following:
* Only Patients can be members of an SDOH Group. A member of the SDOH Group cannot be a RelatedPerson.
* The Related Person resource must and can only reference one Patient Resource. In some of the use cases, multiple personas could be Patient. In this situation,  duplicate RelatedPerson resources would have to be created for the same individual having relationships to multiple Patients. For example, if the mother is a patient and the grandmother, husband, and daughter are Related Persons, then if the father is a Patient, the grandmother and daughter will require duplicate instances of their instance of the  RelatedPerson Resource.

#### Model Using Only the Patient Resource
The second FHIR Model evaluated was a design where all individuals of the Use Cases were populated in the Patient Resource. This model was implemented and evaluated.  

The issue encountered with this approach was there was no effective way to capture or discover interpersonal relationships. For example, relationships such as grandmother/granddaughter or guardian/ward either are difficult to capture, discover, and display. Developing processes to compute on these relationships is difficult at best.  

For this model, capturing interpersonal relationships the pattern deployed was, in the Patient Resource, to use the contact backbone property and within that to use the relationship attribute. 

As this design approach was implemented, other concerns of this approach were revealed such as:
* The computability of an association was required between an individual and an organization.
* The relationships to legal authorities such as the US government of a Tribal Nation, were distinct types of association.
* The use of the Procedure Resources as the intervention to address a social need was not appropriate.

### FHIR Analysis Model
The second model implemented, tested, and evaluated was a FHIR implementation derived from a Social Services Domain Analysis Logical Model. This model can be thought of as a “greenfield” model as it was not constrained the SDOH CC IG or the FHIR 4.0.1 Release.  

The following were considerations in the SS DAM.
* An individual does not have to be patient to be a member of a group such as a family, household, or tribe.
* As the social service provided to meet a social need may have originated in a Program System, it should not be assumed that the Program System has the concept of a patient within their domain model.
* Determining the membership in a specific group is both contextual and temporal. Given a set of potential enrollees, those in a household for a specific housing insecurity program may be different from those in another housing insecurity program. A temporal example is that the definition of a specific type of family may change over time based on births, deaths, marriage, divorce or other factors. 
* The eligibility and enrollment of a group receiving social services is determined by the actors using the Program System. As a program system functional capability is assumed not to be a healthcare system, it is assumed that the Program System is not HIPPA Compliant.
* Making personal relationships between individuals discoverable and executable is an important functional capability in Social Services Domains. Relationships include personal relationships - mother, children, guardian, ward, live together; relationships between an individual and an organization - religious/spiritual, employment, community organization; and between an individual and a legal authority - US citizen, Tribal Nation, prison.
* Personal relationships are also important in understanding the availability of care resources that can be available to help an individual or a group in which that individual is a member. This support team expands beyond the care team to assist in addressing social needs and risks factors.
* The resulting interventions determined by the Program System do not fit with the current SDOH CC IG guidance where the intervention is classified as a Procedure and the subsequent Financial Interaction Workflow (Add link). A procedure does not have 1) the temporal aspect of group membership associated. For example, the members of a group receiving a social service may change due to birth, death, an eligibility rule, and other factors. 2)  in the FHIR Financial Interaction Workflow, the method of payment and funding for a procedure is conceptually different from a social service intervention.
