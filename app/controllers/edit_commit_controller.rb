class EditCommitController < ApplicationController
    def initialize
    end

    ## 更新完了画面
    def index

    end

    ## 作成完了画面
    def create

    end

    # ボタン押下後のメソッド
    def sendpage
        sendCreateListValue = params[:send_create_list]

        # パラメータがある場合。
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
end
