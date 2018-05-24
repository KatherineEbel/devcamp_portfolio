module PortfoliosHelper
  extend ActiveSupport::Concern

  def image_generator(height, width)
    "http://via.placeholder.com/#{height}x#{width}"
  end

  def portfolio_img(img, type)
    if img.file.nil?
      if type == 'thumb'
        image_generator(350, 200)
      else
        image_generator(600, 400)
      end
    else
      img.url
    end
  end
end

