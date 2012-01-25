# $OpenBSD: Makefile,v 1.8 2012/01/25 21:44:21 kili Exp $

COMMENT =		Iteratee monad provides strict, safe, and functional I/O

DISTNAME =		iteratee-0.8.8.1
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

RUN_DEPENDS +=		devel/hs-ListLike>=1.0,<4 \
			devel/hs-MonadCatchIO-transformers>0.2,<0.3 \
			devel/hs-parallel>=2,<4 \
			devel/hs-transformers>=0.2,<0.3
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
