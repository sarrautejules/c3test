module http;
import std::io;
import std::net;
import std::collections::map;

struct Request {
    String _version;
    String _verb;
    String _path;
    String _host;
    map::HashMap(<String, String>)* _headers;
}

fn Request* Request.init(&self) {
    self._version = "1.1";
    self._verb = "GET";
    return self;
}

fn Request* Request.set_path(&self, String path) {
    self._path = path;
    return self;
}

fn Request* Request.set_host(&self, String host) {
    self._host = host;
    return self;
}

fn String Request.to_string(&self) {
    String raw_request = `%s %s HTTP/%s
Host: %s
User-Agent: http/c3lang

`;
    String processed_request = string::new_format(raw_request, self._verb, self._path, self._version, self._host);
    return processed_request;
}

fn void test(String[] args) {
    TcpSocket sok = tcp::connect("188.114.97.0", 80)!!;
    Request req;
    req.init();
    req.set_host("jsonplaceholder.typicode.com");
    req.set_path("/todos/1");
    char [409600] buff;
    // sok.write("GET /todos/1 HTTP/1.1\r\nHost: jsonplaceholder.typicode.com\r\nUser-Agent: curl/custom\r\n\r\n")!!;
    io::printfn(req.to_string());
    sok.write(req.to_string())!!;
    sok.read(&buff)!!;
    io::printfn("%s", (String)&buff);
    sok.close()!!;
}