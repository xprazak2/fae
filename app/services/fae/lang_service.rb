module Fae
  class LangService
    attr_reader :admin_lang, :page_lang

    def self.instance
      @@singleton ||= new
    end

    def update_user_lang(user)
      I18n.locale = user.nil? ? :en : user.language
    end

    def page_lang=(lang)
      return @page_lang if @page_lang == lang
      @page_lang = lang
    end

    private_class_method :new
  end
end
