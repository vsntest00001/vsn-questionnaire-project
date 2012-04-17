class ApplicationController < ActionController::Base
    # 日本語入力
    before_filter :set_charset

    private
    def set_charset
       headers["Content-Type"] = "text/html;
       charset=UTF-8"
    end

    protect_from_forgery
end
