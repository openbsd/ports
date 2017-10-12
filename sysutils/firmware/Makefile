# $OpenBSD: Makefile,v 1.11 2017/10/12 09:53:06 patrick Exp $

# XXX
#
# This is a special-purpose directory. Packages produced from this should
# not be included in package directories on normal mirrors, but only on
# firmware.openbsd.org mirrors and installed by fw_update.
#
# PERMIT_* should be set so that packages produced during bulk builds do
# not get included in the main package directories.
#
# XXX

# If adding drivers, also sync the possible_drivers list in OpenBSD/FwUpdate.pm

     SUBDIR =
     SUBDIR += acx
     SUBDIR += athn
     SUBDIR += bwfm
     SUBDIR += bwi
     SUBDIR += ipw
     SUBDIR += iwi
     SUBDIR += iwm
     SUBDIR += iwn
     SUBDIR += malo
     SUBDIR += otus
     SUBDIR += pgt
     SUBDIR += radeondrm
     SUBDIR += rsu
     SUBDIR += rtwn
     SUBDIR += uath
     SUBDIR += ulpt
     SUBDIR += upgt
     SUBDIR += urtwn
     SUBDIR += uvideo
     SUBDIR += vmm
     SUBDIR += wpi

.include <bsd.port.subdir.mk>
