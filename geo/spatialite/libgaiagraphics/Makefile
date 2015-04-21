# $OpenBSD: Makefile,v 1.2 2015/04/21 18:51:24 sthen Exp $

COMMENT =	common-utility raster handling methods
PROJECT =	libgaiagraphics
DISTNAME =	${PROJECT}-0.5
SHARED_LIBS =	gaiagraphics 0.0 #2.0
CATEGORIES =	graphics geo
REVISION =	0

LIB_DEPENDS +=	graphics/cairo \
		textproc/libxml \
		devel/geotiff

WANTLIB += X11 Xext Xrender cairo expat fontconfig freetype geotiff jpeg
WANTLIB += lzma m pixman-1 png proj pthread pthread-stubs tiff xcb
WANTLIB += xcb-render xcb-shm xml2 z

.include <bsd.port.mk>
