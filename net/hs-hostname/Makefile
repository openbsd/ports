# $OpenBSD: Makefile,v 1.3 2013/01/20 18:05:13 kili Exp $

COMMENT =		Haskell package for determining the hostname

DISTNAME =		hostname-1.0
REVISION =		1
CATEGORIES =		devel net

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
