class Calendar
    include Cequel::Record

    key :id, :int
    column :year, :int
    column :month, :int
end
