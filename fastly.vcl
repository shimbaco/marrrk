sub vcl_recv {
  # log {"syslog 347IlFpfELIWozqoRqO1Ue Marrrk :: hoge "} req.http.User-Agent;
  if (req.url ~ "/no_cookie/") {
    unset req.http.Cookie;
  }

  if (req.http.User-Agent ~ "Mobile") {
    set req.http.X-Device = "Mobile";
  } else {
    set req.http.X-Device = "PC";
  }

  if (geoip.country_code) {
    log {"syslog 347IlFpfELIWozqoRqO1Ue Marrrk :: geoip.country_code: "} geoip.country_code;
    set req.http.X-Country-Code = geoip.country_code;
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
