class EditConfirmController < ApplicationController
  def index

  end

    # ボタン押下後のメソッド
    def sendpage
        sendeditValue = params[:send_edit]
        sendcommitValue = params[:send_commit]

        # パラメータがある場合。
        if sendeditValue
            edit
        end
        if sendcommitValue
            commit
        end
    end

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
end
