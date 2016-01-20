# $OpenBSD: Makefile,v 1.8 2016/01/20 16:22:26 kili Exp $

COMMENT =		lift control operations through monad transformers

DISTNAME =		monad-control-1.0.0.4
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	A5OpBZGOGWYAeTgqU9cDKP

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-stm>=2.3,<3 \
			devel/hs-transformers-base>=0.4.4,<0.5 \
			devel/hs-transformers-compat>=0.3,<0.5

.include <bsd.port.mk>
