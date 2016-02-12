module NoCookie
  class ApplicationController < ::ApplicationController
    before_action :set_cache_control_headers
  end
end
