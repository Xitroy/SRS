note
	description: "Summary description for {BUTTON}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BUTTON

create
	make

feature -- Initialization
	make (init_elevator: ELEVATOR)
		require
			init_elevator /= VOID
		do
			elevator := init_elevator
		ensure
			elevator /= VOID
		end

feature -- Attributes

	elevator: ELEVATOR
			-- 	elevator which is seen since elevator created

feature
	summon(floor: FLOOR)
	require
		B1: floor /= VOID
		B2: elevator /= VOID
		B3: elevator.cabins.count > 0
	local
		cab: CABIN
	do
		unwrap
		cab := elevator.get_cabin()
		wrap
	end

end
