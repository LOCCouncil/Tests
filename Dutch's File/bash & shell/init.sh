echo "Hi, welcome to the Garnet initialization script. We're going to ask you some questions to get setup."
read -sp "Token: " token
if [ $token ]
 then 
 touch config.js
else echo "Please provide a token."
fi
read -p "Your Discord User ID: " userID
read -p "Prefix: " prefix
echo "Your admin prefix is a prefix only you and your developers can use, helpful for diagnosing issues and bypassing restrictions."
read -p "Admin Prefix: " adminPrefix
echo "Thanks! Your config has been created as config.js"
echo "You can edit any additional settings here, thanks for using Garnet!"
printf "const config = {
  'ownerID': '$userID',
  
  'token': '$token',
  'defaultSettings' : {
    'prefix': '$prefix',
    'adminPrefix': '$adminPrefix'
// other bullshit lmao
module.exports = Config" > config.js