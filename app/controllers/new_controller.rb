class NewController < ApplicationController
    def index

    end

    def new_confirm
    isCheck = true
    ## 入力チェック成功時、確認画面に遷移する。
    if isCheck == true
        redirect_to :controller => :new_confirm
    end
    ## 入力チェック失敗時、最初の画面に遷移する。
    if isCheck == false

    end

    end
end
