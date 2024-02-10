---
title: API Documentation
subtitle: Spring Boot Project - Social Media for developers
author: Random students
date: 2024-02-10
---

# APIs list

*Note:* Some API requests include authorization header to identify logged-in user.

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
    - `DELETE /api/reactions/{reactionId}`: Remove a reaction from a post as logged-in user. (Requires authorization
      header)

7. **Messaging**
    - `POST /api/messages`: Send a message as logged-in user. (Requires authorization header)
    - `GET /api/messages`: Retrieve messages as logged-in user. (Requires authorization header)
    - `PUT /api/messages/{messageId}`: Edit a message by the logged-in user. (Requires authorization header)
    - `DELETE /api/messages/{messageId}`: Delete a message by the logged-in user or for the logged-in user. (Requires
      authorization header)

8. **Notification**
    - `GET /api/notifications`: Retrieve notifications for the logged-in user. (Requires authorization header)
    - `DELETE /api/notifications/{notificationId}`: Delete a notification for the logged-in user. (Requires
      authorization header)

9. **Follow**
    - `POST /api/follows/{userId}`: Follow a user as logged-in user. (Requires authorization header)
    - `DELETE /api/follows/{userId}`: Unfollow a user as logged-in user. (Requires authorization header)
