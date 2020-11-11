#! /usr/bin/gawk -f

# --------------------------------------------------------------------------
# Auxiliary script for regression testing environment
#
# Modify code listing files generated by assembler, file extension is `.lst'
# --------------------------------------------------------------------------


# Remove the firts line in the code listin
1 == NR {
	next
}

# Remove symbol table
/ASSEMBLY COMPLETE/ {
	exit(0)
}

# Keep everyting else ...
{
	print($0)
}