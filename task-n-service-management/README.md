# Managing Task & Service Execution

## Start an application at system start without login
To allow it to run without a user session, you need a windows service. That should handle all the background stuff. You can then register the service and set it to start when the system starts.

To allow it to have a UI, and show up in the notification area, you need a windows application. This will be in autostart as usual, and will communicate with the service - for example, over named pipes.

While it is still (barely) possible to run an UI application without a user session, it's only maintained for backwards compatibility, and already shows a lot of problems. It will likely be removed altogether in the future, because it breaks quite a few contracts. Do not rely on hacks like this.


## sc.exe
Communicates with the Service Controller and installed services. The SC.exe program provides capabilities similar to those provided in Services in the Control Panel.

https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/cc754599(v=ws.11)

### sc create
```
sc.exe create tick_data_v1 binPath= "C:\Users\diliprathod_copywrit\AppData\Local\Programs\Python\Python312\python.exe D:\pys-v2\03_run_automated_principal.py"  start= auto
```
https://learn.microsoft.com/en-US/windows-server/administration/windows-commands/sc-create


### References
https://stackoverflow.com/questions/31857849/start-an-application-at-system-start-without-login