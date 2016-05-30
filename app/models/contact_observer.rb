class ContactObserver < ActiveRecord::Observer
	 observe Contact

	 def before_update(contact)
	 	contact.name.capitalize!
	 end
end
