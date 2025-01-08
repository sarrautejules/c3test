module main;
import std::io;
import std::net;
import http;
import net;

fn void main(String[] args)
{
	String[16] ip;
	if(args.len > 1) {
		io::printfn("OK arg %s", args[1]);
		net::getipfromhostname(args[1], &ip);
	}
	else {
		net::getipfromhostname("google.fr", &ip);
	}
	io::printfn("%s", (ZString)&ip);
}
