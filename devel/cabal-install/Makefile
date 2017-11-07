# $OpenBSD: Makefile,v 1.20 2017/11/07 21:58:06 kili Exp $

COMMENT =	command-line interface for Cabal and Hackage

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =	cabal-install-1.24.0.0
CATEGORIES =	devel

HOMEPAGE =	http://www.haskell.org/cabal/

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =		c iconv m pthread util z

MODULES =		lang/ghc
MODGHC_BUILD =          cabal hackage nort

LIB_DEPENDS =		converters/libiconv

BUILD_DEPENDS +=	archivers/hs-zlib>=0.5.3,<0.6 \
			devel/hs-async>=2.0,<3 \
			devel/hs-base16-bytestring>=0.1.1,<0.2 \
			devel/hs-hashable>=1.0,<2 \
			devel/hs-mtl>=2.0,<3 \
			devel/hs-network>=2.6,<2.7 \
			devel/hs-network-uri>=2.6,<2.7 \
			devel/hs-random>=1,<1.2 \
			devel/hs-stm>=2.0,<3 \
			devel/hs-tar>=0.5.0.1,<0.6 \
			net/hs-HTTP>=4000.1.5,<4000.4 \
			security/hs-cryptohash-sha256>=0.11,<0.12 \
			security/hs-hackage-security>=0.5.1,<0.6

# Cabal (part of lang/ghc) would have patched for a correct mandir,
# but this is for now the only haskell program using Cabal to install a
# man page.
post-install:
	mv ${PREFIX}/share/man/man1/cabal.1 ${PREFIX}/man/man1/cabal.1

.include <bsd.port.mk>
