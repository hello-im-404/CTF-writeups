#!/usr/bin/bash

gcc -fPIC -o openssl.o -c openssl.c
gcc -shared -o openssl.so -lcrypto openssl.o

