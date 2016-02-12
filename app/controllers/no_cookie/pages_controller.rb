class NoCookie::PagesController < NoCookie::ApplicationController
  def ua
    response.headers["Vary"] = "X-User-Agent"
  end
end
