#### Use Case UC-8: Unfollow User
| ID & Name:         | UC-8: Unfollow User                                                                                                                             |
| ------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| Primary Actor:     | User                                                                                                                                            |
| Description:       | User unfollows another user, stopping updates on their activity.                                                                                |
| Trigger:           | User decides to unfollow another user.                                                                                                          |
| Pre-conditions:    | User is logged into their account.                                                                                                              |
| Post-conditions:   | User successfully unfollows the selected user.                                                                                                  |
| Normal Flow:       | 1. User navigates to the profile of the user they want to unfollow. <br> 2. User clicks on the "Unfollow" button.                               |
| Alternative Flows: | None.                                                                                                                                           |
| Exceptions:        | **Exception #1:** System encounters an error while processing the unfollow action. <br> 1. User receives an error message indicating the issue. |
| Priority:          | Medium                                                                                                                                          |

```plantuml
@startuml
|User|
start
:Navigate to user's profile;
:Click "Unfollow" button;
|System|
if (Unfollow action processed successfully?) then (yes)
  :User successfully unfollows the selected user;
  stop
else (no)
  :Error: Issue processing unfollow action;
  stop
endif
@enduml

```
