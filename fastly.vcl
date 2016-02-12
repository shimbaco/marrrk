sub vcl_recv {
  # log {"syslog 347IlFpfELIWozqoRqO1Ue Marrrk :: hoge "} req.http.User-Agent;
  if (req.url ~ "/no_cookie/") {
    unset req.http.Cookie;
  }
  log {"syslog 347IlFpfELIWozqoRqO1Ue Marrrk :: req.http.User-Agent: "} req.http.User-Agent;
  # if (req.http.User-Agent ~ "Mobile") {
  #   set req.http.X-Device = "Mobile";
  # } else {
  #   set req.http.X-Device = "PC";
  # }
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
