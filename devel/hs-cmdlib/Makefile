# $OpenBSD: Makefile,v 1.9 2016/01/20 16:20:44 kili Exp $

COMMENT =		command line parsing and online help

DISTNAME =		cmdlib-0.3.6
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	J4Usz9eUAn8DIm1qF1PzT6

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/hs-mtl>=2 \
			devel/hs-split \
			devel/hs-syb

.include <bsd.port.mk>
