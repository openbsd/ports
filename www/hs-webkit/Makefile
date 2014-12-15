# $OpenBSD: Makefile,v 1.9 2014/12/15 19:05:15 kili Exp $

COMMENT =		WebKit bindings for Haskell
DISTNAME =		webkit-0.12.6.1
CATEGORIES =		www

MAINTAINER =		Jona Joachim <jona@joachim.cc>

# LGPL-2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ghc
MODGHC_BUILD =	hackage cabal register haddock

RUN_DEPENDS =	devel/hs-glib>=0.12.1,<0.13 \
		devel/hs-mtl \
		devel/hs-pango>=0.12,<0.13 \
		graphics/hs-cairo>=0.12,<0.13 \
		www/webkit>=1.1.15 \
		x11/hs-gtk>=0.12.5.4,<0.13
BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/gtk2hs-buildtools

NO_TEST =	Yes

.include <bsd.port.mk>
