# $OpenBSD: Makefile,v 1.3 2017/07/17 08:34:38 zhuk Exp $

QT5NAME =		QtImageFormats
COMMENT-main =		support for additional image formats in Qt5

MULTI_PACKAGES =	-main -qch -html -docindex

WANTLIB =  ${COMPILER_LIBCXX}
WANTLIB += GL Qt5Core Qt5Gui jasper m mng pthread tiff webp webpdemux

LIB_DEPENDS =		graphics/jasper \
			graphics/tiff \
			graphics/libmng \
			graphics/libwebp

FLAVORS =		debug
PSEUDO_FLAVORS =	no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
