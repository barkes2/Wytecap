#!/bin/bash
#01/27/2021
#wytecap
#IPsweepBashscript
for ip in `seq 1 254` ; do
	ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
	done
#"#!/bin/bash" basically a comment indicating this is a bash script
#"for ip in `seq` 1 243 ; do" is a loop indicating we want to execute the command for every IP in the given network range thus we write for a loop and execute it in a range for 1-254, the number of ip addresses in a particular network.
#"ping" is to ping the ip address
#"-c1" indicates that we will ping one IP at a time
#"$1.$ip" where $1 is the user input and we will manually input the first three ranges of the IP and the last range will be taken from the for loop.
#"grep "64 bytes" Running a ping command to an ip and the result will be "64 bytes from (given IP) thus if active, the IP will respond and the response will contain the term "64 bytes" so this will filter out the IPs that responded from a total of 254 IP addresses.
#"cut -d " " -f 4" is a command that cuts the whole response with the delimeter (-d) whitespace (" ") and picks the 4th term (-f 4) from it (e.g. the IP) 
#"tr -d ":" is where we pass colon as a delimeter and tr command deletes it
#"&" Basically allows the thread to work simultaneously
#END
