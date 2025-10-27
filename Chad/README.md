# Hello.
## CTF: GigaChad (Vulnhub)
* IP: 192.168.56.106

## NMAP SCAN:

![result](./screenshots/2025-09-20_17-40.png)

After nmap scan we can see: 
* 21 port(ftp) - anonymous loign allowed(vuln)
* 22 port(ssh)
* 80 port(http)

## FTP EXPLOITING:

![connecting](./screenshots/2025-09-20_17-40_1.png)

![getting files](./screenshots/2025-09-20_17-41.png)

## Information from FTP:
* username: chad
* subdomain: http://$IP/drippinchad.png

On picture we can see build, if try find what is that build we can find - **maiden's tower**    

![info](./screenshots/2025-09-20_17-41_2.png)

This might be password if cut space and \ ' \ symbol 

## SSH EXPLOITTING:
Now we have creds and can try ssh. . . 

![ssh](./screenshots/2025-09-20_17-46.png)

```bash
ssh chad@192.168.56.106
password: maidenstower
```

And BOOM. We're in!!!

## Getting #1 flag:

![flag1](./screenshots/2025-09-20_17-46_1.png)

## Privilege escalation:
```bash
find / -perm -4000 -type f 2>/dev/null
```

![privesc](./screenshots/2025-09-20_17-47.png)

* /usr/lib/s-nail/s-nail-privesp

Using Google we can find interesting    

### **CVE 2017-5899**

Exploiting this machine using CVE 2017-5899

and. . .
![root](./screenshots/2025-09-20_17-50.png)

## Getting #2 flag:

![flag2](./screenshots/2025-09-20_17-50_1.png)

# GoodBye.
##### by hello-im-404/r31v14n

