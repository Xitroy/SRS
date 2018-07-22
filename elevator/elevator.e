note
	description : "Elevator application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	ELEVATOR


	create
		make

	feature -- Attributes
		cabins: ARRAY[CABIN]
		floors: ARRAY[FLOOR]
		max_floor: FLOOR


	feature {NONE} -- Initialization
		make
			do

			end

	feature -- Initialization

		get_cabin: CABIN
			do
				Result := cabins[0]
					-- for now we have one-cabine implementation
			end

end
