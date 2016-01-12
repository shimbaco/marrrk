class Api::BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end
end
