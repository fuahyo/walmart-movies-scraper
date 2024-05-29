nokogiri = Nokogiri.HTML(content)

pagination_links = nokogiri.css('[data-testid="item-stack"] div.b--near-white')
pagination_links.each do |link|
  puts link

  url = URI.join('https://www.walmart.com', link['href']).to_s
  pages << {
      url: url,
      page_type: 'listings',
      fetch_type: 'browser',
      vars: {}
    }
end
