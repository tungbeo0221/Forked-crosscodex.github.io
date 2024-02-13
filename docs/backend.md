# Backend Implementation Details

## Project Structure

The backend project follows the structure recommended for a Spring Boot application:

```plaintext
src/
├── main/
│   ├── java/
│   │   └── codecollide/
│   │       └── devhub/
│   │           ├── Application.java
│   │           ├── config/
│   │           │   └── WebMvcConfig.java
│   │           ├── controller/
│   │           │   ├── AuthenticationController.java
│   │           │   ├── UserController.java
│   │           │   ├── PostController.java
│   │           │   ├── CommentController.java
│   │           │   ├── SearchController.java
│   │           │   ├── ReactionController.java
│   │           │   ├── MessagingController.java
│   │           │   ├── NotificationController.java
│   │           │   └── FollowController.java
│   │           ├── model/
│   │           │   ├── User.java
│   │           │   ├── Post.java
│   │           │   ├── Comment.java
│   │           │   ├── Reaction.java
│   │           │   ├── Message.java
│   │           │   ├── Notification.java
│   │           │   └── Follow.java
│   │           ├── repository/
│   │           │   ├── UserRepository.java
│   │           │   ├── PostRepository.java
│   │           │   ├── CommentRepository.java
│   │           │   ├── ReactionRepository.java
│   │           │   ├── MessageRepository.java
│   │           │   ├── NotificationRepository.java
│   │           │   └── FollowRepository.java
│   │           ├── service/
│   │           │   ├── UserService.java
│   │           │   ├── PostService.java
│   │           │   ├── CommentService.java
│   │           │   ├── ReactionService.java
│   │           │   ├── MessageService.java
│   │           │   ├── NotificationService.java
│   │           │   └── FollowService.java
│   │           └── util/
│   │               └── JwtUtil.java
│   └── resources/
│       ├── application.properties
│       ├── data.sql
│       └── static/
│           └── ...
└── test/
    ├── java/
    │   └── codecollide/
    │       └── devhub/
    │           ├── ApplicationTests.java
    │           ├── controller/
    │           │   ├── AuthenticationControllerTest.java
    │           │   ├── UserControllerTest.java
    │           │   ├── PostControllerTest.java
    │           │   ├── CommentControllerTest.java
    │           │   ├── SearchControllerTest.java
    │           │   ├── ReactionControllerTest.java
    │           │   ├── MessagingControllerTest.java
    │           │   ├── NotificationControllerTest.java
    │           │   └── FollowControllerTest.java
    │           └── service/
    │               ├── UserServiceTest.java
    │               ├── PostServiceTest.java
    │               ├── CommentServiceTest.java
    │               ├── ReactionServiceTest.java
    │               ├── MessageServiceTest.java
    │               ├── NotificationServiceTest.java
    │               └── FollowServiceTest.java
    └── resources/
        └── ...
```

## Dependencies

The backend project relies on the following essential dependencies:

- **Spring Boot**:
  - Provides a powerful framework for building Java applications.
  - Features include dependency injection, auto-configuration, and embedded servers.
  
- **Spring MVC**:
  - Used for implementing RESTful endpoints.
  - Handles HTTP requests and responses.

- **Spring Data JPA**:
  - Simplifies database access and management.
  - Provides a repository abstraction over JPA (Java Persistence API).

- **Spring Security**:
  - Offers comprehensive security features.
  - Provides authentication, authorization, and protection against common security threats.

### Testing Dependencies

- **JUnit**:
  - A popular testing framework for Java applications.
  - Used for writing and running unit tests.

- **Spring Boot Test**:
  - Provides utilities for testing Spring Boot applications.
  - Supports testing controllers, services, and repositories.

- **Mockito**:
  - A mocking framework for simplifying the creation and verification of mock objects.
  - Used for mocking dependencies and behavior verification in tests.

## API Documentation

1. **Authentication**
    - `POST /api/signup`: Sign-up a new user.
    - `POST /api/signin`: Login a user and return an authorization token.

2. **User**
    - `GET /api/users/{userId}`: Get a user's profile and their posts.
    - `PUT /api/users`: Update the logged-in user's profile. (Requires authorization header)
    - `DELETE /api/users`: Delete the logged-in user's account. (Requires authorization header)

3. **Post**
    - `POST /api/posts`: Create a new post for logged-in user. (Requires authorization header)
    - `GET /api/posts/{postId}`: Retrieve a post and its comments.
    - `PUT /api/posts/{postId}`: Update a post by the logged-in user. (Requires authorization header)
    - `DELETE /api/posts/{postId}`: Delete a post by the logged-in user. (Requires authorization header)

4. **Comment**
    - `POST /api/comments`: Comment on a post as logged-in user. (Requires authorization header)
    - `PUT /api/comments/{commentId}`: Edit a comment by the logged-in user. (Requires authorization header)
    - `DELETE /api/comments/{commentId}`: Delete a comment by the logged-in user. (Requires authorization header)

5. **Search**
    - `GET /api/search?query={query}`: Search for users and posts.

6. **Reaction**
    - `POST /api/reactions`: React to a post as logged-in user. (Requires authorization header)
    - `DELETE /api/reactions/{reactionId}`: Remove a reaction from a post as logged-in user. (Requires authorization header)

7. **Messaging**
    - `POST /api/messages`: Send a message as logged-in user. (Requires authorization header)
    - `GET /api/messages`: Retrieve messages as logged-in user. (Requires authorization header)
    - `PUT /api/messages/{messageId}`: Edit a message by the logged-in user. (Requires authorization header)
    - `DELETE /api/messages/{messageId}`: Delete a message by the logged-in user or for the logged-in user. (Requires authorization header)

8. **Notification**
    - `GET /api/notifications`: Retrieve notifications for the logged-in user. (Requires authorization header)
    - `DELETE /api/notifications/{notificationId}`: Delete a notification for the logged-in user. (Requires authorization header)

9. **Follow**
    - `POST /api/follows/{userId}`: Follow a user as logged-in user. (Requires authorization header)
    - `DELETE /api/follows/{userId}`: Unfollow a user as logged-in user. (Requires authorization header)

## Logic and Algorithms

- Authentication logic validates user credentials during sign-in and generates JWT tokens upon successful authentication.
- Authorization logic ensures that only authorized users can perform certain actions such as updating user profiles or deleting posts.
- Search functionality utilizes database queries to retrieve relevant users and posts based on the provided query string.
- Reaction handling involves adding or removing reactions to posts and updating corresponding database entries.
- Messaging functionality manages the sending, retrieval, editing, and deletion of messages between users.
- Notification service handles the generation and retrieval of notifications for users based on their interactions within the platform.
- Follow service manages the relationship between users, allowing users to follow or unfollow each other.
