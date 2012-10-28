# $OpenBSD: Makefile,v 1.10 2012/10/28 23:29:51 kili Exp $

COMMENT =		Int-indexed arrays

DISTNAME =		vector-0.9.1
REVISION =		0
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

RUN_DEPENDS +=		devel/hs-primitive>=0.4.0.1,<0.5
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
