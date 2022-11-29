# ssh_scripts

Simple shell scripts to facilitate day-to-day tasks using bash.

## Setup

Edit the scripts to include your bluetooth devices and remote machines.

> TIP: Look for `# EDIT` in the scripts to check where your changes must be made.

Afterwards, make the scripts executable using the following commands on terminal.

```bash
ssh_connect$ chmod -Rx scripts
```

Then, copy the desired scripts to `~/bin` directory. After that, you can execute the scripts from anywhere on your terminal.

> NOTE: You might need to add the following line to your `~/.bashrc` file.
>
> ```bash
> export PATH=$PATH:~/bin
> ```

## Scripts

### `bt_connect`

Connect to your bluetooth devices.

```bash
$ bt_connect <device_name>
```

### `ssh_connect`

Access remote machines.

```bash
$ ssh_connect <name_of_machine>
```

### `ssh_copy`

Easily share files between local and remote machines. In order to copy files _to_ or _from_ a cloud machine, use the following commands, respectivelly.

```bash
$ ssh_copy to <name_of_machine> path/of/local/file path/of/machine/destiny
$ ssh_copy from <name_of_machine> path/of/machine/file path/of/local/destiny
```

