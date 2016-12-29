# $OpenBSD: Makefile,v 1.2 2016/12/29 20:59:05 zhuk Exp $

# to build those we need both qtbase and qttools installed

QT5NAME =		QtBase
PKGNAME =		qtbase-docs-${VERSION}
PKGNAME-qch =		qtbase-qch-${VERSION}
PKGNAME-html =		qtbase-html-${VERSION}
PKGNAME-docindex =	qtbase-docindex-${VERSION}
MULTI_PACKAGES =	-qch -html -docindex
SUBPACKAGE ?=		-qch

ALL_TARGET =		docs
FAKE_TARGET =		install_docs

NO_TEST =		Yes

MODQT5_USE_GCC4_MODULE =	No
NO_CCACHE =			Yes

.include <bsd.port.mk>
