# $OpenBSD: Makefile,v 1.7 2015/09/21 09:48:28 kili Exp $

COMMENT =		command line parsing and online help

DISTNAME =		cmdlib-0.3.6
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	FHxduetwK3RKKnRsznINp8

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/hs-mtl>=2 \
			devel/hs-split \
			devel/hs-syb

.include <bsd.port.mk>
