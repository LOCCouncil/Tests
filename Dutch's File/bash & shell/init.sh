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
  // Bot Owner, level 10 by default. A User ID. Should never be anything else than the bot owner's ID.
  'ownerID': '$userID',
  
  // Bot Admins, level 9 by default. Array of user ID strings.
  'developers': ['155698776512790528', '239261547959025665', '282586181856657409'],
  'admins': ['213632190557192192', '239261547959025665', '310092788630945793', '105412668122214400',],
  
  // Bot Support, level 8 by default. Array of user ID strings
  'support': ['335871787453775873', '223391425302102016', '155698776512790528'],
  'staff': ['193118227348324363', '304594274182496258', '208688963936845824', '284713468790308885', '154497072148643840', '156450671338586112'],
  
  'tester': ['233667448887312385', '314005026404171786', '454749660041707531', '273035913725214720', '315381917996548097', '431046114557296641', '193118227348324363', '284713468790308885', '315342131185057794', '368867272049033217'],
  
  'contributor': ['154497072148643840', '282586181856657409', '156450671338586112'],
  'pr': ['335871787453775873', '233667448887312385'],
  
  // Your Bot's Token. Available on https://discordapp.com/developers/applications/me
  'token': '$token',
  
  // Default per-server settings. New guilds have these settings. 
  
  // DO NOT LEAVE ANY OF THESE BLANK, AS YOU WILL NOT BE ABLE TO UPDATE THEM
  // VIA COMMANDS IN THE GUILD.
    
  'defaultSettings' : {
    'prefix': '$prefix',
    'adminPrefix': '$adminPrefix'
// other bullshit lmao
module.exports = Config" > config.js