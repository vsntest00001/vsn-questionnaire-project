class NewController < ApplicationController
    def index

    end

    # ボタン押下後のメソッド
    def sendpage
        send_confirmValue = params[:send_new_confirm]
        sendCreateListValue = params[:send_create_list]

        # パラメータがある場合。
        if send_confirmValue
            new_confirm
        end
        if sendCreateListValue
            create_list
        end
    end

    def create_list
        isCheck = true
        ## 入力チェック成功時、確認画面に遷移する。
        if isCheck == true
            redirect_to :controller => :create_list
        end
        ## 入力チェック失敗時、最初の画面に遷移する。
        if isCheck == false

        end

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
