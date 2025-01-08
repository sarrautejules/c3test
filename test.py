# Re-import necessary modules after execution state reset
import socket
import struct

# Convert the hexadecimal IP '63b3fa8e' to a readable IP format
hex_ip = 0x63b3fa8e

# Convert the integer to a packed binary form and then to a dotted-decimal string
readable_ip = socket.inet_ntoa(struct.pack('>I', hex_ip))
print(readable_ip)
