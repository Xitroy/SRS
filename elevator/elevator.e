note
	description : "Elevator application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	ELEVATOR

feature {NONE} -- Attributes

	id: INTEGER
		-- ID of an elevator.


feature {NONE} -- Initialization

	choose_cabin
		do
			Result := 1
		end

end
