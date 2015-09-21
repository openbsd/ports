# $OpenBSD: Makefile,v 1.6 2015/09/21 20:11:16 kili Exp $

BROKEN =		needs an update

COMMENT =		lift control operations through monad transformers

DISTNAME =		monad-control-0.3.2.3
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-base-unicode-symbols>=0.1.1,<0.3 \
			devel/hs-transformers-base>=0.4.1,<0.5

.include <bsd.port.mk>
