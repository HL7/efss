### Logical Model for Social Services (EFSS)

The logical model based on the use cases and discussion revealed two sets of associations and relationships.
Life Set which is the set of associations describing a persons social environment at a particular time and Screening Set which is a collection of individuals who are in need of some type of service (health or social services)

Describing associations and relationships have numerous sub components need to be complete.  Seemingly simple associations can become convoluted quickly leading to incomplete information exchanges.  The approach taken here was to be semantically clear on associations, simplifying structure and limiting overloading concepts.

These associations are front and center when working and evaluating social service cases.

An example of a life set for a husband and father will include associations describing the spousal relationship, father-daughter relationship, co-habitation relationship.  

In further looking into the father-daughter,  we are explicit in the association - one is the familiar association of biological daughter and one where the daughter no longer lives with the parents.  Attempting to combine these into one structure became quickly convoluted.

The same conclusion was made on creating a set of individuals in need of service, Screening Set.  The membership of the set is multi dimensional to meet terms and eligibility requirements.

#### Life Set

<figure>
{%include efssls.svg%}
<figcaption><b>Figure 1: Logical Model for Enhancing FHIR for Life Set</b></figcaption>
</figure>
<br clear="all" />

A life set is made up of a collection of associations to individuals, organizations, and legal authorities
#### Individual
An example of association of to an individual is co-habitation 
#### Organization
An example of association to an organization is membership in ???
#### Legal Jurisdiction
An example of association to a legal jurisdiction is a persons citizen ship status

#### Association
The association provides the means to describe a discreet association completely and unambiguously

##### Type
Co-habitation for instance

##### Effective Time
When the association was enabled

##### Effective Timing 
This describes a subset of timing when the association is in effect, for instance child cohabitation under a divorce agreement

##### Status
General purpose status 

##### Verification
Additional information about the association to document the validity of the association, such as use of passport for confirming US citizenship

##### Qualification
Qualification provides a means to annotate the association with meaningful information such as ????




#### Screening Set
<figure>
{%include efssss.svg%}
<figcaption><b>Figure 1: Logical Model for Enhancing FHIR for Screening Set</b></figcaption>
</figure>
<br clear="all" />

#### Category
An example of a category is food scarcity
#### Type
An example of a type is a specific HUD program
#### Individual
A person who is in need of the services proposed by the set
#### Membership
The type of membership, HUD household for instance

##### Effective Time
When the membership was enabled

##### Status
General purpose status 

##### Role
The particular role an indivdual is as related to the screening set, head of household for instance

##### Verification
Additional information about the membership to document the validity of the membership, such as income level


### Why Family is not enough

The concept of Family is contextual, temporal and transactional. There is little to no value to designate a set of indiviudals a **family** as the contextual - who's definition ? ; temporal - divorce, new child, etc; transactional - grouping as a family to obtain services from HUD for instance are always changing.

Life Set and Screening Set provide the means to manage the process of obtaining social services for 1 to many individuals.

Life Set provides a view of a persons associations which depict their state in life.  Who is there biological relations?  Are they part of a tribe? Who are they living with ? Legal associations ?

Screening Set groups together a set of individuals for the purpose of obtaining services.  This group is created for specific context and need.


#### More on Family

The semantics of Family are diverse and incomplete.  If you ask anyone what a family is they will have an answer but those answers rarley but mostly overlap.  Below is more on why not just create a family has complexities and is incomplete when working with social services
#### Family 

A family is a group of individuals who are related by blood, marriage, adoption, or a shared sense of bond. Families typically form the basic social unit in human societies and serve as a primary context for the upbringing and socialization of children. The structure and dynamics of families can vary widely across cultures and societies, but they often involve emotional connections, mutual support, and shared responsibilities among its members. Families can include parents, children, siblings, grandparents, aunts, uncles, and other relatives, and they play a crucial role in shaping the values, beliefs, and identity of individuals. Additionally, the concept of family can extend beyond biological or legal relationships to include chosen or adopted family members and close-knit social groups.

#### Nuclear Family

A nuclear family, also known as an elementary or conjugal family, is a family unit consisting of two parents (a mother and a father) and their biological or adopted children living together in a single household. This family structure is often contrasted with extended families, which may include additional relatives such as grandparents, aunts, uncles, and cousins living together or in close proximity. The nuclear family is considered a relatively small and self-contained social unit, and it has been a prevalent family structure in many Western societies. However, family structures can vary across cultures and societies, and there is no universally dominant family model.

#### HUD Family Perspective

The U.S. Department of Housing and Urban Development (HUD) defines a family in the context of housing programs. According to HUD, a family is defined as:

"One or more individuals who are related by blood, marriage, adoption, or who are otherwise defined as a family in accordance with the regulations of the applicable HUD program for which assistance is provided. The term includes a single person who is not an elderly person, near-elderly person, or displaced person, or a person with disabilities, but who is determined to be a family under the program regulations by the recipient or subrecipient."

**It's important to note that the specific definition may vary depending on the particular housing program administered by HUD. This definition is from a broad perspective and is used for various HUD programs to determine eligibility for housing assistance.**

#### HUD Programs

 The U.S. Department of Housing and Urban Development (HUD) administers a variety of programs aimed at providing housing assistance and promoting affordable housing. Some of the key HUD programs include:

**Public Housing:** Provides affordable rental housing for eligible low-income families, the elderly, and persons with disabilities. Public housing comes in the form of developments owned and operated by public housing agencies (PHAs).

Section 8 Housing Choice Voucher Program: Assists eligible low-income individuals and families in renting safe, decent, and affordable housing in the private market. Participants receive a voucher that subsidizes their rent, with the tenant typically paying 30% of their income toward rent.

Community Development Block Grant (CDBG): Provides communities with resources for a wide range of community development activities, including affordable housing, infrastructure development, and economic development.

HOME Investment Partnerships Program: Offers block grants to state and local governments to fund affordable housing projects, including rental housing, homebuyer assistance, and rehabilitation of existing housing.

Housing Opportunities for Persons with AIDS (HOPWA): Provides assistance to communities for the housing needs of low-income persons living with HIV/AIDS and their families.

Federal Housing Administration (FHA): Insures mortgages to help individuals, particularly first-time homebuyers, obtain financing for homeownership.

Veterans Affairs Supportive Housing (VASH): Combines HUD housing vouchers with VA supportive services to help homeless veterans and their families find and sustain permanent housing.

Healthy Homes and Lead Hazard Control Programs: Aimed at creating and maintaining safe and healthy housing, addressing issues such as lead-based paint hazards.

Emergency Solutions Grants (ESG): Provides funding to address the needs of individuals and families who are homeless or at risk of homelessness.

Choice Neighborhoods Initiative: Focuses on the transformation of distressed neighborhoods by investing in housing, schools, and other community assets.

These programs play a crucial role in addressing various housing needs and challenges, promoting fair housing practices, and improving the overall quality of housing in the United States. Keep in mind that the availability and details of these programs may change over time, and individuals interested in these programs should check with local HUD offices or authorized agencies for the most up-to-date information.


####  Section 8 Housing Choice Voucher Program 
The Section 8 Housing Choice Voucher Program is designed to assist low-income individuals and families in obtaining safe and decent housing in the private market. The program is administered by local public housing agencies (PHAs) and is funded by the U.S. Department of Housing and Urban Development (HUD). Here are some key points about families eligible for the Section 8 Housing Choice Voucher Program:

Low-Income Requirement: The program is targeted at households with incomes that are below a certain threshold, typically set at 50% of the median income for the area. However, preferences may be given to households with even lower incomes.

Family Composition: A family, as defined by the program, can include individuals, families with children, elderly households, and persons with disabilities. **The family composition is determined by the members who will be living together in the assisted unit.**

Citizenship or Eligible Immigration Status: Families must include at least one U.S. citizen or eligible non-citizen. Non-citizens must have eligible immigration status.

Application and Waiting List: Interested families must apply for the program through their local PHA. Due to high demand and limited funding, there is often a waiting list. The waiting time can vary, and families are selected from the waiting list based on factors such as preferences and priorities set by the PHA.

Voucher Use: Once a family receives a housing choice voucher, they can use it to rent a privately owned housing unit of their choice, provided it meets the program's requirements for safety and affordability. The voucher subsidizes a portion of the rent, and the family typically pays 30% of their adjusted income toward rent.

Annual Reexamination: The family's eligibility and the amount of assistance are reassessed annually by the PHA. Changes in income, family composition, or other circumstances may affect the level of assistance.

It's important to note that specific eligibility criteria and program details may vary by locality, as PHAs have some flexibility in administering the program within the federal guidelines. Families interested in the Section 8 Housing Choice Voucher Program should contact their local PHA for the most accurate and up-to-date information based on their specific area.
