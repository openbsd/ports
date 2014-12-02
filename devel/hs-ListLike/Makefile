# $OpenBSD: Makefile,v 1.12 2014/12/02 20:45:58 kili Exp $

COMMENT =		common interface to various Haskell types that are list-like

DISTNAME =		ListLike-4.0.2
CATEGORIES =		devel
HOMEPAGE = 		http://software.complete.org/listlike

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-text>=0.11,<1.2 \
			devel/hs-vector>=0.5,<0.11


.include <bsd.port.mk>
