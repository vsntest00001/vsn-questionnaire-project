class EditController < ApplicationController
    layout ""
    def initialize
    end

    # 更新モード
    def index

    end

    # 作成モード
    def create

    end

    # ボタン押下後のメソッド
    def sendpage
        new_confirmValue = params[:send_new_confirm]
        edit_confirmValue = params[:send_edit_confirm]
        sendCreateListValue = params[:send_create_list]

        # パラメータがある場合。
        if new_confirmValue
            # 更新確認系の処理を実行
            new_confirm
        end
        if edit_confirmValue
            # 更新確認系の処理を実行
            confirm
        end
        if sendCreateListValue
            # 一覧ページへ遷移
            create_list
        end
    end

    ## 更新時実行処理
    def new_confirm
        isCheck = true
        ## 入力チェック成功時、確認画面に遷移する。
        if isCheck == true
            redirect_to :controller => :edit_confirm , :action => :create
        end
        ## 入力チェック失敗時、最初の画面に遷移する。
        if isCheck == false

        end
    end

    ## 更新時実行処理
    def confirm
        questid = params[:questid]
        isCheck = true
        ## 入力チェック成功時、確認画面に遷移する。
        if isCheck == true
            redirect_to :controller => :edit_confirm , :questid  => questid
        end
        ## 入力チェック失敗時、最初の画面に遷移する。
        if isCheck == false

        end
    end

    ## 更新時実行処理
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

end
