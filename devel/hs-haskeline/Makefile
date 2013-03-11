# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:07 espie Exp $

COMMENT =		command-line interface for user input

DISTNAME =		haskeline-0.6.4.7
REVISION =		1
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

# Add this when utf8-string will be removed from lang/ghc:
#			devel/hs-utf8-string>=0.3.6,<0.4

RUN_DEPENDS =		devel/hs-mtl>=1.1,<2.2 \
			devel/hs-terminfo>=0.3.1.3,<0.4
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
