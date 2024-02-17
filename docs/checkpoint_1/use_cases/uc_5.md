#### Use Case UC-5: Search
| ID & Name:         | UC-5: Search                                                                                                                                                   |
| ------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Primary Actor:     | User                                                                                                                                                           |
| Description:       | User searches for other users or posts based on specific keywords or criteria.                                                                                 |
| Trigger:           | User decides to perform a search.                                                                                                                              |
| Pre-conditions:    | User is logged into their account.                                                                                                                             |
| Post-conditions:   | Search results matching the query are displayed to the user.                                                                                                   |
| Normal Flow:       | 1. User enters keywords or criteria into the search bar. <br> 2. User submits the search query. <br> 3. System retrieves and displays relevant search results. |
| Alternative Flows: | None.                                                                                                                                                          |
| Exceptions:        | **Exception #1:** System encounters an error while retrieving search results. <br> 1. User receives an error message indicating the issue.                     |
| Priority:          | Medium                                                                                                                                                         |

```plantuml
@startuml
|User|
start
:Enter search query;
:Submit search query;
|System|
if (Search results retrieved successfully?) then (yes)
  :Display search results;
  stop
else (no)
  :Error: Issue retrieving search results;
  stop
endif
@enduml

```
