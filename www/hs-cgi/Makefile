# $OpenBSD: Makefile,v 1.18 2013/07/18 21:54:21 kili Exp $

COMMENT =		CGI library for Haskell

DISTNAME =		cgi-3001.1.7.5
CATEGORIES =		www devel
HOMEPAGE =		http://andersk.mit.edu/haskell/cgi/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-mtl>=1.0 \
			devel/hs-network>=2.0 \
			devel/hs-parsec>=2.0


.include <bsd.port.mk>
