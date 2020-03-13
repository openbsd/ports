# $OpenBSD: Makefile,v 1.10 2020/03/13 16:53:51 rsadowski Exp $

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
