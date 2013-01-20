# $OpenBSD: Makefile,v 1.2 2013/01/20 18:02:12 kili Exp $

COMMENT =		parallel programming based on a monad

DISTNAME =		monad-par-0.3
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-abstract-deque>=0.1.4 \
			devel/hs-abstract-par \
			devel/hs-monad-par-extras>=0.3,<0.4 \
			devel/hs-mtl>=2.0.1.0 \
			devel/hs-parallel>=3.1 \
			security/hs-mwc-random>=0.11

.include <bsd.port.mk>
