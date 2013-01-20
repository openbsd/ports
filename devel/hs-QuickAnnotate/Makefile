# $OpenBSD: Makefile,v 1.2 2013/01/20 17:59:47 kili Exp $

COMMENT =		annotation framework

DISTNAME =		QuickAnnotate-0.6
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c iconv m pthread util

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS=		lang/hs-haskell-src-exts>=1.11.1,<1.14

# Install the example mentioned in DESCR.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/hs-QuickAnnotate
	${INSTALL_DATA} ${WRKSRC}/Examples/* \
		${PREFIX}/share/examples/hs-QuickAnnotate

.include <bsd.port.mk>
