require 

class CRM



	def main_menu
		# As a user, I am presented with a prompt to 'add', 'modify', 'display all', 'display contact', display attribute', 'delete' and 'exit'.
	end

	def print_menu

	end



	
	def add
		# As a user, if 'add' is typed, I am prompted to give my 'first name', 'last name', 'email' and 'notes'.	
	end


	def modify
		# As a user, if 'modify' is typed, I am prompted to enter a contact attribute to be modified.

		# As a user, when an attribute is entered, I am prompted to type 'yes' or 'no' to confirm my selection.

		# As a user, if 'yes' is typed, I am prompted to change 'id', 'firstname', 'lastname' and 'email'.

		# As a user, when an attribute is entered, I am prompted to enter a new value for the attribute.

		# As a user, if 'no' is typed, I am returned back to the main menu.
	end



	def display_all
		# As a user, if 'display all' is typed, I am shown all of the contacts that exist.
	end

	def display_contact
		# As a user, if 'display contact' is typed, I am shown a particular contact.
	end


	def display_attribute
		# As a user, if 'display attribute' is typed, I am prompted to enter an attribute so that I can see all of the contacts according to that attribute.
	end

	def delete
		# As a user, if 'delete' is typed, I am prompted to enter an attribute value of the contact to be deleted.
	end

	def exit
		# As a user, if 'exit' is typed, I am exited out of the program and returned to the command line.
	end
end
