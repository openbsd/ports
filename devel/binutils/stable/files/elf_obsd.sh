LIB_PATH=/usr/lib

case "${target}" in
*-*-openbsd[0-2].* | *-*-openbsd3.[0-2])
   ;;
*)
   PAD_RO=
   RODATA_PADSIZE=${MAXPAGESIZE}
   RODATA_ALIGN=". = ALIGN(${RODATA_PADSIZE}) + (. & (${RODATA_PADSIZE} - 1))"
   PAD_GOT=
   PAD_PLT=
   ;;
esac
