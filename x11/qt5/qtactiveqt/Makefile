# $OpenBSD: Makefile,v 1.2 2016/12/28 01:41:23 zhuk Exp $

QT5NAME =		QtActiveQt
COMMENT-main =		Active Qt
REVISION-qch =		0
REVISION-html =		0

# this package is Windows-specific, but documentation still could have some use

MULTI_PACKAGES =	-qch -html -docindex
SUBPACKAGE ?=		-qch

BUILD_DEPENDS =		x11/qt5/qtdoc,-docindex \
			x11/qt5/qtscript,-docindex

ALL_TARGET =		docs
FAKE_TARGET =		install_docs

.include <bsd.port.mk>
