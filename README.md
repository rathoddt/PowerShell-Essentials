# PowerShell-Essentials
### One Liners
```
 while(1){cls;  kubectl get po; sleep 2}

while(1){ curl http://127.0.0.1:30080/api/vehicles/driver/Huddersfield%20Truck%20A | Select-Object -ExpandProperty Content;  sleep 1}
```

```
powershell -ExecutionPolicy Bypass -File .\printing-values.ps1
```

---                                                                  
  - hosts: loadblalancers
    become: true  
    tasks:                                                   
      - name: installing apache           
        yum: name=httpd state=present 
  - hosts: webservers
    become: true
    tasks: 
      - name: Installing servces
        yum: 
          name:
            - httpd
            - apache
          state: prestent
        
