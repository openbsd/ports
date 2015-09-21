# $OpenBSD: Makefile,v 1.18 2015/09/21 19:34:15 kili Exp $

BROKEN =		newer version required but not available

COMMENT =		tools to build Gtk2Hs

DISTNAME =		gtk2hs-buildtools-0.13.0.4
CATEGORIES =		devel

HOMEPAGE =		http://www.haskell.org/gtk2hs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# GPL2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread util

MODULES =		lang/ghc converters/libiconv

MODGHC_BUILD =		cabal hackage nort

BUILD_DEPENDS =		devel/alex \
			devel/happy \
			devel/hs-hashtables \
			devel/hs-random

.include <bsd.port.mk>
