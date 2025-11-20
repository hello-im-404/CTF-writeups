# Hello.

CTF: Mindgames(meduim) TryHackMe
IP: 10.10.138.42

nmap results:
22 port(ssh)
80 port(http)

![nmap results](screenshots/nmap-res.png)

okay, 80 port going to website.

![website](screenshots/website.png)

Okay, trying input and this is brainfxck compiler, i wanna try decode this code.

![test input](screenshots/test-input.png)

I openned dcode.fr and what i can see? This is python code, encoded in brainfxck and then our machine's website decoding brainfxck code to python and EXECUTE PYTHON CODE.

![dcode site](screenshots/dcode-site.png)
![brainfxck decoder](screenshots/brainfxck-decoder.png)

Okay, what if i'll try read /etc/passwd?

YES! this is RCE(might be), i'll try to get reverse shell using python.

![decoded python on target](screenshots/decoded-python-on-target.png)

generatin reverse-shel. . .

![generating reverse shell](screenshots/generating-reverse-shell.png)

and starting nc -lnvp 404

![netcat start](screenshots/netcat-start.png)

nice. We're in. id=1001.

![in system](screenshots/in-system.png)

getting first flag.

![getting 1st flag](screenshots/getting-1st-flag.png)

next step trying find vector attack

getcap -r / 2>/dev/null showing us interesting string

getcap res:

![getcap res](screenshots/getcap-res.png)

okay, i writted simple C exploit, now we should throw this exploit on the server using python http server

if u wanna try it self this exploit, i wroted compile.sh.

okay, now starting python server

okay, now after getted our exploit, running this using command

'/usr/bin/openssl req -engine /tmp/openssl.so'

and BOOM. root(uid=0)

![root](screenshots/root.png)

getting 2nd flag.

![getting 2 flag](screenshots/getting-2-flag.png)

ty all for reading.

# Goodbye.
