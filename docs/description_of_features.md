---
title: Description of Features
subtitle: Preliminary feature documentation
author: Students
date: 2024-02-10
---

## 1. Authentication

The authentication feature enables users to securely sign up and sign in to the social media platform. Frontend components would include user registration forms for signing up (`/signup`) and login forms (`/signin`). Upon successful authentication, users receive an authorization token.

## 2. User Management

Users can manage their profiles seamlessly through the frontend interface. They can view profile information and posts on their profile page (`/profile/{userId}`). Additionally, they can update their profile information through an editable profile form (`/profile/edit`) and delete their account with a delete account option (`/profile/delete`).

## 3. Post Management

This feature empowers users to create, view, edit, and delete posts directly from the frontend. Users can compose new posts using a post creation form (`/post/create`) and view posts and their comments on the feed or post detail page (`/feed`, `/post/{postId}`). Editing options are available through an edit post button (`/post/{postId}/edit`) and delete functionality via a delete post option (`/post/{postId}/delete`).

## 4. Commenting

Users can engage with posts by leaving comments using the frontend comment form displayed on post detail pages (`/post/{postId}`). They can also edit their comments by clicking on an edit button next to their comments and delete them using a delete option.

## 5. Search

The search feature provides users with a search bar on the frontend interface (`/search`) to discover other users and posts based on their query. Search results are displayed dynamically as users type their query.

## 6. Reaction

Users can express their reactions to posts directly from the frontend interface. Each post may have reaction buttons (like, love, laugh, etc.) allowing users to react with a single click. They can also remove their reactions by clicking on the respective reaction button again.

## 7. Messaging

Messaging functionality is seamlessly integrated into the frontend interface, allowing users to communicate with each other. Users can send messages through a messaging interface (`/messages`) where they can view their conversations, compose new messages, and delete messages.

## 8. Notification

Users receive real-time notifications about relevant activities through the frontend interface. Notifications are displayed in a notification panel (`/notifications`), providing users with updates on new followers, likes, comments, and more. Users can dismiss notifications individually or clear all notifications.

## 9. Following

Users can follow other users directly from their profiles or from search results. A follow button is displayed next to user profiles or within search results, allowing users to follow with a single click. Unfollowing can be done in a similar manner.
