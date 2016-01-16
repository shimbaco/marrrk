class Api::BookmarksController < ApplicationController
  before_action :set_cache_control_headers, only: [:index]

  def index
    @bookmarks = Bookmark.all
    set_surrogate_key_header("bookmarks", @bookmarks.map(&:record_key))
  end
end
