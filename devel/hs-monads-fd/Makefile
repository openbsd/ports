# $OpenBSD: Makefile,v 1.2 2010/09/21 10:58:55 jasper Exp $

COMMENT =		monad classes using functional dependencies

DISTNAME =		monads-fd-0.1.0.1
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

RUN_DEPENDS +=		::devel/hs-transformers
BUILD_DEPENDS +=	${RUN_DEPENDS}

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
