# $OpenBSD: Makefile,v 1.1.1.1 2012/11/01 09:58:06 espie Exp $
COMPONENT = xserver

MODULES += base/xenocara

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
XDEPS = lib/libpciaccess lib/pixman lib/libpthread-stubs lib/libXfont \
	 lib/freetype lib/libfontenc lib/libXau lib/libXdmcp \
	 proto/x11proto proto/kbproto proto/inputproto lib/libX11 \
	 lib/libxkbfile \
	 proto/glproto lib/libGL proto/dri2proto proto/xf86driproto \
	 proto/randrproto proto/compositeproto proto/recordproto \
	 proto/scrnsaverproto proto/resourceproto proto/videoproto \
	 proto/xineramaproto proto/xcmiscproto proto/bigreqsproto \
	 proto/renderproto

DPB_PROPERTIES = parallel


.include <bsd.port.mk>
