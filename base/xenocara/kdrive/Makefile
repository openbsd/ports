# $OpenBSD: Makefile,v 1.4 2013/03/17 13:32:21 espie Exp $
COMPONENT = kdrive
ONLY_FOR_ARCHS = ${GCC3_ARCHS} ${GCC4_ARCHS}
MODULES += base/xenocara

PERMIT_PACKAGE_CDROM=   Yes

XDEPS = lib/libxtrans lib/pixman lib/libX11 proto/glproto \
	proto/dri2proto lib/libdrm lib/libXdmcp lib/libGL \
	proto/xcmiscproto proto/bigreqsproto proto/videoproto \
	proto/compositeproto proto/recordproto proto/scrnsaverproto \
	proto/resourceproto lib/libxkbfile lib/libXv

EXTRA_SRC = xenocara/xserver



.include <bsd.port.mk>
