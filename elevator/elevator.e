note
	description : "Elevator application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	ELEVATOR


	create
		make

	feature {NONE} -- Initialization
		make
			local
				f1, f2, f3, f4, f5, f6: FLOOR
				c1: CABIN
			do
				create f1
				create f2
				create f3
				create f4
				create f5
				create f6
				floors := << f1, f2, f3, f4, f5, f6 >>
				create c1.make (f1, Current)
				cabins := << c1 >>
			end

	feature -- Attributes
		cabins: ARRAY[CABIN]
		floors: ARRAY[FLOOR]

	feature
		get_cabin: CABIN
			do
				Result := cabins[0]
					-- for now we have one-cabine implementation
			end

end
