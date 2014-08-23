require_relative "contact"
require_relative "rolodex"

class CRM
	attr_accessor :contacts, :id

	def initialize
		@crm = Rolodex.new
		@id = id
	end

	def main_menu
		# As a user, I am presented with a prompt to 'add', 'modify', 'display all', 'display contact', display attribute', 'delete' and 'exit'.
		puts "[1] add"
		puts "[2] modify"
		puts "[3] display all"
		puts "[4] display contact"
		puts "[5] display attribute"
		puts "[6] delete"
		puts "[7] exit"
	end

	def print_menu
		main_menu
		puts "Please make a choice"
		user_choice = gets.to_i
		call_option(user_choice)
	end

	def call_option(user_choice)
		add_contact_menu if user_choice == 1
		modify if user_choice == 2
		@crm.display_all_contacts if user_choice == 3
		display_contact if user_choice == 4
		display_attribute if user_choice == 5
		@crm.delete if user_choice == 6
		puts "exit" if user_choice == 7
	end
	
	def add_contact_menu
		# As a user, if 'add' is typed, I am prompted to give my 'first name', 'last name', 'email' and 'notes'.
		
		puts "Add contact"

		puts "First name: "
		first_name = gets.chomp
		
		puts "Last name: "
		last_name = gets.chomp
		
		puts "Email: "
		email = gets.chomp
		
		puts "Notes: "
		notes = gets.chomp

		@crm.add_contact(first_name, last_name, email, notes)
	end


	def modify
		# As a user, if 'modify' is typed, I am prompted to enter a contact ID to be modifed
		# As a user, if 'modify' is typed, I am prompted to enter a contact attribute to be modified.
		puts "Contact ID?"
		user_choice = gets.to_i

		# As a user, when an attribute is entered, I am prompted to type 'yes' or 'no' to confirm my selection.
		puts "Are you sure? [Y] | [N]"
		confirm_choice = gets.chomp
		# As a user, if 'no' is typed, I am returned back to the main menu.
		if confirm_choice == "N" 
			main_menu
		
		# As a user, if 'yes' is typed, I am prompted to change 'id', 'firstname', 'lastname' and 'email'.
		else
		puts "Attribute? ([F] First name, [L] Last name, [E] Email, [N] Notes"
		attribute_to_modify = gets.chomp
		# As a user, when an attribute is entered, I am prompted to enter a new value for the attribute.
		puts "New value?"
		new_value = gets.chomp

		@crm.modify_contact(user_choice, attribute_to_modify, new_value)
		end
	end



	def display_all
		# As a user, if 'display all' is typed, I am shown all of the contacts that exist.
		@crm.display_all_contacts
	end

	def display_contact
		# As a user, if 'display contact' is typed, I am shown a particular contact.
		puts "Contact_ID?"
		user_choice = gets.to_i
		@crm.display_particular_contact(user_choice)
	end


	def display_attribute
		# As a user, if 'display attribute' is typed, I am prompted to enter an attribute so that I can see all of the contacts according to that attribute.
		puts "Attribute? [id] ID [F] First name [L] Last name [N] Notes"
		user_choice = gets.chomp



		if user_choice == "id" 
			puts "id #?"
			user_choice = gets.chomp
			@crm.display_info_by_attribute("by_id", user_choice)

		end

		if user_choice == "F"
		puts "First name?"
		user_choice = gets.chomp
		@crm.display_info_by_attribute("first_name", user_choice)
		end
		if user_choice == "L"
			puts "Last name?"
			user_choice = gets.chomp
			@crm.display_info_by_attribute("last_name", user_choice)
		end
		if user_choice == "N"
			puts "Notes?"
			user_choice = gets.chomp
			@crm.display_info_by_attribute("notes", user_choice)	
		end
	end

	def delete
		# As a user, if 'delete' is typed, I am prompted to enter an attribute value of the contact to be deleted.
	end

	def exit
		# As a user, if 'exit' is typed, I am exited out of the program and returned to the command line.
	end
end

@@session = CRM.new
@@session.print_menu