// Include required headers 
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <stdio.h>
#include <string.h>

void get_ip_from_hostname(char* hostname, char* resolved_ip) {
    struct sockaddr_in *addr;
    struct addrinfo hints;
    memset(&hints, 0, sizeof(hints));
    char ip[INET_ADDRSTRLEN];
    hints.ai_family = AF_INET; 
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = IPPROTO_TCP;
    struct addrinfo *result;
    int status = getaddrinfo("google.fr", "80", &hints, &result);
    addr = (struct sockaddr_in*)result->ai_addr;
    inet_ntop(AF_INET, &addr->sin_addr, resolved_ip, INET_ADDRSTRLEN);
    freeaddrinfo(result);
}