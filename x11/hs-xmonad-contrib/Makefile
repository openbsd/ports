# $OpenBSD: Makefile,v 1.35 2019/05/06 16:01:32 danj Exp $

COMMENT =		third party xmonad extensions

DISTNAME =		xmonad-contrib-0.13
CATEGORIES =		x11
HOMEPAGE =		http://www.xmonad.org/
REVISION =		0

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage register haddock

MODGHC_PACKAGE_KEY =	5RsH2hS2suoJZEWGsIgugu

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-extensible-exceptions \
			devel/hs-mtl>=1,<3 \
			devel/hs-old-locale \
			devel/hs-old-time \
			devel/hs-random \
			devel/hs-utf8-string \
			shells/bash \
			x11/hs-X11>=1.6.1,<1.9 \
			x11/hs-X11-xft>=0.2 \
			x11/xmonad,-lib>=0.13,<0.14

NO_TEST =		Yes

.include <bsd.port.mk>
