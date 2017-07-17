# $OpenBSD: Makefile,v 1.3 2017/07/17 08:34:38 zhuk Exp $

QT5NAME =		QtDoc
COMMENT-main =		Qt5 tools

MULTI_PACKAGES =	-qch -html -docindex
SUBPACKAGE ?=		-qch

ALL_TARGET =		docs
FAKE_TARGET =		install_docs

MODQT5_USE_GCC4_MODULE =	No
NO_CCACHE =			Yes

.include <bsd.port.mk>
