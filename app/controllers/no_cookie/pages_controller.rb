class NoCookie::PagesController < NoCookie::ApplicationController
  def ua
    response.headers["Vary"] = "X-Device"
    response.headers["X-Device"] = request.headers["X-Device"]
  end

  def geo
    response.headers["Vary"] = "X-Country-Code"
    response.headers["X-Country-Code"] = request.headers["X-Country-Code"]
  end
end
