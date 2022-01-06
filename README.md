# socat-ncat-multiplex
Combination of tools to enable multiple readers and writers to a socat i/o stream

I was searching for a way to connect my Honeywell/Ademco Vista 21p alarm panel to openhab / home assistant.  I installed an AlarmDecoder by Nu Tech Software Solutions (https://alarmdecoder.com), which connects via serial usb - the AD2USB.  NuTech also offers version of their hardware connected to a Raspberry Pi and interfaces to your network via TCP/IP socket.  I wanted a similar solution using the AD2USB.  I investigated directly connecting the /dev/tty interface to the home automation software, but that left no easy way to monitor or control the AD2USB external to the software.  I experimented with variations of nc, netcat, and landed on ncat as allowing a 1 to many multiplex connection scheme.  Combining this with socat's serial to socket pipeline was the solution.

There are 3 files:
