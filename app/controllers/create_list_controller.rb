class CreateListController < ApplicationController
    def initialize
        @questionaire = []
    end

    def index
        @questionaire = [
                            {
                                :validstatus => true ,
                                :questid => "10",
                                :questname => "アンケート１"
                            },
                            {
                                :validstatus => false ,
                                :questid => "20",
                                :questname => "アンケート２"
                            },
                            {
                                :validstatus => true ,
                                :questid => "30",
                                :questname => "アンケート３"
                            }
                        ]

    end

    # ボタン押下後のメソッド
    def sendpage
        menuValue = params[:send_menu]
        newValue = params[:send_new]
        editValue = params[:send_edit]
        delete_confirmValue = params[:send_delete_confirm]
        invalidValue = params[:send_invalid]
        validValue = params[:send_valid]

        # パラメータがある場合。
        if editValue
            edit
        end
        if delete_confirmValue
            delete_confirm
        end
        if invalidValue
             invalid
        end
        if validValue
             valid
        end
        if newValue
             tonew
        end
        if menuValue
             tomenu
        end
    end

    def tonew
        questid = params[:questid]
        isCheck = true
        ## 入力チェック成功時、確認画面に遷移する。
        if isCheck == true
            redirect_to :controller => :new
        end
        ## 入力チェック失敗時、最初の画面に遷移する。
        if isCheck == false
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

    def delete_confirm
        questid = params[:questid]
        isCheck = true
        ## 入力チェック成功時、確認画面に遷移する。
        if isCheck == true
            redirect_to :controller => :delete_confirm , :questid  => questid
        end
        ## 入力チェック失敗時、最初の画面に遷移する。
        if isCheck == false
        end
    end

    def invalid
        questid = params[:questid]
        isCheck = true
        ## 入力チェック成功時、確認画面に遷移する。
        if isCheck == true
            redirect_to :controller => :create_list , :questid  => questid
        end
        ## 入力チェック失敗時、最初の画面に遷移する。
        if isCheck == false
        end
    end

    def valid
        questid = params[:questid]
        isCheck = true
        ## 入力チェック成功時、確認画面に遷移する。
        if isCheck == true
            redirect_to :controller => :create_list , :questid  => questid
        end
        ## 入力チェック失敗時、最初の画面に遷移する。
        if isCheck == false
        end
    end

    def tomenu
        questid = params[:questid]
        isCheck = true
        ## 入力チェック成功時、確認画面に遷移する。
        if isCheck == true
            redirect_to :controller => :menu
        end
        ## 入力チェック失敗時、最初の画面に遷移する。
        if isCheck == false
        end
    end
end
