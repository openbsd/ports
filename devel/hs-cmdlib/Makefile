# $OpenBSD: Makefile,v 1.10 2017/11/07 22:07:42 kili Exp $

COMMENT =		command line parsing and online help

DISTNAME =		cmdlib-0.3.6
REVISION =		2
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	MxsOrEScK14TvSrxQWs4e

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/hs-mtl>=2 \
			devel/hs-split \
			devel/hs-syb

.include <bsd.port.mk>
