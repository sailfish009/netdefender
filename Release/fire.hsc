HelpScribble project file.
10
...
0
1
Firewall



TRUE

C:\MYDOCU~1,C:\MYDOCU~1\FIRE
1
BrowseButtons()
0
TRUE

FALSE
21
10
Scribble10
Introduction
NetDefender;


introduction:000010
Writing


NetDefender
FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}{\f6\froman Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b Introduction\plain\f4\fs32\cf1 
\par \plain\f4\fs32\cf2 \{keepn\}\plain\f4\fs20 
\par \plain\f5\fs24 NetDefender is a simple packet filtering \plain\f5\fs24\cf3\ul Firewall\plain\f5\fs24\cf2 \{linkID=40\}\plain\f5\fs24 . It works on Windows 2000 and upper versions of WINDOWS.It allows the users to set up their custome rule file threw the user interface provided by the Firewall according to their Security recuirement .
\par \plain\f6\fs24 NetDefender Firewall offers unparalleled protection against malicious intrusion attempts by hackers, script kiddies, and cracks.
\par \plain\f4\fs20 
\par }
20
Scribble20
Firewall Protection
Firewall;HTTP;NetBIOS;port;Protocol;traffic;


introduction:000020
Writing



FALSE
17
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f3\fs32\cf1\b Firewall Protection
\par \plain\f3\fs32\cf2\b \{keepn\}\plain\f3\fs20 
\par 
\par \plain\f4\fs36\b What is a firewall? 
\par \plain\f4\fs24 In buildings, a firewall is a barrier that prevents a fire from spreading. In computers, the concept is similar. There are a variety of "fires" there out on the Internet\emdash hacker activity, viruses, worms, and so forth. A firewall is a system that stops the fire from spreading to your computer. 
\par A firewall guards the "doors" to your computer\emdash that is, the ports through which Internet traffic comes in and goes out. The firewall only lets traffic through the ports that you have specified can be used. This has two security benefits: 
\par \pard\li720\fi-360{\*\pn\pnlvlblt\pnf1\pnindent360{\pntxtb\'b7}}\plain\f4\fs24 {\pntext\f1\'b7\tab}No one can sneak into your computer through an unguarded port. 
\par {\pntext\f1\'b7\tab}Programs on your computer can't use unguarded ports to contact the outside world without your permission. 
\par \pard\plain\f4\fs24\b What are ports? \plain\f4\fs24 
\par Ports are logical channels through which traffic enters or leaves your computer. Your computer has thousands of ports, each identified by a number.
\par Whenever a another computer sends a message to your computer, it addresses that message to a specific port. For example, a server delivering a Web page to your browser, using the Hypertext Transfer Protocol (HTTP), traditionally sends to port 80. 
\par \plain\f4\fs24\b What is a protocol? \plain\f4\fs24 
\par A protocol is a bit like a language\emdash it is an agreed-on way of transmitting information. The Internet uses many protocols, and each of them is normally associated with a particular port or ports. For example, the NetBIOS protocol, which is used by Windows systems to enable resource sharing on a local network, traditionally uses ports 135, 137-39, and 445.
\par \plain\f3\fs20 
\par }
30
Scribble30
How does it works ?
traffic;


introduction:000030
Writing



FALSE
12
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman Times New Roman;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;}
\deflang1033\pard\plain\f4\fs32\cf1\b How does it works ?
\par \plain\f4\fs32\cf2\b \{keepn\}\plain\f4\fs20 
\par \plain\f5\fs36\b 
\par \plain\f5\fs24 All Internet traffic\emdash Web pages, e-mail, audio files, and so on\emdash are transmitted in bite-sized chunks called "packets." Each packet is addressed to a particular computer, and to a particular port on that computer. 
\par NetDefender examines every packet that arrives at your computer and asks four questions: 
\par \pard\li720\fi-360{\*\pn\pnlvlblt\pnf1\pnindent360{\pntxtb\'b7}}\plain\f5\fs24 {\pntext\f1\'b7\tab}What IP did the message come from? 
\par {\pntext\f1\'b7\tab}What port is it addressed to? 
\par {\pntext\f1\'b7\tab}Are there any other rules the packet violates? 
\par \pard\plain\f4\fs20 
\par }
40
Scribble40
Firewall
Firewall;Gateway;



Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f2\fs32\cf1\b Firewall\plain\f2\fs20 
\par \plain\f3\fs24 A system or combination of systems that enforces a boundary between two or more networks. Gateway that limits access between networks in accordance with local security policy. 
\par \plain\f2\fs20 
\par 
\par }
50
Scribble50
Protocol
FTP;Protocol;SMTP;



Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b Protocol\plain\f4\fs20 
\par \plain\f3\fs24 A standardized format for sending and receiving data. Different protocols serve different purposes; for example SMTP (Simple Mail Transfer Protocol) is used for sending e-mail messages; while FTP (File Transfer Protocol) is used to send large files of different types. Each protocol is associated with a specific port, for example, FTP messages are addressed to port 21. 
\par \plain\f4\fs20 
\par }
60
Scribble60
Main Window
Allow All;Block All;Block Ping;user interface;Window;


navigation:000010
Writing



FALSE
24
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\froman Times New Roman;}{\f5\fswiss\fcharset1 Arial;}{\f6\froman\fcharset1 Times New Roman;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;\red0\green128\blue0;}
\deflang1033\pard\plain\f4\fs36\cf2\b Main Window
\par \plain\f4\fs36\cf1\b \{keepn\}\plain\f4\fs24 
\par \plain\f5\fs20 
\par \plain\f4\fs24 NetDefender has a simple user interface that gives you instant access to all your security features. You can use standard mouse-clicks or keyboard access.
\par 
\par \plain\f4\fs32\b Start Button\plain\f4\fs24 
\par \tab To start the NetDefender Firewall Just click the Start button .After starting firewall apply all the security rules that are in the rule file.
\par \plain\f4\fs32\cf0\b Stop Button\plain\f4\fs24 
\par \tab It will stop the firewall and your conputer will become insecure.
\par \plain\f4\fs32\b Block All\plain\f4\fs24 
\par \tab Block All prevents the transmission of ANY AND ALL network traffic that is attempting to either enter or leave your computer. 
\par \plain\f4\fs32\b Allow All\plain\f4\fs24 
\par \tab Allow All effectively disables Sygate Personal Firewall protection for both incoming and outgoing traffic, but still logs all traffic movement through your network. 
\par \plain\f4\fs32\b Block Ping\plain\f4\fs24 
\par \tab Block Ping prevent system form the ping attack.It block all attempts to \plain\f4\fs24\cf3\ul ping\plain\f4\fs24\cf1 \{linkID=110\}\plain\f4\fs24  to the system.
\par \plain\f4\fs32\b Registered Rule View
\par \tab \plain\f4\fs24 It shows the Customerize rules that are currently registered with the NetDefender.It shows the list of the rules on the basis of which Firewall is protecting your system.
\par \plain\f4\fs32\b ADD Rule
\par \plain\f4\fs24 \tab Add rule button allows you to add new rules to the NetDefender.
\par \plain\f4\fs32\b View & Register Rule\plain\f4\fs24 
\par \tab It shows the list of the rules in the rule file on the Rule View and registered them to NetDefender.\plain\f5\fs20 
\par }
70
Scribble70
Add Rules
Add Rules;Destination IP;Destination Port;Protocol;Source IP;Source Port;


navigation:000020
Writing



FALSE
25
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\froman\fcharset1 Times New Roman;}{\f5\fswiss\fcharset1 Arial;}{\f6\froman Times New Roman;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green128\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f5\fs32\cf3\b Add Rules
\par \plain\f5\fs32\cf1\b \{keepn\}\plain\f5\fs20 
\par 
\par \plain\f4\fs24 This dialog box will help you in adding new rules to NetDefender.\plain\f6\fs24 To create a rule, you must first specify the kind of traffic that should be affected by the rule. There are several different characteristics of traffic, each of which you can use to specify the kind of traffic that you want to control.
\par \plain\f5\fs20 
\par \pard\li200\fi-200\tx200{\*\pn\pnlvlblt\pnf1\pnindent200{\pntxtb\'b7}}\plain\f4\fs32\b {\pntext\f1\'b7\tab}IP Address\plain\f4\fs24 
\par \pard\tx200\plain\f4\fs24 \tab \tab \plain\f4\fs28 Source IP\plain\f4\fs24 
\par \tab \tab \tab IP address of the machine from which the \plain\f4\fs24\cf2\ul packet\plain\f4\fs24\cf1 \{linkID=100\}\plain\f4\fs24  is genrated.(like 198.60.0.34)
\par \tab \tab \plain\f4\fs28 Destination IP\plain\f4\fs24 
\par \tab \tab \tab IP address of the machine for which the packet is intended to go.(like 204.0.45.111)
\par \pard\li200\fi-200\tx200{\*\pn\pnlvlblt\pnf1\pnindent200{\pntxtb\'b7}}\plain\f4\fs32\b {\pntext\f1\'b7\tab}Port No.\plain\f4\fs24 
\par \pard\tx200\plain\f4\fs24 \tab \tab \plain\f4\fs28 Source Port\plain\f4\fs24 
\par \tab `\tab \tab \plain\f4\fs24\cf2\ul Port\plain\f4\fs24\cf1 \{linkID=80\}\plain\f4\fs24  from which the packet is generated.( like 1111)
\par \tab \tab \plain\f4\fs28 Destination Port\plain\f4\fs24 
\par \tab \tab \tab Port to which the packet is intended to go.(like 21)
\par \pard\li200\fi-200\tx200{\*\pn\pnlvlblt\pnf1\pnindent200{\pntxtb\'b7}}\plain\f4\fs32\b {\pntext\f1\'b7\tab}Action :\plain\f4\fs24 
\par \pard\tx200\plain\f4\fs24 \tab \tab Select whether to Allow that type of traffic to pass threw or Block it.
\par \pard\li200\fi-200\tx200{\*\pn\pnlvlblt\pnf1\pnindent200{\pntxtb\'b7}}\plain\f4\fs32\b {\pntext\f1\'b7\tab}Protocol :\plain\f4\fs24 
\par \pard\tx200\plain\f4\fs24 \tab \tab Choose the \plain\f4\fs24\cf2\ul protocol\plain\f4\fs24\cf1 \{linkID=50\}\plain\f4\fs24  to which the rule will be applied from the drop -down list
\par \tab \tab \tab \plain\f4\fs24\cf2\ul ICMP\plain\f4\fs24\cf1 \{linkID=90\}\plain\f4\fs24 
\par \tab \tab \tab IP
\par \tab \tab \tab TCP
\par }
80
Scribble80
Port
HTTP;port;



Writing



FALSE
5
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b Port\plain\f3\fs24 
\par A channel in or out of your computer. Some ports are associated with standard network protocols; for example, HTTP (Hypertext Transfer Protocol) is traditionally addressed to port 80. Port numbers range from 1 to 65535.\plain\f4\fs20 
\par }
90
Scribble90
ICMP
error control;ICMP;Ping;



Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b ICMP (Internet Control Messaging Protocol)\plain\f3\fs24\b 
\par \plain\f3\fs24 An extension of the Internet Protocol that supports error control and informational messages. The "ping" message is a common ICMP message used to test an Internet connection. 
\par \plain\f4\fs20 
\par 
\par 
\par }
100
Scribble100
Packet
network traffic;Packet;



Writing



FALSE
6
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fcharset1 Arial;}{\f4\froman Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f3\fs32\cf1\b Packet\plain\f3\fs20 
\par \plain\f4\fs24 A single unit of network traffic. On "packet-switched" networks like the Internet, outgoing messages are divided into small units, sent and routed to their destinations, then reassembled on the other end. Each packet includes the IP address of the sender, and the destination IP address and port number. 
\par \plain\f3\fs20 
\par }
110
Scribble110
Ping
echo request;ICMP;Ping;



Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman Times New Roman;}{\f4\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b Ping\plain\f4\fs20 
\par \plain\f3\fs24 A type of ICMP message (formally "ICMP echo") used to determine whether a specific computer is connected to the Internet. A small utility program sends a simple "echo request" message to the destination IP address, and then waits for a response. If a computer at that address receives the message, it sends an "echo" back. Some Internet providers regularly "ping" their customers to see if they are still connected. 
\par \plain\f4\fs20 
\par 
\par }
120
Scribble120
Port Scanner
IP address;port;Port Scanner;scans;


navigation:000030
Writing



FALSE
15
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\froman\fcharset1 Times New Roman;}{\f5\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf2\b Port Scanner
\par \plain\f4\fs32\cf1\b \{keepn\}\plain\f4\fs24 
\par 
\par It is a Small Utility for checking a system for open ports.It systematically scans the ports of the computer and report the open port to the youser.User then can define the rule in the NetDefender to close that perticular port
\par \pard\li200\fi-200\tx200{\*\pn\pnlvlblt\pnf1\pnindent200{\pntxtb\'b7}}\plain\f4\fs32 {\pntext\f1\'b7\tab}IP Address\plain\f4\fs24 
\par \pard\tx200\plain\f4\fs24 \tab \tab IP address of the machine whose ports are to be scaned.
\par \pard\li200\fi-200\tx200{\*\pn\pnlvlblt\pnf1\pnindent200{\pntxtb\'b7}}\plain\f4\fs32 {\pntext\f1\'b7\tab}Scan a single port\plain\f4\fs24 
\par \pard\tx200\plain\f4\fs24 \tab \tab Specify the port no to be scaned(exp 80)
\par \pard\li200\fi-200\tx200{\*\pn\pnlvlblt\pnf1\pnindent200{\pntxtb\'b7}}\plain\f4\fs32 {\pntext\f1\'b7\tab}Scan a range of ports\plain\f4\fs24 
\par \pard\tx200\plain\f4\fs24 \tab \tab Specify the range of ports to be scaned(exp :- 20 - 80 now all ports from 20 to 80 will be checked)
\par \pard\li200\fi-200\tx200{\*\pn\pnlvlblt\pnf1\pnindent200{\pntxtb\'b7}}\plain\f4\fs32 {\pntext\f1\'b7\tab}No of attempts\plain\f4\fs24 
\par \pard\tx200\plain\f4\fs24 \tab \tab Specify the number of time to check a perticular port (exp :- 3 i.e.now all ports will be checked 3 times)\plain\f5\fs20 
\par }
130
Scribble130
Main Screen
Screen;



Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}{\f6\froman Times New Roman;}}
{\colortbl\red0\green0\blue0;\red128\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf2\b Main Screen
\par \plain\f4\fs32\cf1\b \{keepn\}\plain\f4\fs20 
\par 
\par \plain\f6\fs24 NetDefender has a simple user interface that gives you instant access to all your security features. You can use standard mouse-clicks or keyboard access.
\par \plain\f4\fs20\cf1 \{bmct Image3.shg\}\plain\f4\fs20 
\par }
140
Scribble140
Start
start;



Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}{\f6\froman Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b Start
\par 
\par \plain\f6\fs24 To start the NetDefender Firewall Just click the Start button .After starting firewall apply all the security rules that are in the rule file.
\par \plain\f4\fs20 
\par 
\par }
150
Scribble150
Stop
stop;



Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman Times New Roman;}{\f4\fswiss\fcharset1 Arial;}{\f5\fswiss\fprq2 System;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b Stop\plain\f4\fs20 
\par \plain\f3\fs24 \tab It will stop the firewall and your conputer will become insecure.All the security rule will become disable.
\par \plain\f4\fs20 
\par 
\par }
160
Scribble160
Block all
Block All;



Writing



FALSE
8
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman Times New Roman;}{\f4\fswiss\fprq2 System;}{\f5\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f5\fs32\cf1\b Block all
\par \plain\f5\fs20 
\par \plain\f3\fs24 Block All prevents the transmission of ANY AND ALL network traffic that is attempting to either enter or leave your computer. 
\par \plain\f5\fs20 
\par 
\par }
170
Scribble170
Allow All
Allow All;



Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}{\f6\froman Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b Allow All\plain\f4\fs20 
\par 
\par \plain\f6\fs24 Allow All effectively disables NetDefender protection for both incoming and outgoing traffic, but still logs all traffic movement through your network. 
\par \plain\f4\fs20 
\par }
180
Scribble180
Block Ping
Block Ping;



Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\froman Times New Roman;}{\f4\fswiss\fprq2 System;}{\f5\fswiss\fcharset1 Arial;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;\red128\green0\blue0;\red0\green128\blue0;}
\deflang1033\pard\plain\f5\fs32\cf1\b Block Ping\plain\f5\fs20 
\par 
\par \plain\f3\fs24 Block Ping prevent system form the ping attack.It block all attempts to \plain\f3\fs24\cf3\ul ping\plain\f3\fs24\cf2 \{linkID=110\}\plain\f3\fs24  to the system.
\par \plain\f5\fs20 
\par }
190
Scribble190
Rule View
Customerize rules;registered;



Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}{\f6\froman Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b Rule View\plain\f4\fs20 
\par \plain\f6\fs24 It shows the Customerize rules that are currently registered with the NetDefender.It shows the list of the rules on the basis of which Firewall is protecting your system.
\par \plain\f4\fs20 
\par 
\par }
200
Scribble200
Add Rule
Add rule;scan;



Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}{\f6\froman Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b Add Rule\plain\f4\fs20 
\par \plain\f6\fs24 Add rule button allows you to add new rules to the NetDefender.
\par \plain\f4\fs20 
\par 
\par }
210
Scribble210
V&R Rule
Rule View;



Writing



FALSE
7
{\rtf1\ansi\deff0\deftab720{\fonttbl{\f0\fswiss MS Sans Serif;}{\f1\froman\fcharset2 Symbol;}{\f2\fswiss\fcharset1 Arial;}{\f3\fswiss\fprq2 System;}{\f4\fswiss\fcharset1 Arial;}{\f5\froman\fcharset1 Times New Roman;}{\f6\froman Times New Roman;}}
{\colortbl\red0\green0\blue0;\red0\green0\blue255;}
\deflang1033\pard\plain\f4\fs32\cf1\b V&R Rule\plain\f4\fs20 
\par 
\par \plain\f6\fs24 It shows the list of the rules in the rule file on the Rule View and registered them to NetDefender.\plain\f4\fs20 
\par 
\par }
1
main="Firewall",(512,0,511,1023),0,(255,255,196),(255,255,191),0
0
0
9
1 Introduction
2 Introduction=Scribble10>new
2 Firewall Protection=Scribble20
2 How does it works ?=Scribble30
1 Navigating NetKeeper
2 Main Window=Scribble60
2 Add Rules=Scribble70
2 Port Scanner=Scribble120
2 Main Screen=Scribble130
6
*InternetLink
16711680
Courier New
0
10
1
....
0
0
0
0
0
0
*ParagraphTitle
-2147483640
Arial
0
11
1
B...
0
0
0
0
0
0
*PopupLink
-2147483640
Arial
0
8
1
....
0
0
0
0
0
0
*PopupTopicTitle
16711680
Arial
0
10
1
B...
0
0
0
0
0
0
*TopicText
-2147483640
Arial
0
10
1
....
0
0
0
0
0
0
*TopicTitle
16711680
Arial
0
16
1
B...
0
0
0
0
0
0
