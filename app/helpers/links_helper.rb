module LinksHelper

  def shorten(link)
    (link.title.blank? ? 'toon-link' : link.title) + "/#{link.shorten_url}"
  end
end
