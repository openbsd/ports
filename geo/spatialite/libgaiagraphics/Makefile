# $OpenBSD: Makefile,v 1.6 2019/07/05 11:53:00 sthen Exp $

COMMENT =	common-utility raster handling methods
PROJECT =	libgaiagraphics
DISTNAME =	${PROJECT}-0.5
SHARED_LIBS =	gaiagraphics 0.0 #2.0
CATEGORIES =	graphics geo
REVISION =	3

LIB_DEPENDS +=	converters/libiconv \
		graphics/cairo \
		textproc/libxml \
		devel/geotiff

WANTLIB += X11 Xext Xrender cairo expat fontconfig freetype geotiff iconv jpeg
WANTLIB += lzma m pixman-1 png proj pthread tiff xcb
WANTLIB += xcb-render xcb-shm xml2 z sqlite3

.include <bsd.port.mk>
