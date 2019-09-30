# $OpenBSD: Makefile,v 1.23 2019/09/30 11:53:37 kili Exp $

COMMENT =	command-line interface for Cabal and Hackage

DISTNAME =	cabal-install-2.4.0.0
CATEGORIES =	devel

HOMEPAGE =	http://www.haskell.org/cabal/

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =		Yes

WANTLIB =		c charset ffi gmp iconv m pthread util z

MODULES =		lang/ghc
MODGHC_BUILD =          cabal hackage nort

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi

# Avoids the dependency on resolve.
MODGHC_SETUP_CONF_ARGS += -f-native-dns

BUILD_DEPENDS +=	archivers/hs-zlib>=0.5.3,<0.7 \
			archivers/hs-zip-archive>=0.3.2.5,<0.5 \
			devel/hs-async>=2.0,<3 \
			devel/hs-base16-bytestring>=0.1.1,<0.2 \
			devel/hs-echo>=0.1.3,<0.2 \
			devel/hs-edit-distance>=0.2.2,<0.3 \
			devel/hs-hashable>=1.0,<2 \
			devel/hs-network>=2.6,<2.7 \
			devel/hs-network-uri>=2.6,<2.7 \
			devel/hs-random>=1,<1.2 \
			devel/hs-tar>=0.5.0.3,<0.6 \
			net/hs-HTTP>=4000.1.5,<4000.4 \
			security/hs-cryptohash-sha256>=0.11,<0.12 \
			security/hs-hackage-security>=0.5.2.2,<0.6

# Cabal (part of lang/ghc) would have patched for a correct mandir,
# but this is for now the only haskell program using Cabal to install a
# man page.
post-install:
	mv ${PREFIX}/share/man/man1/cabal.1 ${PREFIX}/man/man1/cabal.1

.include <bsd.port.mk>
