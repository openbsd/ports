# $OpenBSD: Makefile,v 1.2 2012/11/06 08:19:02 espie Exp $
COMPONENT = lib/libGL
XDEPS = lib/libX11 lib/libXext lib/libXxf86vm lib/libXdamage \
	   lib/libXfixes lib/libdrm proto/glproto proto/dri2proto

DPB_PROPERTIES = parallel

EXTRA_SRC = xenocara/dist/Mesa

.include <bsd.port.mk>
