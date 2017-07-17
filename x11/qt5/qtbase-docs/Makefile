# $OpenBSD: Makefile,v 1.4 2017/07/17 08:34:37 zhuk Exp $

# to build those we need both qtbase and qttools installed

QT5NAME =		QtBase
PKGNAME =		qtbase-docs-${VERSION}
PKGNAME-qch =		qtbase-qch-${VERSION}
PKGNAME-html =		qtbase-html-${VERSION}
PKGNAME-docindex =	qtbase-docindex-${VERSION}

DPB_PROPERTIES =	parallel

MULTI_PACKAGES =	-qch -html -docindex
SUBPACKAGE ?=		-qch

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
