class FinanceController < ApplicationController
    # 翌月の家計簿作成するための新規作成画面を表示
    def new
    end

    # 翌月の家計簿作成
    def create
        @finance = Finance.new(params[:finance])
        @finance.save
        redirect_to @finance
    end

    # 家計簿一覧
    def index
    end

    # 指定した年月の家計簿表示
    def show
        @finance = Finance.find(params[:id])
    end

    # 家計簿作成時のパラメータチェック
    private
    def finance_param
        params.require(:finance).permit(:id, :total_revenue, :description)
    end
end
