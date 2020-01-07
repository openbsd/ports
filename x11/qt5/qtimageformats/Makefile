# $OpenBSD: Makefile,v 1.9 2020/01/07 20:22:07 zhuk Exp $

QT5NAME =		QtImageFormats
COMMENT =		support for additional image formats in Qt5
REVISION =		0

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui jasper m mng tiff
WANTLIB += webp webpdemux

LIB_DEPENDS =		graphics/jasper \
			graphics/tiff \
			graphics/libmng \
			graphics/libwebp

FLAVORS =		debug

.include <bsd.port.mk>
