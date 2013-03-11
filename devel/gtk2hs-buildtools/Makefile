# $OpenBSD: Makefile,v 1.13 2013/03/11 10:50:06 espie Exp $

COMMENT =		tools to build Gtk2Hs

DISTNAME =		gtk2hs-buildtools-0.12.3.1
REVISION =		0
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
			devel/hs-random

.include <bsd.port.mk>
