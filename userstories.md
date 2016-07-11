# User Story Breakdown


### User Story 1
Nouns: Person, Bike, Docking Station

Verbs: Use, Release

### User Story 2
Nouns: Person, Bike

Verbs: Use, See

### Functional Representation

| Objects        |  Messages      |
| -------------  | :-------------:|
| Person         |  				 |
| Bike	         |  working?     |
| DockingStation|  release_bike     |


### Object Message Communication i.e. DOMAIN MODEL

* Bike <-- working? --> true/false
* Docking Station <-- release_a_bike --> A bike

### User Story 3
As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

Nouns: person, a bike, docking station
Verbs: dock bike

### User Story 4
As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

Nouns: person, docking station, bike
Verbs: decision to use, see what is docked

### Functional Representation

| Objects              |  Messages      |
| -------------------  | :-------------:|
| Person                |             |
| Bike	               |     dock |
| DockingStation       |              |


### Object Message Communication

bike <-----     dock   --->   DockingStation

### User Story 5
As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

| Objects | Messages |
|  --------|---------|
|   maintainer|       |
|docking station| full? |
|bike     |       |

### Object Message Communication

bike <----- if capacity >= 20 then full -------> docking station

### User Story 6

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

### User Story 7

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

### User Story 8

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).
