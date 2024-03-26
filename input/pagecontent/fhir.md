### FHIR Model
The FHIR Model is an extensive representation of the health domain but as documented there are some gaps within the model when applying 
the approach to social services.  In the spirit of enhancement and with much discussion,  we have identified several opportunities for new resources and profiles that  we believe will be beneficial to the overall use of FHIR in a social services environment.

We realize there is lots of discussions and options especially around the concept of individual representation within FHIR and look forward to a discussion, proposals and alternatives to support individuals effectively in FHIR as required for social services
### New Resources
#### **IndividualRole:** 
The [IndividualRole] Resource is analogous but different from the Patient Resource.  Conceptual it is different in that the Individual does not have to be a Patient in order to receive services, have findings and assessments. Additionally, the Individual Resource is a key factor for the LifeSet Resource to have direct, unambiguous representations of different relationships provided in the LifeSet Resource.

#### **LifeSet Resource:** 
The [FHIRLifeSet] Resource provides the function capability to make a first-class citizen out of the relationships between an individual and other individuals, between an individual and organizations, and between an individual and legal entities. The ability to computationally compute these relationships provides those working in the social services domains, from delivering social service applications by understanding the appropriate context and temporality of the relationships to those care coordinators and case managers who need to track and measure the social services received by an individual to understand if these interventions were able to achieve the appropriate goals and outcomes.

#### **Legal Jurisdiction:**
[LegalJurisdiction] refers to the authority or power of a legal entity, such as a court or government, to make and enforce laws within a specific geographical area or over certain individuals or entities. It defines the scope of the legal system's control and influence. Jurisdiction can be based on factors such as territory, subject matter, or the individuals involved. Different levels of government, both within a country and internationally, may have distinct jurisdictions. Understanding jurisdiction is crucial in determining which laws apply to a particular situation and which legal authorities have the right to adjudicate or enforce those laws.

### New Profiles

#### Screening Set
 Screening Set is a composition of individuals in need of service(s). The focus of the Screening Set is provide an effecient construct for identifying and illustraing the individuals in the composition. The Screen Set itself is meant to be transaction and temporal in nature. The Screen Set would be active while the steps taken to acquire the services have been completed. Screenig Set should be viewed as the trigger for acquisition process for the required services but not utilized for the acquisition workflow operations


### Terminology Requirements
#### Association Qualification Type Code VS
#### Life Set Association VS
#### Life Set Association Verification Code VS
#### LifeSet Association Status Code VS
#### Membership Role Code VS
#### Membership Status Code VS
#### Membership Type Code VS
#### Membership Verification Code VS