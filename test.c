// Include required headers 
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <stdio.h>
#include <string.h>

int main(void) {

  // Socket address structure
  struct sockaddr_in *addr;

  // Output variable  
  char ip[INET_ADDRSTRLEN];

  // Setup hints before getaddrinfo()
  struct addrinfo hints;
  memset(&hints, 0, sizeof(hints));

  hints.ai_family = AF_INET; 
  hints.ai_socktype = SOCK_STREAM;
  hints.ai_protocol = IPPROTO_TCP;

  // Resolve host+service 
  struct addrinfo *result;
  int status = getaddrinfo("google.fr", "80", &hints, &result);

  // Handle errors
  if(status != 0) {
    // Insert error handling like gai_strerror()
    return 1;
  }

  // Access resolved IP and port 
  addr = (struct sockaddr_in*)result->ai_addr;
  inet_ntop(AF_INET, &addr->sin_addr, ip, INET_ADDRSTRLEN);  
  printf("IP Hex : %x\n", &addr->sin_addr.s_addr);
  printf("len of s_addr : %d\n", sizeof(sockaddr_in));
  printf("IP Address: %s\n", ip);
  printf("Port: %d\n", ntohs(addr->sin_port));

  // Free memory 
  freeaddrinfo(result);

  return 0;
}