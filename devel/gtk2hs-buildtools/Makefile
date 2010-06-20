# $OpenBSD: Makefile,v 1.2 2010/06/20 13:54:19 kili Exp $

COMMENT =		tools to build Gtk2Hs

BROKEN-i386 =		does not work with gcc3

DISTNAME =		gtk2hs-buildtools-0.9
CATEGORIES =		devel

HOMEPAGE =		http://www.haskell.org/gtk2hs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# GPL2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m util

MODULES =		lang/ghc converters/libiconv

MODGHC_BUILD =		cabal hackage nort

BUILD_DEPENDS =		::devel/alex \
			::devel/happy

LIB_DEPENDS =		gmp::devel/gmp

.include <bsd.port.mk>
