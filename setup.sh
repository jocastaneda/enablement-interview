#!/bin/bash

# let's ask for github username
echo "What is your GitHub username name?"
read GH_USERNAME
echo "Checking for environment variable with the username of:" $GH_USERNAME
if ! grep -q "export GITHUB_USERNAME=" ~/.bash_profile; then
    echo 'It does not exist so we will add it'
	sudo echo "export GITHUB_USERNAME=$GH_USERNAME" >> ~/.bash_profile
    echo 'The environment variable has been successfully added to the ~/.bash_profile'
    else
    echo "The username $GH_USERNAME and environment variable already exist"
fi

# Writes the hcl configurations to a file called config.hcl
cat <<EOF > config.hcl
cluster_addr  = "https://<HOSTNAME>:8201"
api_addr      = "https://<HOSTNAME>:8200"
disable_mlock = true
EOF

echo 'Updating the HOSTNAME'
# Replaces <HOSTNAME> with vault-server.hashicorp.com in config file
sed -i "s/<HOSTNAME>/vault-server.hashicorp.com/g" config.hcl

echo 'Setup is now complete'
