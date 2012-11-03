# $OpenBSD: Makefile,v 1.2 2012/11/03 09:47:08 espie Exp $
COMPONENT = kdrive
ONLY_FOR_ARCHS = ${GCC3_ARCHS} ${GCC4_ARCHS}
MODULES += base/xenocara

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
XDEPS = lib/libxtrans lib/pixman lib/libX11 proto/glproto \
	proto/dri2proto lib/libdrm lib/libXdmcp lib/libGL \
	proto/xcmiscproto proto/bigreqsproto proto/videoproto \
	proto/compositeproto proto/recordproto proto/scrnsaverproto \
	proto/resourceproto lib/libxkbfile lib/libXv




.include <bsd.port.mk>
