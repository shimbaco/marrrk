class NoCookie::PagesController < NoCookie::ApplicationController
  def ua
    response.headers["Vary"] = "User-Agent"
  end
end
