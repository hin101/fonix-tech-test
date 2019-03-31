# README

## Assumptions
- Each user is assigned to the first and only chatroom when they sign up
- User gets sent stats from all chatrooms
- User signs in with email and password

## Implementation Notes
- The user gets assigned to the first chatroom after they sign in. To scale this, a screen can be built where users select the chatroom they want to subscribe to.
- No validation as this is just a proof of concept
- Used devise gem for login and register functionality
- Integration test using RSpec and Capybara
- No Integration test for devise as we should not be testing a library

## Specification

We want to create a Web chat.
We'll start with a prototype which will have only one channel/room and all the
users subscribed will have access to the only available channel.
Users must be able to create an account providing a valid email address.
Once logged in users must be able to send and receive messages.
The system should send to all the users a weekly email specifying how many
messages were sent and received in the last week and the total number of
messages received since the user has sent his last message.
I.e.:
600 messages have been exchanged in the last week.
750 since your last message on the 1st of February.