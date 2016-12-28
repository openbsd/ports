# $OpenBSD: Makefile,v 1.2 2016/12/28 01:41:23 zhuk Exp $

QT5NAME =		QtDoc
COMMENT-main =		Qt5 tools
REVISION-qch =		0
REVISION-html =		0

MULTI_PACKAGES =	-qch -html -docindex
SUBPACKAGE ?=		-qch

ALL_TARGET =		docs
FAKE_TARGET =		install_docs

MODQT5_USE_GCC4_MODULE =	No
NO_CCACHE =			Yes

.include <bsd.port.mk>
