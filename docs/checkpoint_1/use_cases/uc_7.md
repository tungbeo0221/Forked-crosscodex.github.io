#### Use Case UC-7: Follow User
| ID & Name:         | UC-7: Follow User                                                                                                                             |
| ------------------ | --------------------------------------------------------------------------------------------------------------------------------------------- |
| Primary Actor:     | User                                                                                                                                          |
| Description:       | User follows another user to receive updates on their activity.                                                                               |
| Trigger:           | User decides to follow another user.                                                                                                          |
| Pre-conditions:    | User is logged into their account.                                                                                                            |
| Post-conditions:   | User successfully follows the selected user.                                                                                                  |
| Normal Flow:       | 1. User navigates to the profile of the user they want to follow. <br> 2. User clicks on the "Follow" button.                                 |
| Alternative Flows: | None.                                                                                                                                         |
| Exceptions:        | **Exception #1:** System encounters an error while processing the follow action. <br> 1. User receives an error message indicating the issue. |
| Priority:          | Medium                                                                                                                                        |

```plantuml
@startuml
|User|
start
:Navigate to user's profile;
:Click "Follow" button;
|System|
if (Follow action processed successfully?) then (yes)
  :User successfully follows the selected user;
  stop
else (no)
  :Error: Issue processing follow action;
  stop
endif
@enduml

```
