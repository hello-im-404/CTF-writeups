# Hello.

CTF: Blog(medium)

ip: 10.10.62.255

nmap scan

![nmap scan](screenshots/nmap.png)

ffuf results:

![ffuf results](screenshots/ffuf-res.png)

interesting admin

okay, this redirect on wp-login.

![wordpress login page](screenshots/wordpress-login-page.png)

default "admin" didn't working? Okay, maybe "Billy" will work?

no...

![admin login fail](screenshots/admin-login.png)

okay, enum4linux maybe gives me smth interesting

![enum4linux](screenshots/enum4linux.png)

bjoel - this might be as login.

on this moment i open writeup....and....needed login: kwheel, sorry, idk how i should find this login.

using wpscan we can brute force password for kwheel

okay, login in

kwheel:cutiepie1

![creds wordpress](screenshots/creds-wordpress.png)

i'll use exploit - WordPress 5.0.0 - Image Remote Code Execution

starting metasploit. . .

![metasploit](screenshots/metasploit.png)

setting options and exploit

![options metasploit](screenshots/options-metasploit.png)

and boom. nice!

![getted reverse shell](screenshots/getted-reverse-shell.png)

getting shell

![nice shell](screenshots/nice-shell.png)

okay, going to home directory....and.....that's not funny:(

![not user txt](screenshots/not-user.txt.png)

trying find

checker have vuln:
root@blog:/var/www/wordpress# ltrace checker
ltrace checker
getenv("admin")                                  = "1"
setuid(0)                                        = 0
system("/bin/bash"root@blog:/var/www/wordpress#

![interesting checker](screenshots/interesting-checker.png)

and if we will export admin=1

we should get root priv.

![priv esc](screenshots/priv-esc.png)

finding user.txt with command:

find / 2>/dev/null | grep user.txt

![user flag](screenshots/user-flag.png)

and root flag in home directory.

![root flag](screenshots/root-flag.png)

Ty all for reading!!

# Goodbye.
