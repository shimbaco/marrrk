class NoCookie::PagesController < NoCookie::ApplicationController
  def ua
    response.headers["Vary"] = "X-User-Agent"
    response.headers["X-User-Agent"] = request.headers["X-User-Agent"]
  end
end
