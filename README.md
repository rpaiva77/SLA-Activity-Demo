# SLA-Activity-Demo
Service level agreement and activity monitoring demo using InterSystems IRIS (for Health)
This is a business oriented demo. This is not a complete business solution. It's a very simple demonstration of how you can use InterSystems IRIS for Health to derive/generate business value from your data. 
Althought it is based on hl7 messaging, it should be revised. Like any other analytics work, this is strongly coppled to the data. We are not providing any data set. It's up to the user to tune any component and adjust it to the used data set. 

Generic behavior:
This work is intended to monitor activity and control predefined service level agreement. It's done in such a away that allows time and volume control in any hl7 order-result flow. 
There is a interoperability production based on hl7 v2.4 messaging protocol. It will receive every hl7 message from any order-result flow - lets assume a lab integration. There are 2 business services intended for incoming messages - using file and tcp adapters. There is a business router and a few data transformations - these components will collect relevant data and generate a genric message and route it to a buesiness operation. This business operation will store data in a persistence layer. This persitence layer (table) will act as source for a cube. This cube will be updated in (near)real time for every new transaction (hl7 message). There are 3 dashboad representing different business metrics.

Here are few conserns/actions you should consider:
    1) Enable Analytics for the SLA namespace (System > Security Management > Web Applications > Edit Web Application). 
    2) Open and Start FoundationProduction (Interoperability > Production Configuration  - BUSINESSPKG.FoundationProduction).
    3) For a propoer classification/grouping of the ordres you'll need to populate a lookup table called OrderCategory. The lookup key for this table will be the first 9 chars of the Universal Service ID.
