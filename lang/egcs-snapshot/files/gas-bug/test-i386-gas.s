# check that as recognizes __GLOBAL_OFFSET_TABLE_
L1:
	addl $__GLOBAL_OFFSET_TABLE_+[.-L1],%ebx
