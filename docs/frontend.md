# Frontend Implementation Details

## Project Structure

The frontend project is structured following the principles of component-based architecture. Each feature or UI element is encapsulated within its own directory containing all relevant files.

```plaintext
src/
├── components/
│   ├── Auth/
│   │   ├── SignUpForm.js
│   │   └── SignInForm.js
│   ├── UserProfile/
│   │   ├── Profile.js
│   │   ├── EditProfileForm.js
│   │   └── DeleteAccountButton.js
│   ├── Post/
│   │   ├── PostList.js
│   │   ├── CreatePostForm.js
│   │   ├── EditPostForm.js
│   │   ├── DeletePostButton.js
│   │   └── PostDetail.js
│   ├── Comment/
│   │   ├── CommentList.js
│   │   ├── CreateCommentForm.js
│   │   ├── EditCommentForm.js
│   │   └── DeleteCommentButton.js
│   ├── Search/
│   │   └── SearchBar.js
│   ├── Reaction/
│   │   ├── ReactionButton.js
│   │   └── DeleteReactionButton.js
│   ├── Messaging/
│   │   ├── MessageList.js
│   │   ├── SendMessageForm.js
│   │   ├── EditMessageForm.js
│   │   └── DeleteMessageButton.js
│   ├── Notification/
│   │   ├── NotificationList.js
│   │   └── DeleteNotificationButton.js
│   └── Follow/
│       ├── FollowButton.js
│       └── UnfollowButton.js
├── services/
│   ├── AuthService.js
│   ├── UserService.js
│   ├── PostService.js
│   ├── CommentService.js
│   ├── SearchService.js
│   ├── ReactionService.js
│   ├── MessagingService.js
│   ├── NotificationService.js
│   └── FollowService.js
└── App.js
```

## Dependencies

The project utilizes several dependencies including:

- `axios` for making HTTP requests to the backend APIs.
- `react-router-dom` for client-side routing.
- `formik` and `yup` for form management and validation.
- `react-icons` for iconography.
- Other dependencies for styling and UI components.

## Coding Style and Conventions

The codebase follows the Airbnb JavaScript style guide with ESLint and Prettier integration for consistent code formatting and linting. It also adheres to the BEM (Block Element Modifier) naming convention for CSS classes.

## Component Documentation

### Auth Components

- **SignUpForm.js**: Handles user registration. Corresponds to `POST /api/signup`.
  - Props: None
  - Events: onSubmit
- **SignInForm.js**: Handles user login and token generation. Corresponds to `POST /api/signin`.
  - Props: None
  - Events: onSubmit

### UserProfile Components

- **Profile.js**: Displays a user's profile and their posts. Corresponds to `GET /api/users/{userId}`.
  - Props: userId
- **EditProfileForm.js**: Allows the logged-in user to edit their profile. Corresponds to `PUT /api/users`.
  - Props: None
  - Events: onSubmit
- **DeleteAccountButton.js**: Allows the logged-in user to delete their account. Corresponds to `DELETE /api/users`.
  - Props: None
  - Events: onClick

### Post Components

- **PostList.js**: Renders a list of posts.
  - Props: None
- **CreatePostForm.js**: Allows the logged-in user to create a new post. Corresponds to `POST /api/posts`.
  - Props: None
  - Events: onSubmit
- **PostDetail.js**: Displays a single post and its comments. Corresponds to `GET /api/posts/{postId}`.
  - Props: postId

### Comment Components

- **CommentList.js**: Renders a list of comments for a post.
  - Props: postId
- **CreateCommentForm.js**: Allows the logged-in user to comment on a post. Corresponds to `POST /api/comments`.
  - Props: postId
  - Events: onSubmit
- **EditCommentForm.js**: Allows the logged-in user to edit their comment. Corresponds to `PUT /api/comments/{commentId}`.
  - Props: commentId
  - Events: onSubmit

### Search Component

- **SearchBar.js**: Handles searching for users and posts. Corresponds to `GET /api/search?query={query}`.
  - Props: None
  - Events: onChange, onSubmit

### Reaction Component

- **ReactionButton.js**: Allows the logged-in user to react to a post. Corresponds to `POST /api/reactions`.
  - Props: postId
  - Events: onClick

### Messaging Components

- **MessageList.js**: Renders a list of messages for the logged-in user. Corresponds to `GET /api/messages`.
  - Props: None
- **SendMessageForm.js**: Allows the logged-in user to send a message. Corresponds to `POST /api/messages`.
  - Props: receiverId
  - Events: onSubmit
- **EditMessageForm.js**: Allows the logged-in user to edit their message. Corresponds to `PUT /api/messages/{messageId}`.
  - Props: messageId
  - Events: onSubmit

### Notification Component

- **NotificationList.js**: Renders a list of notifications for the logged-in user. Corresponds to `GET /api/notifications`.
  - Props: None

### Follow Component

- **FollowButton.js**: Allows the logged-in user to follow or unfollow a user. Corresponds to `POST /api/follows/{userId}` and `DELETE /api/follows/{userId}`.
  - Props: userId
  - Events: onClick

## Design System

The project utilizes a custom design system for consistent UI elements including colors, typography, spacing, and layout. Responsive design principles are applied to ensure compatibility across various devices and screen sizes.

## Accessibility and Performance

Accessibility features such as semantic markup, ARIA attributes, keyboard navigation, and focus management are implemented to ensure a smooth experience for all users. Performance optimizations include lazy loading of components and data, as well as caching strategies for improved load times.
