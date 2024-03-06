# Brief Description
Lila, a single mother of two children, Nayeli (aged 14) and Takoda (aged 10), lives on the Pine Ridge Reservation in South Dakota. Lila recently lost her job at a local arts and crafts store, which had to close due to economic difficulties. The loss of her job has strained their financial situation, and Lila struggles to meet the family's basic needs.

As a member of the Oglala Lakota tribe, Lila has heard of the Tribal TANF program specifically tailored for their community's members. Lila and her children have maintained their tribal status through their participation in tribal events maintaining tribal traditions.

Upon consulting with Chief Ganka, the Tribal elder and community liaison, they are referred to Mary Rose, the community social worker. Mary uses a FHIR-based system to manage the provision of social, behavioral, clinical, and tribal services for the Oglala.

---
```
#### Query 1: Add Lila, Nayeli, and Takoda to the Patient Resource
FHIR Query:  
 
POST /Patient 
{ 
  "resourceType": "Patient",
  ...  // details about Lila
}
POST /Patient 
{ 
  "resourceType": "Patient",
  ...  // details about Nayeli
}
POST /Patient 
{ 
  "resourceType": "Patient",
  ...  // details about Takoda
}
 
#### Query 2: Create a Group Resource for the Household
FHIR Query:  

POST /Group 
{ 
  "resourceType": "Group",
  ...  // links to Lila, Nayeli, and Takoda
}
```
---
# Actors
* **Lila John**:  35-year-old single mother and member of the Oglala Lakota Tribe who lives on the Pine Ridge Reservation.
* **Nayeli John**: 14-year-old daughter of Lila, attends both public schools and community classes in traditional ceremonies and in Lakota Sioux, where she can utilize her fluency and writing skills.
* **Takota John**: 10-year-old son of Lila. Attends both public schools and community classes in community culture and ceremonies as well as studying the Lakota Sioux language.
* **Chief Ganka**: 73-year-old Tribal Elder who has a personal/mentor relationship with Lila and her children.
* **Oglala Lakota Community Center**: Organization that provides many educational, cultural, and spiritual programs and events
* **Mary Rose**: social worker for the tribe and uses a FHIR-based care coordination system.
* **Jim Stone**: TANF case worker for the Pine Ridge Reservation and has both the authority and sign-off on the TANF programs for the reservation.
---
```
#### Query 3: Add Chief Ganka, Mary Rose, and Jim Stone to the Person Resource
 
FHIR Query:  

POST /Person 
{ 
  "resourceType": "Person",
  ...  // details about Chief Ganka
}
POST /Person 
{ 
  "resourceType": "Person",
  ...  // details about Mary Rose
}
POST /Person 
{ 
  "resourceType": "Person",
  ...  // details about Jim Stone
}
```
---
# Primary Requirements
* As Lila’s care coordinator, I want to capture sufficient information about Lila, Lila’s family, and Lila’s relationships with other non-family members, especially Tribal relationships, so that an application to the Pine Ridge TANF program can be submitted.  I want data to be exchanged back and forth between those systems and any other systems where this data is needed in FHIR (interoperable systems!).
* Acceptance Criteria:
* Given the data has been entered into the FHIR-based care coordination system, I have sufficient data to send the Pine Ridge TANF program office so that they can accept Lila’s application.
* As Lila’s care coordinator, I want to see in my FHIR-based system the benefits and the other associated data that Lila will receive from TANF.
```
#### Query 4: Link Lila, Nayeli, and Takoda to their corresponding TANF applications
 
FHIR Query:  

GET /QuestionnaireResponse?subject:Patient.name=Lila, Nayeli, Takoda

 
#### Query 5: Retrieve the Benefits
 
FHIR Query:  

GET /ExplanationOfBenefit?beneficiary:Patient.name=Lila
```
---
#  Other Information
## TANF Terms
* **Tribal Member**: An individual who is recognized as belonging to a Native American Tribe by fulfilling the criteria of tribal membership, such as lineage or participation in tribal activities.
* **Family**: A group of two or more people related by birth, marriage, or adoption and residing together.
* **Household**: All the people who occupy a housing unit regardless of relation.
* **Family Member**: An individual who is related by birth, marriage, or adoption to a member of the family.
* **Household Member**: An individual who resides in the same housing unit, regardless of whether they are related to the primary resident or not.
* **Administrative Region**: A designated area within a state or tribal land in which specific administrative, social, or welfare services are provided.
* **Eligible Tribal Programs**: Specific programs or services available to members of a tribe based on their eligibility criteria.
* **Poverty Line**: The minimum level of income deemed adequate in a particular country or region. It is usually determined by the federal government and varies based on household size.
* **Child Deduction**: A reduction in taxable income for each dependent child. The deduction amount might vary depending on the age and specific needs of the child.
* **Standard Deduction**: A flat amount that reduces the income that's subject to tax.
* **Earnings Deduction**: A portion of an individual's earnings that is not subject to taxation, allowing for a portion of earned income to be deducted from the overall income calculation.
* **Assets**: Tangible and intangible items of value owned by an individual or family. Also, resources that could be available to the household to purchase food, such as amounts in bank accounts, count as assets. Items that are not accessible, such as the household’s home, personal property, and retirement savings, do not count. Most automobiles do not count. States have the option to relax the asset limits.    
---
```
#### Query 6: Check if Lila's Household Meets the Eligibility Requirements
FHIR Query:  
GET /Observation?subject:Group.name=JohnHousehold&code=income,assets

#### Query 7: Get all Relevant Tribal Programs
FHIR Query:  
GET /CarePlan?context:Group.name=JohnHousehold&category=program
```
---
##  TANF Tribal Eligibility Rules:
The Temporary Assistance for Needy Families (TANF) is a U.S. federal assistance program. While the program is federally funded, each state administers its own TANF program, establishes its own eligibility criteria, and determines the type and amount of assistance payments.

**As a result, the specific requirements can vary from state to state.**  However, there are general eligibility requirements that apply across states.  Tribal TANF is a version of the federal TANF program that allows American Indian and Alaskan Native tribes to run their own TANF programs to best serve their communities' unique needs.

**The requirements and benefits for Tribal TANF can differ from regular TANF programs because tribes can set their own guidelines.**

* **Income Limits:**
  * Applicants must have a low or very low income.
  * Each state has its own set income thresholds based on family size.
  * Both earned (like wages) and unearned (like unemployment benefits) income are considered.
* **Asset Limits:** Some states set asset limits, such as the value of vehicles, bank account balances, or properties, excluding the applicant's primary home.
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
* **Social Security Number: ** Applicants are required to provide or apply for a Social Security Number (SSN) for each member of the family seeking assistance.
* **Immunization Requirements:** Some states require that children be immunized to be eligible.
* **School Attendance:** School-age children in the family must be attending school, and states can require teens without a high school diploma or GED to attend training or education as a condition of receiving TANF.
* **Drug Testing:** Some states require applicants to undergo drug testing.
* **Residency:** Applicants must be residents of the state where they are applying.

_Again, it's crucial to understand that specific eligibility criteria and requirements vary significantly from each state or tribe.  Those interested in TANF should check their state's guidelines or consult with a local/tribal social services office._
### Example for Determining Eligibility Amount:
1. **Determine Gross Income:** Calculate the total annual gross income of the household.
2. **Apply Deductions:** Subtract the standard deduction, child deduction, and earnings deduction from the gross income to get the net income.
3. **Compare with the Poverty Line:** Compare the net income with the poverty line for the household size. If the net income is below the poverty line, move to the next step.
4. **Check Assets:** Calculate the total value of the assets. If they're below the designated limit, move to the next step.
5. **Consider Other Criteria:** Ensure the household meets the other criteria, such as residency, tribal membership, and age requirements.
6. **Determine Benefit Amount:** Based on the household size, net income, and other considerations, determine the TANF benefit amount the family is eligible for.

By following these steps, TANF caseworkers can efficiently determine the eligibility and benefit amount for each applicant.

---
```
### Query for Determining Eligibility for Lila's Household (JohnHousehold)

#### Step 1: Verify Citizenship or Eligible Non-Citizen Status
GET /Observation?subject:Group.name=JohnHousehold&code=citizenshipStatus

#### Step 2: Confirm Age and Family Members (children under 18)
GET /Patient?name=John&age=lt18

#### Step 3: Check Income Limits
GET /Observation?subject:Group.name=JohnHousehold&code=annualIncome

#### Step 4: Verify Asset Limits
GET /Observation?subject:Group.name=JohnHousehold&code=totalAssets

#### Step 5: Confirm Work Requirements
GET /Observation?subject:Patient.name=Lila&code=workStatus

#### Step 6: Check Time Limits for TANF
GET /Observation?subject:Group.name=JohnHousehold&code=TANFMonths

#### Step 7: Validate Social Security Numbers
GET /Observation?subject:Group.name=JohnHousehold&code=SSN

#### Step 8: Confirm Immunization Requirements
GET /Observation?subject:Patient.name=Nayeli,Takoda&code=immunizationStatus

#### Step 9: Validate School Attendance
GET /Observation?subject:Patient.name=Nayeli,Takoda&code=schoolAttendance

#### Step 10: Conduct Drug Testing (if required)
GET /Observation?subject:Patient.name=Lila&code=drugTestResult

#### Step 11: Verify Residency in the Administrative Region
GET /Address?subject:Group.name=JohnHousehold&state=<YourState>&region=<YourRegion>

```
---
![Tribal TANF](tanfUC2-1.jpg)

### Example of Person Resource Data Model
![Example of Person Resource Data Model](tanfUC2-2.jpg)

### Example for Tribal TANF Person Profile Data Model
```
1. `ID` (1..1)
2. `Name` (1..1)
3. `TribalStatus` (1..1)
4. `Assets` (0..)
5. `Income` (0..)
6. `FamilyMembers` (0..)
7. `HouseholdMembers` (0..)
8. `TANFApplicationStatus` (0..1)
9. `TANFBenefits` (0..)
10. `TribalPrograms` (0..)
11. `WorkRequirements` (0..)
12. `CommunityInvolvements` (0..)
```
### Current State Query Examples Demonstrating Complexity:
The goal here is to highlight how incredibly complex the data models can get, supporting the argument for an upgraded "Person".

---
```
### Hypothetical FHIR Queries for TANF
#### Query 1: Identifying Potential TANF Applicants (A Multi-layered Approach)
http
GET [base]/Group?characteristic-value=TANF_Potential&characteristic-age=gt18,lt65
&member.gender=female&member.condition=single-parent,unemployed
&member.legal-status=resident&member.financial-status=low-income
&member.education=less-than-highschool
&member.relationship=mother,sibling,guardian
&member.address-state=NY,CA,MA
&sort=member.lastname&_include:iterate=Group:member&count=100&_summary=count&_total=accurate
```
---
In this behemoth of a query, we are searching for a group of potential TANF applicants. We filter them by:
- Age between 18 and 65
- Gender as female
- Conditions such as being a single parent and unemployed
- Legal status as a resident
- Low financial status
- Education level less than high school
- Specific relationships like being a mother, sibling, or guardian
- Living in specific states (NY, CA, MA)
---
```
#### Query 2: Fetching Complex Social and Health Indicators for Identified Potential Applicants
http
GET [base]/Observation?subject=[IDs_from_Previous_Query]
&code=smoking-status,alcohol-use,drug-use,bmi,employment-status,child-care-status,school-enrollment
&date=gt2019-01-01,lt2023-12-31
&body-site=head,chest,arm
&status=final,amended&category=social-history,vital-signs
&value-quantity=gt5,lt500
&value-string=positive,negative,unknown
&performer=[List_of_Social_Workers]
&_sort=date&_include:iterate=Observation:subject&count=500&_summary=count&_total=accurate
```
---
Here we go complex, pulling Observations that are social and health indicators for the potential TANF applicants. The filter layers include:
- Multiple types of codes representing different observations
- Date ranges
- Different body sites
- Status of the observations
- Categories like social history and vital signs
- Quantity values and string values
- Specific performers like social workers involved in data collection

## Arguments for an Upgraded "Person" Resource
1. Extreme Complexity: These examples show how quickly complexity can spiral, creating a maintenance nightmare and risking inconsistencies.
2. Data Overload: Fetching, managing, and reconciling data from so many different resources and with so many filters is nearly unmanageable.
3. Context Sensitivity: Current FHIR models aren't specifically designed for social service data, and these complex queries are a workaround at best.
By emphasizing how far we have to stretch current capabilities to meet the needs of social services like TANF, we make a strong case for upgrading the "Person" resource to handle a broader and more nuanced set of data points efficiently.

Another thought experiment that pushes the conceptual limits of FHIR to the extreme. Note that this query is purely hypothetical and meant to illustrate the dizzying complexity that could be required for certain use-cases, thereby making a strong argument for an enhanced "Person" resource.

---
```
http
GET [base]/Group?characteristic-value=TANF_Candidates&
characteristic-age=gt18,lt65&
member.gender=female,male,non-binary&
member.condition=single-parent,unemployed,underemployed,homeless,substance-abuse,domestic-abuse&
member.legal-status=resident,immigrant,asylum-seeker&
member.financial-status=low-income,very-low-income,no-income&
member.education=less-than-highschool,highschool,GED,partial-college&
member.relationship=mother,father,sibling,guardian,spouse,ex-spouse,partner,child&
member.address-state=NY,CA,MA,TX,FL,WA,OR,IL&
member.address-city=NYC,LA,Chicago,Miami,Seattle&
member.voting-record=active,inactive,never&
member.criminal-record=none,minor,major&
sort=member.lastname,member.firstname&_include:iterate=Group:member,Group:manager&count=500&_summary=count&_total=accurate
```
---
In this query, we're pulling all the stops:
- Age Filtering: Both under 65 and over 18.
- Gender: Includes all gender identities.
- Multiple Conditions: Ranges from unemployment status to domestic abuse.
- Legal Status: Includes residents, immigrants, and asylum-seekers.
- Financial Status: Goes from low to no income.
- Education: Everything from less than high school to some college.
- Relationships: All sorts of familial and romantic relationships.
- Geographical Filters: Both state and city.
- Voting Record: Political engagement levels.
- Criminal Record: Types of past criminal activities.
- Sorting: Sorted by last and first names.
- Includes: Iteratively include both members and managers of the group.
- Counts and Summaries: Just to add another layer of complexity.

This large query is designed to not just find potential TANF applicants, but almost to generate a sociopolitical profile for each applicant, gauging the complexity of their situation in multifaceted ways. 

By showing how far we have to stretch even our imaginations to cram all the desired parameters into a single query, we highlight the inadequacies of the current state of FHIR for handling such nuanced and multidimensional use-cases—making an unimpeachable argument for a more robust "Person" resource.
