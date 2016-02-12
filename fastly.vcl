sub vcl_recv {
  if (req.http.User-Agent) {
    if (req.http.User-Agent ~ "Mobile") {
      set req.http.User-Agent = "Mobile";
    } else {
      set req.http.User-Agent = "PC";
    }
  }
#FASTLY recv
}

sub vcl_miss {
  # まい かすたむ こーど
  if (req.http.User-Agent ~ "Googlebot") {
    set req.backend = F_addr_marrrk_herokuapp_com;
  }
#FASTLY miss
}
