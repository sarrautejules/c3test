// module main;
// import std::io;
// import std::net;
// import http;
// import net;

// fn void main(String[] args)
// {
// 	// SocketOption soptions;
// 	// TcpServerSocket! soc;
// 	// TcpSocket! tsoc;
// 	// TcpServerSocket server = tcp::listen("0.0.0.0", 8000, 69, REUSEADDR)!!;
// 	// TcpSocket client = tcp::accept(&server)!!;
// 	io::printfn("OK");
// 	// AddrInfo* add = net::addrinfo("google.fr", 80, net::os::AF_INET, net::os::SOCK_STREAM)!!;
// 	// SocketAddrIn* addptr = (SocketAddrIn*)add.ai_addr;
// 	// // io::printfn("%x", inaddrptr.s_addr);
// 	// char[16] ip;
// 	// inetntop(&addptr.sin_addr, &ip);
// 	String[16] ip;
// 	// net::get_ip_from_hostname("google.fr", (ZString)&ip);
// 	net::getipfromhostname("google.fr", &ip);
// 	io::printfn("%s", (ZString)&ip);
// 	// io::printfn("%s", (String)&ip);
// 	// while (true)
// 	// {
// 	// 	TcpSocket! client = net::tcp::accept(&server);
// 	// 	if(catch excuse = client) {
// 	// 		io::printfn("Cant accept %s", excuse);
// 	// 	}
// 	// 	else {
// 	// 		char[4096] buff; 
// 	// 		client.read(&buff)!!;
// 	// 		// io::printfn("Data\n%s", (String)&buff);
// 	// 		String[] http_data = ((String)&buff).split("\r\n");
// 	// 		foreach (idx, http_item : http_data)
// 	// 		{
// 	// 			io::printfn("%d", idx);
// 	// 			io::printfn("%s", http_item);	
// 	// 		}

// 	// 		TcpSocket sok = tcp::connect("188.114.97.0", 80)!!;
// 	// 		Request req;
// 	// 		req.init();
// 	// 		req.set_host("jsonplaceholder.typicode.com");
// 	// 		req.set_path("/todos/1");
// 	// 		char [409600] reqbuff;
// 	// 		// sok.write("GET /todos/1 HTTP/1.1\r\nHost: jsonplaceholder.typicode.com\r\nUser-Agent: curl/custom\r\n\r\n")!!;
// 	// 		io::printfn(req.to_string());
// 	// 		sok.write(req.to_string())!!;
// 	// 		sok.read(&reqbuff)!!;
// 	// 		client.write(&reqbuff)!!;
// 	// 		client.close()!!;
// 	// 	}
		
// 	// }
// 	// io::printn("Hello, World!");
// }
