# $OpenBSD: Makefile,v 1.7 2010/10/28 13:53:26 jasper Exp $

COMMENT =		manipulating Haskell source code

DISTNAME =		haskell-src-1.0.1.3
REVISION =		4
CATEGORIES =		lang devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		::devel/happy

.include <bsd.port.mk>
