# $OpenBSD: Makefile,v 1.6 2011/04/11 14:45:15 kili Exp $

COMMENT =		Int-indexed arrays

DISTNAME =		vector-0.7.0.1
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-primitive
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
