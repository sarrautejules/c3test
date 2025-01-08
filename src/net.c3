module net;

extern fn void get_ip_from_hostname(ZString hostname, ZString resolved_ip);

fn void getipfromhostname(String hostname, String[16]* resolved_ip) {
    get_ip_from_hostname((ZString)hostname, (ZString)resolved_ip);
}