class NoCookie::PagesController < NoCookie::ApplicationController
  def ua
    response.headers["Vary"] = "X-Device"
    response.headers["X-Device"] = request.headers["X-Device"]
  end
end
