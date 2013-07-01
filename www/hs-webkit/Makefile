# $OpenBSD: Makefile,v 1.8 2013/07/01 21:35:50 kili Exp $

COMMENT =		WebKit bindings for Haskell
DISTNAME =		webkit-0.12.4
REVISION =		2
CATEGORIES =		www

MAINTAINER =		Jona Joachim <jona@joachim.cc>

# LGPL-2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ghc
MODGHC_BUILD =	hackage cabal register haddock

RUN_DEPENDS =	x11/hs-gtk>=0.12,<0.13 \
		graphics/hs-cairo>=0.12,<0.13 \
		devel/hs-pango>=0.12,<0.13 \
		devel/hs-glib>=0.12.1,<0.13 \
		www/webkit>=1.1.15
BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/gtk2hs-buildtools

NO_TEST =	Yes

.include <bsd.port.mk>
