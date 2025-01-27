//in bash terminal

ssh-keygen -t ed25519 -C user@email.com

//specify filename and location at prompt


//ssh agent to hold keys
eval "$(ssh-agent -s)"

//add ssh key to agent
//create ~/.ssh/config if it doesn't exist
// add the following to config filename
Host <name>
  AddKeysToAgent yes
  IdentityFile ~/.ssh/<filename>

//add file
ssh-add ~/.ssh/<filename>

//cat the public key
cat ~/.ssh/<filename>.pub

//copy and paste github


//make sure the key is added

ssh -T git@github.com

ssh-add -l -E sha256