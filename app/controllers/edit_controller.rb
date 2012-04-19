class EditController < ApplicationController
    def index

    end

    # ボタン押下後のメソッド
    def sendpage
        edit_confirmValue = params[:send_edit_confirm]
        sendCreateListValue = params[:send_create_list]

        # パラメータがある場合。
        if edit_confirmValue
            confirm
        end
        if sendCreateListValue
            create_list
        end
    end

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
