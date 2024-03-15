### Introduction
The FHIR Reconciliation Model is a fusion/integration of the SDOH CC IG Model and the FHIR Analysis Model to create a more effective model for developing and using FHIR to deliver Whole Person Care. 
The following criteria were used in the process of developing the FHIR Reconciliation Model:
1. Normalizing the Whole Person Care as much as possible so that providing an aggregated view across the multiple disciplines and domains within each discipline was as seamlessly as possible.
2. When there were concrete differences between the concepts (Structured Definitions) of the two models, the different concepts were included in the FHIR Reconciliation Model as opposed to either overloading existing concepts with disjoint concepts or embedding a new concept within an existing concept. Examples in the existing FHIR standards are resources dealing with orders (ServiceRequest, DeviceRequest, MedicationRequest, etc.) and with reports (DiagnosisReport, ExplanationofBenefits, ImagingStudy, etc).
3. The FHIR Reconciliation Model must be backward compatible with the FHIR 4.0.1 Release.  
4. Whenever possible, if existing SDOH Profiles and FHIR R4.0.1 resources could be extended, then extensions were made to those profiles or new profiles created.
5. Recognition that the business of  Social Services is different from the business of  Clinical Services.  
   1. Government agencies or non-profit organizations generally provide Social Services. The services are delivered outside of hospitals or the medical system.  
   2. The services requested and received are not medical interventions, but interventions that address social needs.  
   3. The social service may be delivered to a group and the recipients of those services are a group of individuals. The social service intervention may have different temporal and contextual aspects during the delivery of the service which need to be recognized in the ability to have longitudinal Whole Person Care Records.  

### FHIR Reconciliation Model
The FHIR Reconciliation Model components are listed below and categorized by the type of FHIR enhancement they represent. A more detailed description of each component is provided in the Artifacts Section.

### New Resources
**IndividualRole:** The Individual Resource is analogous but different from the Patient Resource.  Conceptual it is different in that the Individual does not have to be a Patient in order to receive services, have findings and assessments. Additionally, the Individual Resource is a key factor for the LifeSet Resource to have direct, unambiguous representations of different relationships provided in the LifeSet Resource.

**LifeSet Resource:** The LifeSet Resource provides the function capability to make a first-class citizen out of the relationships between an individual and other individuals, between an individual and organizations, and between an individual and legal entities. The ability to computationally compute these relationships provides those working in the social services domains, from delivering social service applications by understanding the appropriate context and temporality of the relationships to those care coordinators and case managers who need to track and measure the social services received by an individual to understand if these interventions were able to achieve the appropriate goals and outcomes.

**AssistanceProgram Resource:**  There is a difference between the delivery/consumption of Social Services and the delivery/execution of Clinical Procedures. One difference is that social service has a temporal and qualification aspect where the members of the group may change over time while the delivery of the service remains. The metadata about the members who are participants in the AssistanceProgram is different. Additional differences also exist such as the workflow where enrollment, delivery, and payment processes are different than those supported by clinical workflows involving Procedures and Claims Processing.

### Changes to existing SDOH Profiles
**SDOH Group Profile:** The existing SDOH Group Profile was modified to enable a reference to the IndividualRole in the Subject Property. In addition, the metadata about membership has been extended to ///// NEED MORE INPUT FROM SEAN.

**SDOH Condition:** The existing SDOH Condition Profile was modified to enable a reference to the IndividualRole in the Subject Property.

**SDOH Goal:** The existing SDOH Goal Profile was modified to enable a reference to the IndividualRole in the Subject Property.

**SDOH ServiceRequest:** The existing SDOH ServiceRequest Profile was modified to enable a reference to the IndividualRole in the Subject Property.  
Consideration was given to creating a new resource to differentiate the request for a Social Service, as in done in Medications and Devices, from the generic ServiceRequest. Using the criteria for creating new resources, presently extending the SDOH ServiceRequest appears adequate.

**SDOH Observation:** The existing SDOH Observation Profile was modified to enable a reference to the IndividualRole in the Subject Property.

### New SDOH Profiles created
**SDOH CapabilityStatement Profile:** Not every system will support the SDOH Clinical Care Implementation Guide or the Companion Guide. The SDOH CapabilityStatement is provided so that other FHIR systems will be able to determine its capabilities. 

**SDOH Adverse Event:** Individuals can have Adverse Events within the Social Services Domain.  The ability to have a reference to the Individual Resource in the Subject Property has been added to the base Adverse Event Resource to create the SDOH AdverseEvent Profile.

**SDOH Risk Assessment:** Individuals can have Encounters within the Social Services Domain. The ability to have a reference to the Individual Resource in the Subject Property has been added to the base Risk Assessment Resource to create the SDOH RiskAssesment Profile.

**SDOH Encounter:** Individuals can have Encounters within the Social Services Domain. The ability to have a reference to the Individual Resource in the Subject Property has been added to the base Encounter Resource to create the SDOH Encounter Profile.

**SDOH CareTeam:** Individuals can be participants in the Support Team, especially with providing support within Social Services Domains. The ability to have a reference to the Individual Resource in the Subject Property has been added to the base CareTeam Resource to create the SDOH CareTeam Profile.

### Changes to Terminologies in existing Profiles and Resources
This Companion Guide uses example terminologies for most bindings to Resource properties. The may be certain Resource Properties that require a stronger binding than example. This version of Companion Guide has not attempted to address any issues extending these valuesets.

**Organization Resource:** The LifeSet Resource provides the ability to have associations between an individual and legal authority such as a Federal, State, or Tribal Nation. Consideration was given to creating a new Resource called Legal Authority. In keeping with the criteria of using existing SDHO CC Implementation or FHIR R4.0.1 Resources, this Companion Guide uses the existing Organization Resource. The valuesets used in the organization.type and the organization.qualification.code bindings may need to be extended. Examples are qualifications for membership in a Tribal Nation and the different types of qualifications one could have regarding US Citizenship.

### Other Considerations
**CarePlan:** Although the Care Plan should be provided a Whole Person View, as the present scope is defined as the Data to the Program System and Data from the Program System, this capability is out of scope for this Companion Guide.

**RelatedPerson:** Efforts we made to use the RelatedPerson Resource. The recommendation of this Companion Guide was not to use this resource as it represents a concept that is bound to the delivery of clinical services for a singular subject, the Patient, and there we better mechanisms (e.g. LifeSet, Individual) that are better for delivering and supporting Social Services Views.

**Linking to Person, Identity of a Person:** Many systems today that support HL7 Standards use the Person Resource to identify different roles a Person can have in a healthcare system. Examples are Patient, Participant, and others. This implementation pattern is beyond the scope of this Companion Guide, but it is assumed that is will be utilized by many solution.
