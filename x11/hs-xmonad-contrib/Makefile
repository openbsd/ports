# $OpenBSD: Makefile,v 1.27 2013/11/25 14:16:23 sthen Exp $

COMMENT =		third party xmonad extensions

DISTNAME =		xmonad-contrib-0.11.1
REVISION =		1
CATEGORIES =		x11
HOMEPAGE =		http://www.xmonad.org/

MAINTAINER =		Jona Joachim <jona@joachim.cc>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage register haddock

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-extensible-exceptions \
			devel/hs-mtl>=1,<3 \
			devel/hs-random \
			shells/bash \
			x11/hs-X11>=1.6.1,<1.7 \
			x11/hs-X11-xft>=0.2 \
			x11/xmonad,-lib>=0.11,<0.12

NO_TEST =		Yes

.include <bsd.port.mk>
