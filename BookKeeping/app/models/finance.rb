class Finance
    include Cequel::Record

    key :id, :text
    column :year, :int
    column :month, :int
    column :total_revenue, :int, default: 0
    column :total_spending, :int, default: 0
    column :total_credit_payment, :int, default: 0
    column :other_spending, :int, default: 0
    column :rk_credit_payment, :int, default: 0
    column :rk_spending, :int, default: 0
    column :mt_credit_payment, :int, default: 0
    column :mt_spending, :int, default: 0
    column :rest, :int, default: 0
    column :description, :text
end
