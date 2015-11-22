class FinanceController < ApplicationController
    require 'date'

    # 翌月の家計簿作成するための新規作成画面を表示
    def new
        d = Date.today
        current_date = d.strftime("%Y%m")
        @finance = Finance.new
    end

    # 翌月の家計簿作成
    def create
        # リクエストパラメータからFinanceオブジェクト作成
        @finance = Finance.new(finance_param)
        # IDセット
        if params[:month].to_i < 10 then
            @finance[:id] = (params[:finance][:year].to_s + '0' + params[:finance][:month].to_s).to_i
        else
            @finance[:id] = (params[:finance][:year].to_s + params[:finance][:month].to_s).to_i
        end
        # 登録
        if @finance.save
            # render plain: params[:finance].inspect
            redirect_to @finance
        else
            render 'new'
        end
    end

    # 家計簿一覧
    def index
    end

    # 指定した年月の家計簿表示
    def show
        # @finance = Finance.find(params[:id])
    end

    # 家計簿作成時のパラメータチェック
    private
    def finance_param
        params.require(:finance).permit(:id, :year, :month, :total_revenue, :total_credit_payment, :other_spending, :total_spending, :description)
    end
end
