# $OpenBSD: Makefile,v 1.16 2015/01/10 15:22:53 kili Exp $

COMMENT =		Haskell bindings to glib

DISTNAME =		glib-0.12.5.4
REVISION =		0
CATEGORIES =		devel

HOMEPAGE =		http://www.haskell.org/gtk2hs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# LGPL-2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-utf8-string>=0.2,<0.4

BUILD_DEPENDS =		devel/glib2 \
			devel/gtk2hs-buildtools>=0.12.4 \
			${RUN_DEPENDS}

.include <bsd.port.mk>
