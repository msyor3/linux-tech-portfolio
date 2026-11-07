# Linux for Beginners
-A practical introduction to Linux, its filesystem, terminal commands, package management, and basic troubleshooting.
## 1. What Is Linux?
-Linux is an open-source operating system kernel. It is used in desktop computers, servers, embedded systems, and many other devices.
-A Linux distribution (distro) combines the Linux kernel with software, package management tools, and other components to create a complete operating system.
-Basic distributions include:
- Ubuntu
- Linux Mint
- Debian
- Fedora
=>Each distribution has its own philosophy, package manager, and configuration methods.
## 2. Understanding the Linux Filesystem
-Linux organizes files in a hierarchical filesystem that starts at the root directory `/`.
-Some important directories:

 | Directory | Purpose |
 |---|---|
 | `/` | Root of the filesystem |
 | `/home` | Users' personal directories |
 | `/etc` | System configuration files |
 | `/usr` | User applications and shared resources |
 | `/var` | Variable data, logs, and caches |
 | `/tmp` | Temporary files |
 | `/boot` | Boot-related files |
 | `/dev` | Device files |
 | `/proc` | Process and kernel information |

=>Unlike Windows, Linux generally mounts storage devices into a single directory tree.
## 3. Essential Terminal Commands
-The terminal allows users to interact with the operating system through commands.
### Navigation

```bash
pwd
```
Displays the current working directory.

```bash
ls -lah
```
Lists files, including hidden files, with detailed information.

```bash
cd ~/Downloads
```
Changes the current directory to Downloads.

### File Management

```bash
mkdir projects
```
Creates a directory.

```bash
touch notes.txt
```
Creates an empty file.

```bash
cp notes.txt backup.txt
```
Copies a file.

```bash
mv notes.txt documents/
```
Moves a file.

```bash
cat notes.txt
```
Displays file contents.

**Important:** Be careful with commands that overwrite or delete files. Always check the target path before executing them.

## 4. Understanding Permissions
-Linux uses file permissions to control who can read, write, or execute files.
-Check permissions:

```bash
ls -l
```

Example:

```text
-rw-r--r-- 1 user user 120 Nov 7 notes.txt
```

The permission groups are:

- Owner: permissions for the file owner.
- Group: permissions for members of the assigned group.
- Others: permissions for everyone else.

The basic permission types are:

- `r` — Read
- `w` — Write
- `x` — Execute

## 5. Package Management

Linux distributions use package managers to install, update, and remove software.

Different distributions use different tools.

| Distribution | Package manager |
|---|---|
| Debian / Kali / Ubuntu | APT |
| Arch Linux | Pacman |
| Fedora | DNF |
| Void Linux | XBPS |

### Examples

Debian-based systems:

```bash
sudo apt update
sudo apt install package-name
```

Arch Linux:

```bash
sudo pacman -Syu
```

Void Linux:

```bash
sudo xbps-install -Syu
```

Always use the package manager appropriate for your distribution.

## 6. Basic System Information

These commands help you understand your system.

```bash
uname -a
```
Displays kernel information.

```bash
cat /etc/os-release
```
Displays distribution information.

```bash
free -h
```
Displays memory usage.

```bash
df -h
```
Displays filesystem disk usage.

```bash
ip -br addr
```
Displays network interfaces and IP addresses.

```bash
ps aux
```
Lists running processes.

## 7. Basic Troubleshooting

When something goes wrong, start by collecting information.

A useful troubleshooting process:

1. Identify the problem.
2. Check relevant error messages.
3. Inspect system and application status.
4. Search official documentation.
5. Apply one change at a time.
6. Verify whether the problem is resolved.

For example, if an application is not running:

```bash
ps aux
```

To inspect recent system logs on systems using systemd:

```bash
journalctl -b -p err
```

Note that not every Linux distribution uses systemd. Void Linux, for example, uses runit by default.

## 8. Final Thoughts

Linux is easy

Start with basic commands, learn how the filesystem works, understand package management, and gradually explore system administration.

The best way to learn Linux is to keep using it until you got it

---

**Author:** Linux Tech Portfolio

**Topics:** Linux, Command Line, System Administration, Open Source
