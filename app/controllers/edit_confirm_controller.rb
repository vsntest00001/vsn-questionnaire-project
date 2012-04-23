class EditConfirmController < ApplicationController
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
        sendnewValue = params[:send_new]
        sendeditValue = params[:send_edit]
        sendcommitValue = params[:send_commit]
        sendcreateValue = params[:send_create]

        # パラメータがある場合。
        if sendnewValue
            tonew
        end
        if sendeditValue
            edit
        end
        if sendcreateValue
            create_commit
        end
        if sendcommitValue
            commit
        end
    end

    ## 作成画面へ遷移
    def tonew
        isCheck = true
        ## 入力チェック成功時、確認画面に遷移する。
        if isCheck == true
            redirect_to :controller => :edit , :action => :create
        end
        ## 入力チェック失敗時、最初の画面に遷移する。
        if isCheck == false
        end
    end

    ## 更新画面へ遷移
    def edit
        questid = params[:questid]
        isCheck = true
        ## 入力チェック成功時、確認画面に遷移する。
        if isCheck == true
            redirect_to :controller => :edit , :questid  => questid
        end
        ## 入力チェック失敗時、最初の画面に遷移する。
        if isCheck == false
        end
    end

    ## 更新完了画面へ遷移
    def commit
        isCheck = true
        ## 入力チェック成功時、確認画面に遷移する。
        if isCheck == true
            redirect_to :controller => :edit_commit
        end
        ## 入力チェック失敗時、最初の画面に遷移する。
        if isCheck == false

        end
    end

    ## 作成完了画面へ遷移
    def create_commit
        isCheck = true
        ## 入力チェック成功時、確認画面に遷移する。
        if isCheck == true
            redirect_to :controller => :edit_commit , :action => :create
        end
        ## 入力チェック失敗時、最初の画面に遷移する。
        if isCheck == false

        end
    end

end
