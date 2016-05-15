# helpmealready

Project Overview:
This app allows users to post a picture of a problem they have and create a video chat room to get help from other users.

Technologies Used:
HTML, CSS, JavaScript, Ruby on Rails, WebRTC, PeerJS (server-https://p2ppeerjs.herokuapp.com), Postgres, Heroku

Resources:
https://bitbucket.org/webrtc/codelab, http://peerjs.com/

Installation Instructions: 
Fork and Clone repo
open project in terminal
-bundle install
-rake db:migrate
-rails s

Unsolved Problems:
Comments are currently not working as intended.**
Sometimes there would be a notification that the connection to the server would be lost. This does not affect the video chats, but it does affect the call id's distributed by the server. The user would have to refresh the page to get a new id, then quickly give the id to the other person before connection to the server is lost. 

Possible Problems:
Trolling. Lots of trolling.

Future Goals:
Add a sorting option for posts.
Implement a calendar so people are able to schedule availability.
Find a way to connect users without having to type in the caller ID.
Create a rating system where users are able to rate others for helpfulness.

Super Future Goals:
Create a reward system where users are able to offer a reward for users who help them.


User Stories:
Person A
-Person A needs help with figuring out an issue with their car so they take a picture of their problem and post it online. They don't like reading through yahoo answers, searching forums, slow customer service, or waiting for people to respond over text. Instead they are able to talk to someone and show them their problem and get immediate help.

Person B
-Person B knows a lot about a certain topic (cars). They are able to look through posts to see the different problems people and decide which ones they would be abe to help with. They can then click on a post and get taken directly to a video chat where they can talk to the poster. 