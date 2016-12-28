# $OpenBSD: Makefile,v 1.2 2016/12/28 01:41:23 zhuk Exp $

QT5NAME =		QtImageFormats
COMMENT-main =		support for additional image formats in Qt5
REVISION-qch =		0
REVISION-html =		0

MULTI_PACKAGES =	-main -qch -html -docindex

WANTLIB =	GL Qt5Core Qt5Gui jasper m mng pthread tiff webp

LIB_DEPENDS =		graphics/jasper \
			graphics/tiff \
			graphics/libmng \
			graphics/libwebp

FLAVORS =		debug
PSEUDO_FLAVORS =	no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
