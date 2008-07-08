module Rads
  module ViewHelpers
    def self.included(base)
      base.extend(ClassMethods)
    end
  
    def rads_url(banner_id)
      banner = RadsBanner.find(banner_id)
      banner.rads_banner_stats[0].clicks += 1
      banner.rads_banner_stats[0].save
      return banner.url
    end
  end
end