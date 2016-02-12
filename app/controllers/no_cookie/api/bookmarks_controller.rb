module NoCookie
  module Api
    class BookmarksController < NoCookie::ApplicationController
      def index
        @bookmarks = Bookmark.all
        set_surrogate_key_header("bookmarks", @bookmarks.map(&:record_key))
      end
    end
  end
end
