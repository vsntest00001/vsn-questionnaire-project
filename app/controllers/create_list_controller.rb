class CreateListController < ApplicationController
    def index

    end

    def delete_confirm
        isCheck = true
        ## 入力チェック成功時、確認画面に遷移する。
        if isCheck == true
            redirect_to :controller => :delete_confirm
        end
        ## 入力チェック失敗時、最初の画面に遷移する。
        if isCheck == false
        end
    end

    def invalid
        isCheck = true
        ## 入力チェック成功時、確認画面に遷移する。
        if isCheck == true
            redirect_to :controller => :create_list
        end
        ## 入力チェック失敗時、最初の画面に遷移する。
        if isCheck == false
        end
    end

    def valid
        isCheck = true
        ## 入力チェック成功時、確認画面に遷移する。
        if isCheck == true
            redirect_to :controller => :create_list
        end
        ## 入力チェック失敗時、最初の画面に遷移する。
        if isCheck == false
        end
    end
end
