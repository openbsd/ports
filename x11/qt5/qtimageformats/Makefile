# $OpenBSD: Makefile,v 1.8 2019/11/05 10:18:53 rsadowski Exp $

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
