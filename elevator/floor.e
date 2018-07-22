note
	description: "Summary description for {FLOOR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	FLOOR

create
	make

feature -- Initialization
	make(init_id: INTEGER)
		do
			id := init_id
		end

feature -- Attributes

	id: INTEGER
		-- ID of a floor.

	button_up: BUTTON

	button_down: BUTTON

end
