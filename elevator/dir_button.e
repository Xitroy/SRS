note
	description: "Summary description for {DIR_BUTTON}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DIR_BUTTON

	inherit
		BUTTON

	feature -- Attributses

		direction:STRING
			-- direction of button

		floor: FLOOR
			-- 	floor of a button.

	feature
		push
			do
				elevator := floor.elevator
				cabin = elevator.choose_cabin(floor)
			end

end
