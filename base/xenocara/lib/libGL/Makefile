# $OpenBSD: Makefile,v 1.3 2013/11/17 09:45:50 espie Exp $
COMPONENT = lib/libGL
XDEPS = lib/libX11 lib/libXext lib/libXxf86vm lib/libXdamage \
	   lib/libXfixes lib/libdrm proto/glproto proto/dri2proto \
	   lib/libglapi

DPB_PROPERTIES = parallel

EXTRA_SRC = xenocara/dist/Mesa

.include <bsd.port.mk>
