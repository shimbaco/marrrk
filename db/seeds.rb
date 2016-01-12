user = User.where(email: "me@shimba.co").first_or_create do |u|
  u.password = "hellohello"
end

user.bookmarks.where(url: "https://www.google.com", title: "Google").first_or_create
user.bookmarks.where(url: "https://twitter.com", title: "Twitter").first_or_create
user.bookmarks.where(url: "https://github.com", title: "GitHub").first_or_create
user.bookmarks.where(url: "https://www.fastly.com", title: "Fastly").first_or_create
user.bookmarks.where(url: "https://annict.com", title: "Annict").first_or_create
