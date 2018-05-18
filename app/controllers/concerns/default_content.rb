module DefaultContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  private

  def set_page_defaults
    @page_title = 'Katherine Ebel | Portfolio'
    @seo_keywords = 'Katherine Ebel Developer Portfolio'
  end
end