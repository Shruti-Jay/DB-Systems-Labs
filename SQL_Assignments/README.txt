###LAB
##ASSIGNMENT DESCRIPTION
This repository contains the SQL queries for an assignment involving tasks related to aircraft, flights, airports, and passengers. The queries cover various topics such as identifying Boeing aircraft, finding incoming flights to airports in Moscow, counting flight occurrences, and listing aircraft models with specific fare conditions. The queries were submitted as part of a group project for grading.

##SCHEMA DESCRIPTION
The main entity is a **booking**. A booking can contain multiple **passengers**, each issued a unique **ticket**. Tickets contain passenger information, but the passenger is not a separate entity, as name and ID can change over time. For simplicity, all passengers are treated as unique.

Each **ticket** includes one or more **flight segments**, which can be connecting flights or round-trip tickets. It is assumed that all tickets in a booking share the same flight segments.

Each **flight** operates between two **airports**. Flights with the same number have the same departure and destination but differ by departure date.

During **check-in**, a **boarding pass** is issued, specifying a seat number. A passenger can check in only for flights included in their ticket. The flight-seat combination must be unique to prevent duplicate boarding passes.

The number of **seats** and their distribution across classes is based on the **aircraft** model used for the flight. Each aircraft model has a single cabin configuration. The database schema does not enforce seat validation for boarding passes; this can be done using triggers or at the application level.

