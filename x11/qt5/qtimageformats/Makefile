# $OpenBSD: Makefile,v 1.6 2017/10/24 10:12:19 rsadowski Exp $

QT5NAME =		QtImageFormats
COMMENT =		support for additional image formats in Qt5

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui jasper m mng tiff
WANTLIB += webp webpdemux

LIB_DEPENDS =		graphics/jasper \
			graphics/tiff \
			graphics/libmng \
			graphics/libwebp

FLAVORS =		debug

.include <bsd.port.mk>
