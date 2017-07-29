# $OpenBSD: Makefile,v 1.5 2017/07/29 00:07:14 zhuk Exp $

QT5NAME =		QtImageFormats
REVISION =		1
COMMENT =		support for additional image formats in Qt5

WANTLIB =  ${COMPILER_LIBCXX}
WANTLIB += GL Qt5Core Qt5Gui jasper m mng pthread tiff webp webpdemux

LIB_DEPENDS =		graphics/jasper \
			graphics/tiff \
			graphics/libmng \
			graphics/libwebp

FLAVORS =		debug

.include <bsd.port.mk>
