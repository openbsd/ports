# $OpenBSD: Makefile,v 1.25 2013/07/01 21:35:50 kili Exp $

# ghc: out of memory (requested 1048576 bytes)
VMEM_WARNING =	Yes

COMMENT =		third party xmonad extensions

DISTNAME =		xmonad-contrib-0.11.1
REVISION =		0
CATEGORIES =		x11
HOMEPAGE =		http://www.xmonad.org/

MAINTAINER =		Jona Joachim <jona@joachim.cc>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage register haddock

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-random \
			shells/bash \
			x11/hs-X11>=1.6.1,<1.7 \
			x11/hs-X11-xft>=0.2 \
			x11/xmonad,-lib>=0.11,<0.12

NO_TEST =		Yes

VMEM_WARNING =		Yes

.include <bsd.port.mk>
