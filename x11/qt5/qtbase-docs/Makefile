# $OpenBSD: Makefile,v 1.5 2017/07/26 22:48:36 espie Exp $

# to build those we need both qtbase and qttools installed

QT5NAME =		QtBase
PKGNAME =		qtbase-docs-${VERSION}
PKGNAME-qch =		qtbase-qch-${VERSION}
PKGNAME-html =		qtbase-html-${VERSION}
PKGNAME-docindex =	qtbase-docindex-${VERSION}

DPB_PROPERTIES =	parallel

MULTI_PACKAGES =	-qch -html -docindex
SUBPACKAGE ?=		-qch
REVISION-html =		0

ALL_TARGET =		docs
FAKE_TARGET =		install_docs

NO_TEST =		Yes

NO_CCACHE =		Yes

# avoid interactive question about license
pre-configure:
	rm -f ${WRKSRC}/LICENSE.PREVIEW.COMMERCIAL
	echo 'config.input.confirm-license=yes' \
	     >${WRKBUILD}/.qmake.cache

.include <bsd.port.mk>
