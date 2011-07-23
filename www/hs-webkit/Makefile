# $OpenBSD: Makefile,v 1.1.1.1 2011/07/23 14:47:09 kili Exp $

COMMENT =		WebKit bindings for Haskell
DISTNAME =		webkit-0.12.1
CATEGORIES =		www

MAINTAINER =		Jona Joachim <jaj@hcl-club.lu>

# LGPL-2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ghc
MODGHC_BUILD =	hackage cabal register haddock

RUN_DEPENDS =	x11/hs-gtk>=0.12.0 \
		graphics/hs-cairo>=0.12.0 \
		devel/hs-pango>=0.12.0 \
		devel/hs-glib>=0.12.0 \
		devel/hs-mtl
BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/gtk2hs-buildtools

NO_REGRESS =	Yes

.include <bsd.port.mk>
