# $OpenBSD: Makefile,v 1.1.1.1 2010/12/11 17:44:49 kili Exp $

COMMENT =		Efficient algorithms for vector arrays

DISTNAME =		vector-algorithms-0.3.4
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-primitive \
			devel/hs-vector
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
