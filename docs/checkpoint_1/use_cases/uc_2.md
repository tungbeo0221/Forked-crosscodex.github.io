#### Use Case UC-2: Sign In
| ID & Name:         | UC-2: Sign In                                                                                                                                                                                                                                                                                                                 |
| ------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Primary Actor:     | User                                                                                                                                                                                                                                                                                                                          |
| Description:       | User logs into their account.                                                                                                                                                                                                                                                                                                 |
| Trigger:           | User decides to log in.                                                                                                                                                                                                                                                                                                       |
| Pre-conditions:    | User has already registered for an account.                                                                                                                                                                                                                                                                                   |
| Post-conditions:   | User successfully logs into their account.                                                                                                                                                                                                                                                                                    |
| Normal Flow:       | 1. User enters their username/email and password. <br> 2. User clicks on the "Sign In" button. <br> 3. System verifies the credentials. <br> 4. System logs the user into their account. <br> 5. System redirects the user to their profile page.                                                                             |
| Alternative Flows: | None.                                                                                                                                                                                                                                                                                                                         |
| Exceptions:        | **Exception #1:** User enters incorrect username/email or password. <br> 1. User receives an error message indicating incorrect credentials. <br> **Exception #2:** User tries to sign in with a deactivated or suspended account. <br> 1. User receives an error message indicating the account is deactivated or suspended. |
| Priority:          | High                                                                                                                                                                                                                                                                                                                          |

```plantuml
@startuml
|User|
start
:Enter credentials;
:Click "Sign In";
|System|
if (Correct credentials?) then (yes)
  if (Account active?) then (yes)
    :Log user in;
    :Redirect to profile page;
    stop
  else (no)
    :Error: Account deactivated or suspended;
    stop
  endif
else (no)
  :Error: Incorrect credentials;
  stop
endif
@enduml
```
