import socket
import sys


import sys

client_name = "common client"

if len(sys.argv) >= 2 :
    client_name = str(sys.argv[1])


# Create a TCP/IP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Connect the socket to the port where the server is listening
server_address = ('localhost', 10001)
print('{} connecting to {} port {}'.format(client_name, *server_address))
sock.connect(server_address)

try:

    # Send data
    message = 'This is a message form {}'.format(client_name)
    print('sending {!r}'.format(message))
    sock.sendall(message.encode())

    # Look for the response
    amount_received = 0
    amount_expected = len(message)

    while amount_received < amount_expected:
        data = sock.recv(128)
        amount_received += len(data)
        print('received {!r}'.format(data))


finally:
    print('closing socket')
    sock.close()