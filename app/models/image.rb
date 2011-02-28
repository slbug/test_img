class Image < ActiveRecord::Base
  validates :title, :presence => true, :length => { :minimum => 3 }
  validates :url, :presence => true, :length => { :minimum => 10 }

  before_save :ensure_uid

  private

    def ensure_uid
      if uid.blank?
        allowed_symbols = ('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a
        self.uid = (0...5).collect { allowed_symbols[Kernel.rand(allowed_symbols.length)] }.join
      end
    end
end
