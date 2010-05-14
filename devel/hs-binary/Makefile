# $OpenBSD: Makefile,v 1.2 2010/05/14 09:08:26 kili Exp $

COMMENT =		lazy binary serialisation for Haskell values

DISTNAME =		binary-0.5.0.2
PKGNAME =		hs-${DISTNAME}p0
CATEGORIES =		devel

HOMEPAGE =		http://code.haskell.org/binary/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
