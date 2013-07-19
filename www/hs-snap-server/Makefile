# $OpenBSD: Makefile,v 1.21 2013/07/19 06:55:56 kili Exp $

COMMENT =		Snap Haskell Web Framework Server

DISTNAME =		snap-server-0.9.3.3
CATEGORIES =		www
HOMEPAGE =		http://snapframework.com/

MAINTAINER =		Jim Razmus II <jim@openbsd.org>, \
			Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-MonadCatchIO-transformers>=0.2.1,<0.4 \
			devel/hs-blaze-builder>=0.2.1.4,<0.4 \
			devel/hs-blaze-builder-enumerator>=0.2.0,<0.3 \
			devel/hs-case-insensitive>=0.3,<1.1 \
			devel/hs-enumerator>=0.4.15,<0.5 \
			devel/hs-mtl>=2,<3 \
			devel/hs-network>=2.3,<2.5 \
			devel/hs-text>=0.11,<0.12 \
			devel/hs-unix-compat>=0.2,<0.5 \
			textproc/hs-attoparsec>=0.10,<0.11 \
			textproc/hs-attoparsec-enumerator>=0.3,<0.4 \
			www/hs-snap-core>=0.9.3,<0.10

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
