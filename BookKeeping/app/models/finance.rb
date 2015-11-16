class Finance
    include Cequel::Record

    key :id, :text
    column :total_revenue, :int
    column :total_spending, :int
    column :total_credit_payment, :int
    column :rk_credit_payment, :int
    column :rk_spending, :int
    column :mt_credit_payment, :int
    column :mt_spending, :int
    column :rest, :int
    column :description, :text
end
