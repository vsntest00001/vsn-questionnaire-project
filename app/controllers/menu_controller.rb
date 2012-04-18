# coding: utf-8

class MenuController < ApplicationController
    def index
    end

    # ボタン押下後のメソッド
    def sendpage
        sendInputValue = params[:send_input]
        sendTotalValue = params[:send_total]
        sendCreateListValue = params[:send_create_list]
        sendLogoutValue = params[:send_loguout]

        # パラメータがある場合。
        if sendInputValue
            puts sendValue
        end
        if sendTotalValue
             puts sendValue
        end
        if sendCreateListValue
            # 指定のページにリダイレクトする。
            redirect_to :controller => :create_list
        end
        if sendLogoutValue
            puts sendValue
        end
    end
end
