import socket
import sys
import time

# Create a TCP/IP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Bind the socket to the port
server_address = ('localhost', 10001)
print('starting up on {} port {}'.format(*server_address))
sock.bind(server_address)

# Listen for incoming connections
sock.listen(1)

while True:
    # Wait for a connection
    print('waiting for a connection')
    connection, client_address = sock.accept()
    try:
        print('connection from', client_address)
        data = ""
        # time.sleep(0.5)

        # Receive the data in small chunks and retransmit it
        while True:
            data = connection.recv(128)
            print('received {!r}'.format(data))
            if data:
                print('sending data back to the client')
                connection.sendall(data)
                if "KILL" in str(data) :
                    sys.exit(0)
            else:
                print('no data from', client_address)
                break


    finally:
        # Clean up the connection
        connection.close()