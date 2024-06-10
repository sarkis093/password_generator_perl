#!/usr/bin/perl

=comment
In Perl, you cannot compile a script directly to an executable binary like in some other languages. 
However, you can package your Perl script into an executable using third-party tools. 
One option is PAR (Perl Archive Toolkit), a free tool that allows you to package a Perl script and its dependencies into a single archive. */

Compile perl script to binary linux 
1. First, you need to install the PAR module. You can do this using CPAN (Comprehensive Perl Archive Network)
    - cpan PAR::Packer

2. After installing the PAR module, you can use the pp (PAR Packager) utility to package your Perl script.
    - pp -o passwd_gen passwd_generator.pl

3. Now you can run the my_executable file normally.
    - ./passwd_gen
=cut

my @chars = (33..91, 93..126);
my $num_char = @chars;
my $length;
my $special_chars = '!#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~';

print 'Enter number of character in your password: ';

# chomp takes an input and removes the line break at the end of the input, if any.
chomp ($length = <STDIN>); 

die "Length must be greater than 8!" if $length <=7;

while(1){
    my $password = '';
    foreach (1..$length){
        $password .= chr($chars[int(rand($num_char))]); 
    }
    if ($password =~ /[a-z]/ and $password =~ /[A-Z]/ and $password =~ /[0-9]/ and $password =~ /[$special_chars]/){
        print $password, "\n";
        exit;
    }
}