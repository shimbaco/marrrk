sub vcl_recv {
  # log {"syslog 347IlFpfELIWozqoRqO1Ue Marrrk :: hoge "} req.http.User-Agent;
  if (req.url ~ "/no_cookie/") {
    unset req.http.Cookie;
  }
  log {"syslog 347IlFpfELIWozqoRqO1Ue Marrrk :: req.http.User-Agentt: "} req.http.User-Agentt;
  if (req.http.User-Agentt ~ "Mobile") {
    set req.http.X-User-Agent = "Mobile";
  } else {
    set req.http.X-User-Agent = "PC";
  }
#FASTLY recv
}

sub vcl_fetch {
#FASTLY fetch
}

sub vcl_deliver {
#FASTLY deliver
}

sub vcl_miss {
#FASTLY miss
}
