### Introduction
The FHIR Realization Model is a fusion/integration of the SDOH CC IG Model and the FHIR Analysis Model to create a more effective model for developing and using FHIR to deliver Whole Person Care. 
The following criteria were used in the process of developing the FHIR Realization Model:
1. Normalizing the Whole Person Care as much as possible so that providing an aggregated view across the multiple disciplines and domains within each discipline was as seamlessly as possible.
2. When there were concrete differences between the concepts (Structured Definitions) of the two models, the different concepts were included in the FHIR Realization Model as opposed to either overloading existing concepts with disjoint concepts or embedding a new concept within an existing concept. Examples in the existing FHIR standards are resources dealing with orders (ServiceRequest, DeviceRequest, MedicationRequest, etc.) and with reports (DiagnosisReport, ExplanationofBenefits, ImagingStudy, etc).
3. The FHIR Realization Model must be backward compatible with the FHIR 4.0.1 Release.  
4. Whenever possible, if existing SDOH Profiles and FHIR R4.0.1 resources could be extended, then extensions were made to those profiles or new profiles created.
5. Management of resources where contextual and temporal conditions change over time, such as group membership, was considered as it applies to the management and maintenance of FHIR Resources. Consideration is given to having a Resource be defined as a computable operation versus a persistent Resource.
6. Recognition that the business of  Social Services is different from the business of  Clinical Services.  
   1. Government agencies or non-profit organizations generally provide Social Services. The services are delivered outside of hospitals or the medical system.  
   2. The services requested and received are not medical interventions, but interventions that address social needs.  
   3. The social service may be delivered to a group and the recipients of those services are a group of individuals. The social service intervention may have different temporal and contextual aspects during the delivery of the service which need to be recognized in the ability to have longitudinal Whole Person Care Records.  

### FHIR Realization Model
The FHIR Realization Model components are listed below and categorized by the type of FHIR enhancement they represent. A more detailed description of each component is provided in the Artifacts Section.

### New Resources
**IndividualRole:** The Individual Resource is analogous but different from the Patient Resource.  Conceptual it is different in that the Individual does not have to be a Patient in order to receive services, have findings and assessments. Additionally, the Individual Resource is a key factor for the LifeSet Resource to have direct, unambiguous representations of different relationships provided in the LifeSet Resource.

**LifeSet Resource:** The LifeSet Resource provides the function capability to make a first-class citizen out of the relationships between an individual and other individuals, between an individual and organizations, and between an individual and legal entities. The ability to computationally compute these relationships provides those working in the social services domains, from delivering social service applications by understanding the appropriate context and temporality of the relationships to those care coordinators and case managers who need to track and measure the social services received by an individual to understand if these interventions were able to achieve the appropriate goals and outcomes.

**AssistanceProgram Resource:**  There is a difference between the delivery/consumption of Social Services and the delivery/execution of Clinical Procedures. One difference is that social service has a temporal and qualification aspect where the members of the group may change over time while the delivery of the service remains. The metadata about the members who are participants in the AssistanceProgram is different. Additional differences also exist such as the workflow where enrollment, delivery, and payment processes are different than those supported by clinical workflows involving Procedures and Claims Processing.
