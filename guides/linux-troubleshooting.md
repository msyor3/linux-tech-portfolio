# Linux Troubleshooting: A Quick Checklist

A practical checklist for diagnosing common Linux problems.

## 1. Check System Information

```bash
uname -r
cat /etc/os-release
uptime
```

Identify your kernel, distribution, and system uptime.

## 2. Check Disk and Memory

```bash
free -h
df -h
```

Check available RAM and disk space.

## 3. Check Network Connectivity

```bash
ip -br addr
ip route
ping -c 4 1.1.1.1
```

Inspect network interfaces, routing, and basic connectivity.

## 4. Check Running Processes

```bash
ps aux
top
```

Find running processes and investigate unusual resource usage.

## 5. Check System Logs

For systemd-based distributions:

```bash
journalctl -b -p err
```

For Void Linux with runit:

```bash
sudo sv status /var/service/*
```

## 6. Troubleshooting Principles

- Read the error message carefully.
- Identify the affected component.
- Check logs before changing configurations.
- Make one change at a time.
- Verify the result.

**Remember:** Never run commands you don't understand, especially with administrator privileges.

---

**Author:** Linux Tech Portfolio

**Topics:** Linux, Troubleshooting, System Administration
