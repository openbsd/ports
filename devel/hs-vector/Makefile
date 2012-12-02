# $OpenBSD: Makefile,v 1.11 2012/12/02 20:22:42 kili Exp $

COMMENT =		Int-indexed arrays

DISTNAME =		vector-0.10.0.1
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>, \
			Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-primitive>=0.5.0.1,<0.6
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
