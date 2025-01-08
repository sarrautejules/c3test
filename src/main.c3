module main;
import std::io;
import std::net;
import http;
import net;

fn void main(String[] args)
{
	io::printfn("OK");
	String[16] ip;
	net::getipfromhostname("google.fr", &ip);
	io::printfn("%s", (ZString)&ip);
}
