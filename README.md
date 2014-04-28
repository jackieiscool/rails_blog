#Blog Lab

###Objective

- Add Authentication and Authorization to the Blop App
- Add Rspec tests to the Blog App

###Instructions

You have been given a very simple blog app. It has posts and comments, and anyone can create a post or comment.  For the lab you will add users, and a login system, so that we can keep track of who is writing blog posts. You will also add authorization so that we can ensure users cannot edit and delete other users posts.  

####Phase 1: Users 

Add a users model/table
  - Users will need the following fields
    - name
    - email
    - password digest
    - remember_token

Add Associations and Validations to your User Model
  - What is a user's relationship with posts and comments?
  - What validations will you need?

Add Rspec tests  
  - Make sure all of your validations are tested with rspec

####Phase 2: Sign Up  

Add functionality for a user to sign up
  - You will need a users controller for this
  - Think carefully about what routes and controller methods you will need
  - Create a Sign Up page for your user

Write a request spec to ensure your sign_up flow works
  - This should be written in your `spec/requests/user_management_spec.rb` file
  - Remember to use factories when applicable

####Phase 3: Sessions/Sign In  

Add functionality for a User to Sign in to an existing account
  - You will need a sign-in page
  - You will need sessions to keep track of who is signed in
  - You will need a sign-out button 

Add a request spec to test your sign in flow
 - This spec should go in the `spec/requests/user_management_spec.rb` file

####Phase 4: Authorization  

Add authorization to posts and comments
  - Ensure a user can only write a post if they are signed in
  - Ensure a user can old write a comment if they are signed in
  - Ensure a user can only edit a post if the post belongs to them

Add Request specs for the above authorization
  - You will probably want to test different contexts
  - Remember to use factories where applicable
  - Remember to use stub's where applicable 
    - *Hint: you'll want to stub current_user at some point*
