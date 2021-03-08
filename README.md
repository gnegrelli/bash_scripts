# ssh_connect

Simple shell scripts to facilitate access and file sharing between local and cloud machines.

## Usage

Edit the scripts to include the name, key and hostname of the cloud machines you want to connect.

Afterwards, make the scripts executable using the following commands on terminal.

```bash
ssh_connect$ chmod -x ssh_connect
ssh_connect$ chmod -x ssh_copy
```

Then, copy them to `~/bin` directory and add the line below to your `~/.bashrc` file.

```
export PATH=$PATH:~/bin
```

After that, you can execute the scripts from anywhere on your terminal.

To easily connect to a cloud machine, execute the command below

```bash
$ ssh_connect <name_of_machine>
```

In order to copy files _to_ or _from_ a cloud machine, use the following commands, respectivelly.

```bash
$ ssh_copy to <name_of_machine> path/of/local/file path/of/machine/destiny
$ ssh_copy from <name_of_machine> path/of/machine/file path/of/file/destiny
```

