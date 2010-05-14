# $OpenBSD: Makefile,v 1.2 2010/05/14 09:08:27 kili Exp $

COMMENT =		Haskell binding for the OpenGL graphics system

DISTNAME =		OpenGL-2.2.3.0
PKGNAME =		hs-${DISTNAME}p0
CATEGORIES =		graphics devel
HOMEPAGE =		http://www.haskell.org/HOpenGL/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
