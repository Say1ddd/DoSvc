# Prerequisites

Note: Requires restarting the system for the changes to take effect!

## Allow Script Execution

```shell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```

## Backup (If Necessary)

```shell
reg export "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DoSvc" "Backup.reg"
```
