# $OpenBSD: Makefile,v 1.5 2013/08/07 15:37:08 naddy Exp $
COMPONENT = kdrive
MODULES += base/xenocara

PERMIT_PACKAGE_CDROM=   Yes

XDEPS = lib/libxtrans lib/pixman lib/libX11 proto/glproto \
	proto/dri2proto lib/libdrm lib/libXdmcp lib/libGL \
	proto/xcmiscproto proto/bigreqsproto proto/videoproto \
	proto/compositeproto proto/recordproto proto/scrnsaverproto \
	proto/resourceproto lib/libxkbfile lib/libXv

EXTRA_SRC = xenocara/xserver



.include <bsd.port.mk>
