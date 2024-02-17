### Activity Diagrams

#### Use Case UC-1: Sign Up

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

#### Use Case UC-2: Sign In

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

#### Use Case UC-3: View Profile

```plantuml
@startuml
|User|
start
:Navigate to profile page;
|System|
if (Profile retrieved successfully?) then (yes)
  :Retrieve and display user's profile information;
  stop
else (no)
  :Error: Issue retrieving profile;
  stop
endif
@enduml
```

#### Use Case UC-4: Create Post

```plantuml
@startuml
|User|
start
:Create post;
|System|
if (Post content provided?) then (yes)
  :Save post and display it;
  stop
else (no)
  :Error: No post content;
  stop
endif
@enduml
```

#### Use Case UC-5: Search

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

#### Use Case UC-6: View Notifications

```plantuml
@startuml
|User|
start
:Navigate to notifications;
|System|
if (Notifications retrieved successfully?) then (yes)
  :Retrieve and display notifications;
  stop
else (no)
  :Error: Issue retrieving notifications;
  stop
endif
@enduml

```

#### Use Case UC-7: Follow User

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

#### Use Case UC-8: Unfollow User

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

#### Use Case UC-9: Update Profile

```plantuml
@startuml
|User|
start
:Navigate to profile editing page;
:Make changes to profile information;
:Save changes;
|System|
if (Changes saved successfully?) then (yes)
  :Update user's profile;
  :Display success message;
  stop
else (no)
  :Error: Issue saving changes;
  stop
endif
@enduml

```

#### Use Case UC-10: View Post

```plantuml
@startuml
|User|
start
:Navigate to post;
|System|
if (Post retrieved successfully?) then (yes)
  :Retrieve and display post;
  stop
else (no)
  :Error: Issue retrieving post;
  stop
endif
@enduml

```

#### Use Case UC-11: Edit Post

```plantuml
@startuml
|User|
start
:Navigate to the post to edit;
:Click "Edit";
:Make changes;
:Save changes;
|System|
if (Changes saved successfully?) then (yes)
  :Update post;
  :Display success message;
  stop
else (no)
  :Error: Issue saving changes;
  stop
endif
@enduml

```

#### Use Case UC-12: Delete Post

```plantuml
@startuml
|User|
start
:Navigate to the post to delete;
:Click "Delete";
:Confirm deletion;
|System|
if (Post is deleted successfully?) then (yes)
  :Remove post;
  :Display success message;
  stop
else (no)
  :Error: Issue deleting post;
  stop
endif
@enduml

```

#### Use Case UC-13: Comment on Post

```plantuml
@startuml
|User|
start
:Navigate to the post to comment on;
:Enter comment;
:Submit comment;
|System|
if (Comment is submitted successfully?) then (yes)
  :Add comment to post;
  :Display updated post;
  stop
else (no)
  :Error: Issue submitting comment;
  stop
endif
@enduml

```

#### Use Case UC-14: Edit Comment

```plantuml
@startuml
|User|
start
:Navigate to the post containing the comment to edit;
:Select comment;
:Click "Edit";
:Make changes;
:Save changes;
|System|
if (Changes are saved successfully?) then (yes)
  :Update comment;
  :Display success message;
  stop
else (no)
  :Error: Issue saving changes;
  stop
endif
@enduml

```

#### Use Case UC-15: Delete Comment

```plantuml
@startuml
|User|
start
:Navigate to the post containing the comment to delete;
:Select comment;
:Click "Delete";
:Confirm deletion;
|System|
if (Comment is deleted successfully?) then (yes)
  :Remove comment from post;
  :Display success message;
  stop
else (no)
  :Error: Issue deleting comment;
  stop
endif
@enduml

```

#### Use Case UC-16: React to Post

```plantuml
@startuml
|User|
start
:Navigate to the post to react to;
:Select reaction;
:Submit reaction;
|System|
if (Reaction is submitted successfully?) then (yes)
  :Add reaction to post;
  :Update post with reaction;
  stop
else (no)
  :Error: Issue submitting reaction;
  stop
endif
@enduml

```

#### Use Case UC-17: Remove Reaction

```plantuml
@startuml
|User|
start
:Navigate to the post containing their reaction;
:Click reaction button to remove;
|System|
if (Reaction is removed successfully?) then (yes)
  :Remove reaction from post;
  :Update post without removed reaction;
  stop
else (no)
  :Error: Issue removing reaction;
  stop
endif
@enduml

```

#### Use Case UC-18: Send Message

```plantuml
@startuml
|User|
start
:Navigate to messaging section or user's profile;
:Select recipient;
:Compose message;
:Click "Send";
|System|
if (Message is sent successfully?) then (yes)
  :Send message to recipient;
  :Display success message;
  stop
else (no)
  :Error: Issue sending message;
  stop
endif
@enduml

```

#### Use Case UC-19: View Messages

```plantuml
@startuml
|User|
start
:Navigate to messaging section;
|System|
:System retrieves and displays user's messages;
if (Messages are retrieved successfully?) then (yes)
  :Display messages;
  stop
else (no)
  :Error: Issue retrieving messages;
  stop
endif
@enduml

```

#### Use Case UC-20: Edit Message

```plantuml
@startuml
|User|
start
:Navigate to conversation containing message to edit;
:Select message;
:Click "Edit";
:Make changes;
:Save changes;
|System|
if (Changes are saved successfully?) then (yes)
  :Update message;
  :Display success message;
  stop
else (no)
  :Error: Issue saving changes;
  stop
endif
@enduml

```

#### Use Case UC-21: Delete Message

```plantuml
@startuml
|User|
start
:Navigate to conversation containing message to delete;
:Select message;
:Confirm deletion;
|System|
if (Message is deleted successfully?) then (yes)
  :Remove message from conversation;
  :Display success message;
  stop
else (no)
  :Error: Issue deleting message;
  stop
endif
@enduml

```

#### Use Case UC-22: Delete Notification

```plantuml
@startuml
|User|
start
:Navigate to notification list;
:Select notification to delete;
:Confirm deletion;
|System|
if (Notification is deleted successfully?) then (yes)
  :Remove notification from list;
  :Display success message;
  stop
else (no)
  :Error: Issue deleting notification;
  stop
endif
@enduml

```
