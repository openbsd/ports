# $OpenBSD: Makefile,v 1.15 2014/06/19 18:58:01 kili Exp $

COMMENT =	command-line interface for Cabal and Hackage

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =	cabal-install-1.16.0.2
CATEGORIES =	devel

HOMEPAGE =	http://www.haskell.org/cabal/

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =		c m pthread util z

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =          cabal hackage nort

BUILD_DEPENDS +=	devel/hs-mtl>=2.0,<3 \
			devel/hs-network>=1,<3 \
			devel/hs-random>=1,<1.1 \
			net/hs-HTTP>=4000.0.2,<4001 \
			archivers/hs-zlib>=0.4,<0.6

.include <bsd.port.mk>
