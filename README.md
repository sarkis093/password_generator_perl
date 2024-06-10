# Password Generator Perl

### Introduction 
This program allows me the desired length of your password and complains if the length is less than 8 characters. It then generates the desired number of random characters, repeating until it generates a password that contains at least one lowercase letter, one uppercase letter, one digit and one punctuation mark.

### Building
1. First, you need to install the PAR module. You can do this using CPAN (Comprehensive Perl Archive Network)
```
$ sudo cpan PAR::Packer
```
2. After installing the PAR module, you can use the pp (PAR Packager) utility to package your Perl script.
```
$ pp -o password_generator password_generator.pl
```
3. Now you can run the my_executable file normally.
```
$ ./password_generator
```
