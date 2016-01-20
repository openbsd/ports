# $OpenBSD: Makefile,v 1.2 2016/01/20 16:15:45 kili Exp $

COMMENT =		library dealing with zip archives

DISTNAME =		zip-archive-0.2.3.7
REVISION =		0
CATEGORIES =		archivers devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	B7lp2f03eOLA6mNwPDGKAe

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	archivers/hs-zlib \
		devel/hs-mtl \
		devel/hs-old-time \
		devel/hs-text>=0.11 \
		security/hs-digest>=0.0.0.1

.include <bsd.port.mk>
