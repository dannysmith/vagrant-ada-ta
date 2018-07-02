echo "Start Provisioning via Vagrant..."

# update the registry
sudo apt-get update -y

# update the registry of node sources
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

# install node
sudo apt-get install nodejs -y

# install git, vim, curl, httpie and npm
sudo apt-get install git -y
sudo apt-get install vim -y
sudo apt-get install curl -y
sudo apt-get install httpie -y

# Copy Github SSH Keys to VM
ssh-keyscan github.com >> ~/.ssh/known_hosts

# End Script
echo "Vagrant Finished Provisioning! 🍻"
