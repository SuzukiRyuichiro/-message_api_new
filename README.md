# Welcome to Scooter's message API
This API is a very simple API for messaging among multiple users

## How to use
### How to read the messages
<b>GET `https://scooter-messages.herokuapp.com/api/v1/channels/[CHANNEL_NAME]/messages`</b>
<br>This would return all the messages in that channel. If the channel name is invalid (do not exist), it would return an error message.</br>
<br>↓example response↓</br>
![successful response](./screenshots/get.jpg)

<br>↓example response of an invalid request↓</br>
![error response](./screenshots/error.jpg)

### How to send a message
<b>POST `https://scooter-messages.herokuapp.com/api/v1/channels/[CHANNEL_NAME]/messages`</b>
<br>Attach a body that contains both a "content" and an "author". If either of them are blank, it would return an error message</br>
<br>↓refer to the example here in Postman↓</br>
![example from postman](./screenshots/postman_post.jpg)
