# $OpenBSD: Makefile,v 1.5 2011/04/23 14:32:51 kili Exp $

COMMENT =		common interface to various Haskell types that are list-like

DISTNAME =		ListLike-1.0.1
CATEGORIES =		devel
REVISION =		3
HOMEPAGE = 		http://software.complete.org/listlike

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
