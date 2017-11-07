# $OpenBSD: Makefile,v 1.22 2017/11/07 22:43:18 kili Exp $

COMMENT =		bindings to the X11 graphics library for GHC

DISTNAME =		X11-1.6.1.1
REVISION =		4

CATEGORIES =		x11 devel

HOMEPAGE =		http://code.haskell.org/X11/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	A1MTGzcvRlf2RkeFxqy4Fr

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-data-default \
			devel/hs-syb

.include <bsd.port.mk>
