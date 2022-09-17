# 0x0B. SSH

# Tasks
## 0. Use a private key
Write a Bash script that uses ssh to connect to your server using the private key ~/.ssh/school with the user ubuntu.

```bash
chmod +x 0-use_a_private_key
./0-use_a_private_key
```

## 1. Create an SSH key pair
Write a Bash script that creates an RSA key pair.

```bash
chmod +x 1-create_ssh_key_pair
./1-create_ssh_key_pair
```

## 2. Client configuration file
Your machine has an SSH configuration file for the local SSH client, let’s configure it to our needs so that you can connect to a server without typing a password. Share your SSH client configuration in your answer file.

```bash
code /etc/ssh/ssh_config

```

## 3. Let me in!
Add the SSH public key to server.

```bash
ssh user@host
echo "public key" >> ~/.ssh/authorized_keys
```

## Client configuration file (w/ Puppet)

```
puppet module install puppetlabs-stdlib --version 8.4.0 
puppet apply 2-execute_a_command.pp
```

## References
[Using the SSH Config File](https://linuxize.com/post/using-the-ssh-config-file/)
