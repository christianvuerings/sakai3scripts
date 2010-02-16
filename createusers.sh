#!/bin/bash
# Create users in Sakai3

source config.sh

curl -F":name=user1" -F"email=user1@test.com" -F"firstName=user1" -F"lastName=test" -F"pwd=test" -F"pwdConfirm=test" http://localhost:$SAKAI3_PORT/system/userManager/user.create.html
curl -F":name=user2" -F"email=user2@test.com" -F"firstName=user2" -F"lastName=test" -F"pwd=test" -F"pwdConfirm=test" http://localhost:$SAKAI3_PORT/system/userManager/user.create.html
curl -F":name=user3" -F"email=user3@test.com" -F"firstName=user3" -F"lastName=test" -F"pwd=test" -F"pwdConfirm=test" http://localhost:$SAKAI3_PORT/system/userManager/user.create.html