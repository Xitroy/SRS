note
	description: "Summary description for {CABIN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CABIN

create
	make

feature -- Initialization
	make (init_floor: FLOOR; init_elevator: ELEVATOR)
	do
		current_floor := init_floor
		target_floor := init_floor
		is_moving := false
		is_doors_open := true
		elevator := init_elevator
    ensure
	    floor_set: current_floor /= init_floor
	    target_floor_set: target_floor = init_floor
	    not_moving: is_moving = false
	    opened: is_doors_open = true
	    elevator_set: elevator = init_elevator
    end

feature -- Attributes

	elevator: ELEVATOR
			-- 	elevator which is seen since elevator created

	current_floor: FLOOR
			-- 	current floor of a cabin.

	target_floor: FLOOR

	is_moving: BOOLEAN
			-- 	state of a cabin.

	is_doors_open: BOOLEAN
			-- 	state of a doors.

	buttons: ARRAY[BUTTON]

feature
	move
		do
			-- from
			-- 		i :=
			-- until

			-- loop
			-- 	target_floor != current_floor
			-- end
		end

	move_one(delta: INTEGER)
		do
			if delta>0 then
				current_floor := elevator.floors[current_floor.id+1]
			end
			if delta<0 then
				current_floor := elevator.floors[current_floor.id-1]
			end
		end

	open_doors
		do

		end

	close_doors
		do

		end

	get_position: INTEGER
		do
			Result := current_floor.id
		end

	get_state: BOOLEAN
		do
			Result := is_moving
		end
end
