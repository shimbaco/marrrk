class NoCookie::PagesController < NoCookie::ApplicationController
  def ua
    response.headers["Vary"] = "X-Device"
    response.headers["X-Device"] = browser.mobile? ? "Mobile" : "PC"
  end
end
