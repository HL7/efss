### SDOH CC IG Model
The SDOH CC IG Model implementation that was used is based on the Gravity SDOH Clinical Care 2.1 Implementation Guide. This guide can be found at https://build.fhir.org/ig/HL7/fhir-sdoh-clinicalcare 

### FHIR Analysis Model
The FHIR Analysis Model was created from the Social Services Domain Analysis Model and its implementation complies with the FHIR Standard.

Specific functional capabilities present in the model were driven by the following requirements:

* The ability of a FHIR System to provide a view of Whole Person Care. This starts with the ability to identify social needs or risks and to measure the success of the social service provided. The Whole Person Care view can contain an aggregated view of clinical, behavioral, and social determinants and activities. It can also shows views where only the social determinants and social services are present.

* The need to utilize executable relationships between individuals, individuals and organizations, and legal authorities.

* The Program System’s functional requirements for determining membership eligibility and enrollment in a specific Social Program.

* The ability of actors of FHIR Systems and Program Systems to communicate terms and concepts as clearly as semantically possible including  digital, written, and verbal communications.

* Digital information exchanged between an FHIR System and a Program System may require some transformation.  

#### Social Service Domain Analysis Model

Based on the above requirements, the following social services Domain Analysis Model was Developed. 

<figure>
{%include efssls.svg%}
<figcaption><b>Figure 1: Logical Model for Enhancing FHIR for Life Set</b></figcaption>
</figure>
<br clear="all" />

<figure>
{%include efssss.svg%}
<figcaption><b>Figure 1: Logical Model for Enhancing FHIR for Screening Set</b></figcaption>
</figure>
<br clear="all" />  



In the above, there are new proposed FHIR Resources:

**LifeSet Concept:** LifeSet Resource provides the ability to define and operate on associations between individuals, individuals and organizations, and between individuals and governing authorities. Making this ability a "first-class" citizen is critical in multiple ways ranging from understanding relationships by end users to determining compliance of eligibility for social services.

**ScreeningSet Concept:** A collection of individuals or cohort in social services is not dynamic. Factors influencing this dynamic are both contextual and temporal. The context itself has several different factors. For example, delivering a social service to a household may have eligibility requirements for the individuals, and the relationships between individuals may change (death, marriage).

**IndividualRole Concept:** To receive social services, a person is not required to be a patient. Subjects in the LifeSet Resource can be subjects of the Individual resource. This resource is provided because Patient Resource:
1. Overloads the semantics of the subject in the LifeSet Resource 
2. There are other constraining properties of the Patient Property such as cardinality constraints that may require workarounds.
3. From a logical model, it has an equivalency to the same relationship between the person resource as the present patient resource has with person.

**Legal Jurisdiction Concept:** Legal jurisdiction refers to the authority or power of a legal entity, such as a court or government, to make and enforce laws within a specific geographical area or over certain individuals or entities. It defines the scope of the legal system's control and influence. Jurisdiction can be based on factors such as territory, subject matter, or the individuals involved. Different levels of government, both within a country and internationally, may have distinct jurisdictions. Understanding jurisdiction is crucial in determining which laws apply to a particular situation and which legal authorities have the right to adjudicate or enforce those laws.
