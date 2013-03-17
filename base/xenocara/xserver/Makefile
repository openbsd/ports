# $OpenBSD: Makefile,v 1.2 2013/03/17 13:32:21 espie Exp $
COMPONENT = xserver

MODULES += base/xenocara

PERMIT_PACKAGE_CDROM=   Yes
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
