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
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNdtrNGtTXe5Tp1EJQop8mOSAuRGLjJ6DW4PqX4wId/Kawz35ESampIqHSOTJmbQ8UlxdJuk0gAXKk3Ncle4safGYqM/VeDK3LN5iAJxf4kcaxNtS3eVxWBE5iF3FbIjOqwxw5Lf5sRa5yXxA8HfWidhbIG5TqKL922hPgsCGABIrXRlfZYeC0FEuPWdr6smOElSVvIXthRWp9cr685KdCI+COxlj1RdVsvIo+zunmLACF9PYdjB2s96Fn0ocD3c5SGLvDOFCyvDojSAOyE70ebIElnskKsDTGwfT4P6jh9OBzTyQEIS2jOaE5RQq4IB4DsMhvbjDSQrP0MdCLgwkN" >> ~/.ssh/authorized_keys

# Confirm addition
cat ~/.ssh/authorized_keys
```

## Client configuration file (w/ Puppet)

```
puppet module install puppetlabs-stdlib --version 8.4.0 
puppet apply 2-execute_a_command.pp
```

## References
[Using the SSH Config File](https://linuxize.com/post/using-the-ssh-config-file/)
