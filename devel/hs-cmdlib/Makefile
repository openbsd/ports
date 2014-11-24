# $OpenBSD: Makefile,v 1.6 2014/11/24 16:09:18 kili Exp $

COMMENT =		command line parsing and online help

DISTNAME =		cmdlib-0.3.5
REVISION =		3
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/hs-mtl>=2 \
			devel/hs-split \
			devel/hs-syb

.include <bsd.port.mk>
