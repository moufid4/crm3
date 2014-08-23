class Rolodex
	attr_accessor :contacts, :id
	def initialize
		# As a developer, I should implement the Rolodex class as an array that accepts new contacts.
		@contacts = {
		1000 => {
			first_name: "Ross",
			last_name: "Johnson",
			email: "rossjohnson@hotmail.com",
			note: "Such a cool dude."
		},
		1001 => {
			first_name: "Adrian",
			last_name: "Carton de Wiart",
			email: "adrianwiart@gmail.com",
			note: "Even cooler."
		},	
		1002 => {
			first_name: "Moufid",
			last_name: "Larbi Bouamrane",
			email: "moufid4@gmail.com",
			note: "Even cooler."
		}	
		}
		@contacts = contacts
		@id = 1002
		@id = id
	end
	
	def add_contact(first_name, last_name, email, notes)
		@id += 1
		@contacts[id] = {first_name: first_name, last_name: last_name, email: email, notes: notes}
		puts "#{@contacts}"
		@@session.print_menu
	end

	def modify_contact(id, attribute_to_modify, new_value)
		@contacts[id][:first_name] = new_value if attribute_to_modify == "F" || attribute_to_modify == "f"
		@contacts[id][:last_name] = new_value if attribute_to_modify == "L" || attribute_to_modify == "l"
		@contacts[id][:email] = new_value if attribute_to_modify == "E" || attribute_to_modify == "e"
		@contacts[id][:notes] = new_value if attribute_to_modify == "N" || attribute_to_modify == "n"
		@@session.print_menu
	end

	def display_all_contacts
		puts "#{@contacts}"
		@@session.print_menu
		
	end

	def display_particular_contact(user_choice)
		puts "#{@contacts[user_choice]}"
		@@session.print_menu

	end

	def display_info_by_attribute(attribute, user_choice)
		
		if attribute == "by_id"
			@contacts.each do |fd, value|
				if fd == user_choice.to_i
				puts "#{value}" # if fd = user_choice.to_i
				end
			end
		end

		if attribute == "first_name"
			@contacts.each do |key, contact|
				contact.each do |key2, value|
					puts "#{contact}" if key2 == "first_name" || value == user_choice 
				end
			end
		end

		if attribute == "last_name"
			@contacts.each do |key, contact|
				contact.each do |key2, value|
					puts "#{contact}" if key2 == "last_name" || value == user_choice 
				end
			end
		end

		if attribute == "notes"
			@contacts.each do |key, contact|
				contact.each do |key2, value|
					puts "#{contact}" if key2 == "notes" || value == user_choice 
				end
			end
		end

		@@session.print_menu
	
	end

	def delete_contact(user_choice)
		@contacts.delete(user_choice)
		@@session.print_menu		
	end

end