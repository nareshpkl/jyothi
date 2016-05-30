class Supplier < ActiveRecord::Base
	has_one :account    #Supplier.first.account.balance
end
