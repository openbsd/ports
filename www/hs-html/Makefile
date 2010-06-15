# $OpenBSD: Makefile,v 1.5 2010/06/15 17:18:51 kili Exp $

COMMENT =		HTML combinator library

DISTNAME =		html-1.0.1.2
PKGNAME =		hs-${DISTNAME}p3
CATEGORIES =		www devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
