Two Use Cases are provided that have been used to determine what functionality the FHIR System needs to support to address Social Services. The Whole Person Care View scope of these Use Cases has been simplified to only factors specific to Social Services and do not include other clinical or behavioral considerations.

### Housing Insecurity (HUD)
The Housing Insecurity Use Case is driven by the need to provision new housing for a child because her present housing needs to be addressed because of her present housing needs to change. Incorporated in the description is the possible requirement of the need to change the guardian for the children involved, although it has not been identified in the two use cases.

Abby McIntyre is a 12-year-old female and Andy Smith, her 6-year-old half-brother, are living with her grandmother, their legal guardian. Unfortunately, her grandmother has recently been given a medical diagnosis that makes it important for alternative guardianship to be prepared for should the grandmother no longer be able to serve in this role. During a recent interview with Nancy Smith, a social worker with the child welfare agency who is currently working with Abby McIntyre to establish an alternative guardianship, it was discovered that her uncle, Ben Jameson, with whom she is close, has housing insecurity issues that would preclude him from being named her next guardian. Ben has previously been registered in the local HMIS system. Nancy has determined it should be a goal in Abby’s care plan to reduce Ben’s housing insecurity so that he can take on her care should her grandmother no longer be able to house and care for her.  

**Actors**

* **Abby McIntyre:** 12-year-old female receiving care management services through her school social worker using a FHIR-based system.
* **Andy Smith:** 6-year-old male half-brother of Abby who is also residing with Abby's grandmother.
* **Sarah Kelly:** Abby's 73-year-old grandmother who is presently Abby's guardian.
* **BenJameson:** Abby’s 37-year-old uncle who is seeking to be Abby’s alternative guardian and has services using the local HMIS.
* **Tim Harper:** Tim is Ben's partner. They have no legal relationship but have become a committed couple during their time together in a local homeless encampment.  Tim is employed, but his work teaching art is very low paid, and he has not been able to afford rent since his neighborhood was gentrified.
* **Nancy Smith:** Abby’s social worker who is using a FHIR-based system as the care management system where Abby is one of her clients.
* **Robert Aston:** HUD case manager using the local HMIS to help Ben and Tim to secure housing to make Ben a fit guardian for his niece.
* **FHIR-based System:** This system is an electronic care coordination system that Nancy uses to help assist and track her client’s progress.

**Pre-Conditions / Scoping Statements**

Data sharing agreements and individual consent to share processes have been created between the agencies operating the HMIS and FHIR Care Coordination System to exchange data and all data exchanged is compliant with these agreements and/or consents.  (This is out of scope for the project.)

#### Use Case Statement 1
* **Requirement:** As Abby’s care coordinator, I want to capture sufficient information about Abbey and the potential members of her household so that applications for housing services can be submitted to multiple housing programs.

* **Acceptance Criteria:** As the FHIR Care Coordination system, I want to send the data to the HMIS system in their native format for import into their system.

* **Additional Information:** In the Artifacts Section, additional documents provide more detailed information; the Payload Description for FHIR System to Program System, Payload Description for Program System to FHIR System, and Additional HUD Terms.

### Lila John - Financial Assistance (Tribal TANF)
Lila, a single mother of two children, Nayeli (aged 14) and Takoda (aged 10), lives on the Pine Ridge Reservation in South Dakota. Lila recently lost her job at a local arts and crafts store, which had to close due to economic difficulties. The loss of her job has strained their financial situation, and Lila struggles to meet the family's basic needs.

As a member of the Oglala Lakota tribe, Lila has heard of the Tribal TANF program specifically tailored for their community's members. Lila and her children have maintained their tribal status through their participation in tribal events maintaining tribal traditions.

Upon consulting with Chief Ganka, the Tribal elder and community liaison, they are referred to Mary Rose, the community social worker. Mary uses a FHIR-based system to manage the provision of social, behavioral, clinical, and tribal services for the Oglala.

Upon consulting with a Tribal elder and community liaison, Lila learns the following:

* **Tribal Connection:** As members of a recognized tribe and residents of the reservation, Lila and her children are eligible to apply for Tribal TANF. Each state and tribe may have specific criteria regarding tribal membership or affiliation.

* **Income and Asset Considerations:** Like the standard TANF program, there are income and asset thresholds. However, given Lila's recent job loss and her limited savings, she meets the criteria.

* **Cultural Work Requirements:** While work requirements exist, the Tribal TANF program often integrates cultural and community elements. Lila can participate in local tribal cultural events, teachings, or community services to meet these requirements. This integration ensures that she stays connected with her heritage while acquiring new skills or supporting her community.

* **Support for Indigenous Practices:** Nayeli and Takoda's involvement in traditional dances and ceremonies can be considered under the program's educational and cultural enrichment activities.

* **Duration of Assistance:** Tribal TANF programs might have their own set duration for assistance, but Lila learns that she can receive support for up to 60 months. Special considerations or extensions may be provided for families facing severe hardships.

* **Customized Assistance:** Tribal TANF can offer more than just monetary aid. There could be additional support in the form of counseling, job training specific to tribal industries, and childcare services during community events.

#### Actors
* **Lila John:** 35-year-old single mother and member of the Oglala Lakota Tribe who lives on the Pine Ridge Reservation.
* **Nayeli John:** 14-year-old daughter of Lila, attends both public schools and community classes in traditional ceremonies and in Lakota Sioux, where she can utilize her fluency and writing skills.
* **Takota John:** 10-year-old son of Lila. Attends both public schools and community classes in community culture and ceremonies as well as studying the Lakota Sioux language.
* **Chief Ganka:** 73-year-old Tribal Elder who has a personal/mentor relationship with Lila and her children.
* **Oglala Lakota Community Center:** Organization that provides many educational, cultural, and spiritual programs and events
* **Mary Rose:** social worker for the tribe and uses a FHIR-based care coordination system.
* **Jim Stone:** TANF case worker for the Pine Ridge Reservation and has both the authority and sign-off on the TANF programs for the reservation.

#### Pre-Conditions / Scope
1. As the FHIR-based care coordination system has been recently installed, Lila, her children, and Tribal Elder are not presently in the system.
2. Out of scope are transportation issues.

#### Use Case Statement 1
* **Requirement:** As Lila’s care coordinator, I want to capture sufficient information about Lila, Lila’s family, and Lila’s relationships with other non-family members, especially Tribal relationships, so that an application to the Pine Ridge TANF program can be submitted.

* **Acceptance Criteria:** Given the data has been entered into the FHIR-based care coordination system, I have sufficient data to send the Pine Ridge TANF program office so that they could accept Lila’s application.

#### Use Case Statement 2

* **Requirement:** As Lila’s care coordinator, I want to receive from the Pine Ridge TANF program office sufficient information for them to confirm and provide details on the provisioning of Lila and her family TANF benefits.

* **Acceptance Criteria:** As Lila’s care coordinator, I want to see in my FHIR-based system the benefits and the other associated data that Lila will receive from TANF.

* **Additional information:** In the Artifacts Section, additional documents provide more detailed information; the Payload Description for FHIR System to Program System, Payload Description for Program System to FHIR System, and Additional Tribal TANF Terms.

**TANF Terms**

* **Tribal Member:** An individual who is recognized as belonging to a Native American Tribe by fulfilling the criteria of tribal membership, such as lineage or participation in tribal activities.

* **Family:** A group of two or more people related by birth, marriage, or adoption and residing together.

* **Household:** All the people who occupy a housing unit regardless of relation.

* **Family Member:** An individual who is related by birth, marriage, or adoption to a member of the family.

* **Household Member:** An individual who resides in the same housing unit, regardless of whether they are related to the primary resident or not.

* **Administrative Region:** A designated area within a state or tribal land in which specific administrative, social, or welfare services are provided.

* **Eligible Tribal Programs:** Specific programs or services available to members of a tribe based on their eligibility criteria.

* **Poverty Line:** The minimum level of income deemed adequate in a particular country or region. It is usually determined by the federal government and varies based on household size.

* **Child Deduction:** A reduction in taxable income for each dependent child. The deduction amount might vary depending on the age and specific needs of the child.

* **Standard Deduction:** A flat amount that reduces the income that's subject to tax.

* **Earnings Deduction:** A portion of an individual's earnings that is not subject to taxation, allowing for a portion of earned income to be deducted from the overall income calculation.

* **Assets:** Tangible and intangible items of value owned by an individual or family. Also, resources that could be available to the household to
purchase food, such as amounts in bank accounts, count as assets. Items that are not accessible, such as the household’s home, personal property, and retirement savings, do not count. Most automobiles do not count. States have the option to relax the asset limits.

**TANF Tribal Eligibility Rules**

The Temporary Assistance for Needy Families (TANF) is a U.S. federal assistance program. While the program is federally funded, each state administers its own TANF program, establishes its own eligibility criteria, and determines the type and amount of assistance payments.

**As a result, the specific requirements can vary from state to state.** However, there are general eligibility requirements that apply across states. Tribal TANF is a version of the federal TANF program that allows American Indian and Alaskan Native tribes to run their own TANF programs to best serve their communities' unique needs.

**The requirements and benefits for Tribal TANF can differ from regular TANF programs because tribes can set their own guidelines.**

* **Income Limits:**
   * Applicants must have a low or very low income.
   * Each state has its own set income thresholds based on family size.
   * Both earned (like wages) and unearned (like unemployment benefits) income are considered.
* **Asset Limits:** Some states set asset limits, such as the value of vehicles, bank account balances, or properties, excluding the applicant's primary home.
* **S. Citizenship or Eligible Non-Citizen Status:**
   * Applicants must be U.S. citizens or specific categories of eligible non-citizens, such as lawful permanent residents.
   * Non-citizens might have a waiting period before they can apply.
* **Children in Household:**
   * TANF is primarily for families with children under 18.
   * The child might be required to live in the home of a parent or a close relative.
   * In some states, pregnant women in their last trimester can also qualify.
 * **Cooperation with Child Support Services:** If a parent applies for TANF benefits for a child but is not cooperating with child support services to obtain support from the other parent, they might be disqualified.
* **Work Requirements:**
   * Adults must participate in work or training activities for a certain number of hours per week, unless they are exempt (e.g., due to being pregnant or having a young child).
   * States have flexibility in defining these activities, which can include actual employment, job search, community service, or vocational training.
* **Time Limits:**
   * Families can receive TANF for a maximum of 60 months (5 years) in their lifetime, although some states have shorter limits.
   * States can exempt up to 20% of their caseload from this limit if they face hardships.
* **Social Security Number:** Applicants are required to provide or apply for a Social Security Number (SSN) for each member of the family seeking assistance.
* **Immunization Requirements:** Some states require that children be immunized to be eligible.
* **School Attendance:** School-age children in the family must be attending school, and states can require teens without a high school diploma or GED to attend training or education as a condition of receiving TANF.
* **Drug Testing:** Some states require applicants to undergo drug testing.
* **Residency:** Applicants must be residents of the state where they are applying.

_Again, it's crucial to understand that specific eligibility criteria and requirements vary significantly from each state or tribe._

_Those interested in TANF should check their state's guidelines or consult with a local/tribal social services office._

**Example for Determining Eligibility Amount:**
1. Determine Gross Income: Calculate the total annual gross income of the household.
2. Apply Deductions: Subtract the standard deduction, child deduction, and earnings deduction from the gross income to get the net income.
3. Compare with the Poverty Line: Compare the net income with the poverty line for the household size. If the net income is below the poverty line, move to the next step.
4. Check Assets: Calculate the total value of the assets. If they're below the designated limit, move to the next step.
5. Consider Other Criteria: Ensure the household meets the other criteria, such as residency, tribal membership, and age requirements.
6. Determine Benefit Amount: Based on the household size, net income, and other considerations, determine the TANF benefit amount the family is eligible for.

_By following these steps, TANF caseworkers can efficiently determine the eligibility and benefit amount for each applicant._
