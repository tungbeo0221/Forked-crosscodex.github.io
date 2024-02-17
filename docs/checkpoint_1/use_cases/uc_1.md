#### Use Case UC-1: Sign Up
| ID & Name:         | UC-1: Sign Up                                                                                                                                                                                                                                                                                                               |
| ------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Primary Actor:     | User                                                                                                                                                                                                                                                                                                                        |
| Description:       | User registers for a new account.                                                                                                                                                                                                                                                                                           |
| Trigger:           | User decides to create a new account.                                                                                                                                                                                                                                                                                       |
| Pre-conditions:    | None.                                                                                                                                                                                                                                                                                                                       |
| Post-conditions:   | User successfully registers for an account.                                                                                                                                                                                                                                                                                 |
| Normal Flow:       | 1. User provides required registration information. <br> 2. User clicks on the "Sign Up" button. <br> 3. System creates a new account for the user. <br> 4. System displays a success message.                                                                                                                              |
| Alternative Flows: | None.                                                                                                                                                                                                                                                                                                                       |
| Exceptions:        | **Exception #1:** User provides incomplete or invalid information. <br> 1. User receives an error message prompting to correct the information. <br> **Exception #2:** User tries to sign up with an existing email or username. <br> 1. User receives an error message indicating the email or username is already in use. |
| Priority:          | High                                                                                                                                                                                                                                                                                                                        |

```plantuml
@startuml
|User|
start
:Provide registration info;
:Click "Sign Up";
|System|
if (Info valid?) then (yes)
  if (Existing user?) then (yes)
    :Error: Existing email/username;
    stop
  else (no)
    :Create account;
    :Display success message;
    stop
  endif
else (no)
  :Error: Invalid information;
  stop
endif
@enduml
```
