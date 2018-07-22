note
	description: "Summary description for {BUTTON}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BUTTON

feature -- Attributes

	elevator: ELEVATOR
			-- 	elevator which is seen since elevator created

feature
	summon(floor: FLOOR)
	do
		elevator.get_cabin.move(floor)
	end

end
