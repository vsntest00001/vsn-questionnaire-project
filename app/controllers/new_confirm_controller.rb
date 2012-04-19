class NewConfirmController < ApplicationController
    def index

    end

    # ボタン押下後のメソッド
    def sendpage
        newValue = params[:send_new]
        commitValue = params[:send_commit]

        # パラメータがある場合。
        if newValue
            sendnew
        end
        if commitValue
            new_commit
        end
    end

  def sendnew
      isCheck = true
      ## 入力チェック成功時、確認画面に遷移する。
      if isCheck == true
          redirect_to :controller => :new
      end
      ## 入力チェック失敗時、最初の画面に遷移する。
      if isCheck == false

      end
  end

  def new_commit
    isCheck = true
    ## 入力チェック成功時、確認画面に遷移する。
    if isCheck == true
        redirect_to :controller => :new_commit
    end
    ## 入力チェック失敗時、最初の画面に遷移する。
    if isCheck == false

    end

  end
end
