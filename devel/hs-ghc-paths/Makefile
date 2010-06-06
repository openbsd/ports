# $OpenBSD: Makefile,v 1.4 2010/06/06 10:06:44 kili Exp $

COMMENT =		knowledge of GHC's installation directories

DISTNAME =		ghc-paths-0.1.0.6
PKGNAME =		hs-${DISTNAME}p2
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

# No haddock by intention, because Haddock depends on this package.
MODGHC_BUILD =		cabal hackage register

.include <bsd.port.mk>
