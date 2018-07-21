note
	description: "Summary description for {CABIN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CABIN

create
	make

feature {NONE} -- Attributes

	id: INTEGER
			-- ID of a cabin.

	elevator: ELEVATOR
			-- ELEVATOR.

	doors: DOORS
			-- DOORS OF CABIN.

	current_floor: FLOOR
			-- 	current floor of a cabin.

	is_moving: BOOLEAN
			-- 	state of a cabin.

feature
	make
		do
			create doors.make
		end

feature
	get_doors_state
		do
			Result := doors.is_open
		end

	open_doors
		do
			doors.open
		end

	close_doors
		do
			doors.close
		end

	move(n: INTEGER)
		do
			is_moving := True
			-- target_floor := FLOOR.get_by_id(number)
			close_doors
			-- while current_floor.id != target_floor.id: move_up or move_down
			open_doors
			is_moving := False
			current_floor = target_floor
		end


end
