# $OpenBSD: Makefile,v 1.3 2017/07/17 08:34:37 zhuk Exp $

# this package is Windows-specific, but documentation still could have some use

QT5NAME =		QtActiveQt
COMMENT-main =		Active Qt

MULTI_PACKAGES =	-qch -html -docindex
SUBPACKAGE ?=		-qch

BUILD_DEPENDS =		x11/qt5/qtdoc,-docindex \
			x11/qt5/qtscript,-docindex

ALL_TARGET =		docs
FAKE_TARGET =		install_docs

.include <bsd.port.mk>
