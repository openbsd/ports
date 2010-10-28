# $OpenBSD: Makefile,v 1.9 2010/10/28 13:51:46 jasper Exp $

COMMENT =		automatic testing of Haskell programs

DISTNAME =		QuickCheck-2.1.1.1
REVISION =		0
CATEGORIES =		devel
HOMEPAGE =		http://www.cse.chalmers.se/~koen

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
