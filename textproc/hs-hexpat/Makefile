# $OpenBSD: Makefile,v 1.1.1.1 2010/09/19 16:28:03 jim Exp $

COMMENT =		XML parser/formatter based on expat

DISTNAME =		hexpat-0.18.3
CATEGORIES =		textproc

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		::devel/hs-List
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
