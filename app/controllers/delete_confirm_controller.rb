class DeleteConfirmController < ApplicationController
    def index

    end

    # ボタン押下後のメソッド
    def sendpage
        sendCreateListValue = params[:send_create_list]
        senddeleteValue = params[:send_delete]

        # パラメータがある場合。
        if sendCreateListValue
            create_list
        end
        if senddeleteValue
            delete
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
    def delete
        isCheck = true
        ## 入力チェック成功時、確認画面に遷移する。
        if isCheck == true
            redirect_to :controller => :delete_commit
        end
        ## 入力チェック失敗時、最初の画面に遷移する。
        if isCheck == false
        end
    end
end
