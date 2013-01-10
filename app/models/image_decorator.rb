require 'paperclip_processors/watermark'

Spree::Image.class_eval do

  has_attached_file :attachment
                    :processors => [:thumbnail, :watermark],
                    :styles => { :mini => '48x48>',
                    :small => '100x100>',
                    :product => '160x160#', 
                    :large => { :geometry => '460x680>',
                    :watermark_path => "#{Rails.root}/public/spree/Genius.png",
                    :position => 'SouthWest',
                    :format => :png
                      }
                    },
                    :default_style => :product,
                    :url => '/spree/products/:id/:style/:basename.:extension',
                    :path => ':rails_root/public/spree/products/:id/:style/:basename.:extension'

end