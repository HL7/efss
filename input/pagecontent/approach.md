### The Approach
The work product is an informative Companion Guide (Guide) to the Gravity Project’s SDOH Clinical Care 2.1 Implementation Guide using the following approach.

![Methodology](backgroundApproach.png)

* Use cases were developed by Subject Matter Experts from Social Services Domains and these use cases identified the requirements for enhancements to FHIR.
* Two implementation approaches were developed from the Use Cases.
   * One implementation approach, the Gravity IG  Approach, was developed based on the SDOH Clinical Care 2.1 Implementation Guide.
   * A Social Services Domain Analysis Model was developed to provide an alternative approach using a FHIR Analysis Approach.
* Using the above two approaches, a FHIR Realization Model was developed leveraging the functional benefits provided by the Gravity IG Approach and the FHIR Analysis Approach while considering the desired evolution of FHIR as the preferred platform for implementing Whole Person Care.

### Other Considerations
**Complementing the SDOH CC IG:** To integrate and complement the SDOH CC IG, this guide's scope contains the following two actors.

1. FHIR System – A FHIR system in this Guide is a software system that is compliant with the HL7 FHIR Standard. The FHIR System provides a Whole Person Care (WPC) view. A WPC view enables any member of the care team, with appropriate authorization, to view an individual’s record that includes information across clinical, behavioral, and social domains. This record includes the ability to capture an individual’s care support team and their associations with other individuals and social groups such as family, household, religious and spiritual,  and social and work organizations. The FHIR system provides care coordination and care management functional capabilities and can interact with other systems that deliver social services.
2. Program System – A Program System in this Guide is a software system that accepts referrals from the FHIR System that can address social risks and fulfill social domain goals. Given a referral, the Program System will determine eligibility for the individual or a group the individuals (e.g., family or household) for a program, enroll the participants in the program, and specify who will receive the service, what the service is, when the service(s) are utilized, and other quantifiable properties. This data is provided to the FHIR System that was the source of the referral.
 
In the realm of social care, it's widely acknowledged that an individual's outcomes are significantly influenced by the people around them. For instance, a child with diabetes, residing in a household where one parent is gainfully employed and both parents are actively involved in her care, is likely to experience better outcomes compared to a child with a similar diagnosis living with a single parent who is facing financial struggles and battling drug addiction. In striving for improved outcomes, human services often emphasize this comprehensive understanding of a person, encompassing environmental and relational factors. 

This recognition has spurred the efforts to devise a technical framework enabling human services to delineate the role of relationships that impact individual outcomes. Roles including family dynamics, household structures, and tribal affiliations. The objective is to standardize the interpretation of relationships, ensuring that individuals seeking services outside clinical settings are accurately comprehended. By adopting this holistic perspective of individuals, we can analyze the support systems and challenges posed by these relationships, which often play pivotal roles in determining improved outcomes.
