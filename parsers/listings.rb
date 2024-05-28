# nokogiri = Nokogiri.HTML(content)
# pagination_links = nokogiri.css('ul.paginator-list li a')
# pagination_links.each do |link|
#   url = URI.join('https://www.walmart.com', link['href']).to_s
#   pages << {
#       url: url,
#       page_type: 'listings',
#       fetch_type: 'browser',
#       vars: {}
#     }
# end
