# $OpenBSD: Makefile,v 1.13 2014/11/22 20:59:41 kili Exp $

COMMENT =		knowledge of GHC's installation directories

DISTNAME =		ghc-paths-0.1.0.8
REVISION =		2
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

# No haddock by intention, because Haddock depends on this package.
MODGHC_BUILD =		cabal hackage register

.include <bsd.port.mk>
