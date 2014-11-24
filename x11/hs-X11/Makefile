# $OpenBSD: Makefile,v 1.18 2014/11/24 16:07:59 kili Exp $

COMMENT =		bindings to the X11 graphics library for GHC

DISTNAME =		X11-1.6.1.1
REVISION =		0

CATEGORIES =		x11 devel

HOMEPAGE =		http://code.haskell.org/X11/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-data-default \
			devel/hs-syb

.include <bsd.port.mk>
