# $OpenBSD: Makefile,v 1.4 2017/07/21 08:22:36 zhuk Exp $

QT5NAME =		QtDoc
COMMENT-docindex =	generic Qt documentation index
COMMENT-qch =		generic Qt documentation in compiled format
COMMENT-html =		generic Qt documentation in HTML format
REVISION-docindex =	0
REVISION-html =		0
REVISION-qch =		0

MULTI_PACKAGES =	-qch -html -docindex
SUBPACKAGE ?=		-qch

ALL_TARGET =		docs
FAKE_TARGET =		install_docs

MODQT5_USE_GCC4_MODULE =	No
NO_CCACHE =			Yes

.include <bsd.port.mk>
