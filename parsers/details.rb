# initialize nokogiri
nokogiri = Nokogiri.HTML(content)
# get the seller username
seller = nokogiri.at_css('div.d-stores-info-categories__container__info__section > h2')&.text
# seller = nokogiri.at_css('.x-sellercard-atf_main span.ux-textspans[0]')&.text
# seller = nokogiri.at_css('.si-inner .mbg-nw')&.text

# get the seller's feedback 
feedback = nokogiri.at_css('div.d-stores-info-categories__container__info__section > div:nth-child(2)')&.text
# feedback = nokogiri.at_css('.x-sellercard-atf_main .ux-textspans.ux-textspans--PSEUDOLINK')[0]&.text
# raise 'something happen' if feedback.text.strip == ''
# puts feedback

# save it into outputs
outputs << {
    _collection: 'products',
    title: page['vars']['title'],
    price: page['vars']['price'],
    img_src: page['vars']['img_src'],
    seller: seller,
    feedback: feedback
}
#LISTING_FRAME_MODULE > div > div.d-stores-info-categories__container > div.d-stores-info-categories__container__info__section
#LISTING_FRAME_MODULE > div > div.d-stores-info-categories__container > div.d-stores-info-categories__container__info__section > div:nth-child(2)
#LISTING_FRAME_MODULE > div > div.d-stores-info-categories__container > div.d-stores-info-categories__container__info__section > h2
# puts outputs