# $OpenBSD: Makefile,v 1.5 2012/09/02 21:36:35 kili Exp $

COMMENT =		Efficient algorithms for vector arrays

DISTNAME =		vector-algorithms-0.5.4
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-primitive>=0.3,<0.5 \
			devel/hs-vector>=0.6,<0.10
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
