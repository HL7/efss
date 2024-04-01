### FHIR Analysis Model

This model is a representation of the of the core requirements for enhancing FHIR for Social Services leveraging the FHIR publication process.  This approach was adopted as way to express requirements in alignment with FHIR core concepts but simplify consumption.  This is meant to be transitory between the Social Services Domain Model and the FHIR artifacts themselves.


[LifeSet] is an amalgamation of the persons/groups who constitute the interactions and relationships from the perspectice of an individual.  The (associations)[Association] from the individual to the person/group are explicit in nature as to avoid confusion and structured to properly elaborate all aspects of the particular association"


[ScreeningSet] is a composition of [Membership]s in need of service(s). The focus of the Screening Set is provide an efficient construct for identifying and illustrating the individuals in the composition.  The Screen Set itself is meant to be transaction and temporal in nature.  The Screen Set would be active while the steps taken to acquire the services have been completed. Screening Set should be viewed as the trigger for acquisition process for the required services but not utilized for the acquisition workflow operations

### FHIR Analysis Model Resources
* [LifeSet]

* [ScreeningSet]

{% include markdown-link-references.md %}
