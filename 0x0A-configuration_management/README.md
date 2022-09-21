# 0x0A. Configuration management

# Tasks
## 0. Create a file
Using Puppet, create a file in /tmp.

```bash
puppet-lint 0-create_a_file.pp
sudo puppet apply 0-create_a_file.pp
ls -l /tmp/school
cat /tmp/school
```

## 1. Install a package
Using Puppet, install flask from pip3.

```bash
puppet-lint 1-install_a_package.pp
sudo puppet apply 1-install_a_package.pp
flask --version
sudo 
```

## 2. Execute a command
Using Puppet, create a manifest that kills a process named killmenow.

```bash
which -a pkill
puppet-lint 2-execute_a_command.pp
sudo puppet apply 2-execute_a_command.pp
chmod +x killmenow
./killmenow

```

## References
[Puppet – Manifest examples – Managing FILES – SERVICES](https://www.unixarena.com/2016/02/puppet-manifest-example-updating-files-on-agent-nodes.html/)
[Resource Type: file](https://puppet.com/docs/puppet/5.5/types/file.html#file-attribute-group)
[Resource Type: package](https://puppet.com/docs/puppet/7/types/package.html#package-attribute-install_options)
