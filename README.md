# PowerShell-Essentials


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