# $OpenBSD: Makefile,v 1.3 2011/09/16 12:00:06 espie Exp $

COMMENT =		WebKit bindings for Haskell
DISTNAME =		webkit-0.12.1
CATEGORIES =		www
REVISION =		1

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
		devel/hs-mtl \
		www/webkit>=1.1.15
BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/gtk2hs-buildtools

NO_REGRESS =	Yes

.include <bsd.port.mk>
