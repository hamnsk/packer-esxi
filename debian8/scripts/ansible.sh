# Set up Ansible.

date > /etc/vmware_box_build_time

# Install ansible keys
mkdir -pm 700 /home/ansible/.ssh
curl -Lo /home/ansible/.ssh/authorized_keys \
  'KEY_URL'
chmod 0600 /home/ansible/.ssh/authorized_keys
chown -R ansible:ansible /home/ansible/.ssh

# Customize the message of the day
echo 'Welcome to your VMWare-built virtual machine.' > /var/run/motd




