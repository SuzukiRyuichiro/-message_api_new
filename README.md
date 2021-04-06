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
<br>If the post request is routed to a new channel name, it would automatically create a channel with the name in the route. (i.e. If a channel called <em>games</em> never existed in the database, post request to `/api/v1/channels/games/message` will create a new channel called <em>games</em>)</br>
<br>↓refer to the example here in Postman (Successful)↓</br>
![example from postman](./screenshots/postman_post.jpg)

<br>↓refer to the example here in Postman (Unsuccessful)↓</br>
![example from postman](./screenshots/post_error.jpg)

### How to see open channels
<b>GET `https://scooter-messages.herokuapp.com/api/v1/channels`</b>
<br>You can see all available channel names in the database!</br>
<br>↓example response↓</br>
![successful response](./screenshots/channel_index.jpg)
