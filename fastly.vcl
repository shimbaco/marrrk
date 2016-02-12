sub vcl_recv {
  # log {"syslog 347IlFpfELIWozqoRqO1Ue Marrrk :: hoge "} req.http.User-Agent;
  if (req.url ~ "/no_cookie/") {
    unset req.http.Cookie;
  }
  if (req.http.User-Agent) {
    if (req.http.User-Agent ~ "Mobile") {
      set req.http.User-Agent = "Mobile";
    } else {
      set req.http.User-Agent = "PC";
    }
  }
#FASTLY recv
}

sub vcl_fetch {
  log {"syslog 347IlFpfELIWozqoRqO1Ue Marrrk :: beresp.http.User-Agent: "} beresp.http.User-Agent;
#FASTLY fetch
}

sub vcl_deliver {
#FASTLY deliver
}

sub vcl_miss {
#FASTLY miss
}
