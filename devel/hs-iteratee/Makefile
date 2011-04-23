# $OpenBSD: Makefile,v 1.6 2011/04/23 14:32:51 kili Exp $

COMMENT =		Iteratee monad provides strict, safe, and functional I/O

DISTNAME =		iteratee-0.3.5
REVISION =		3
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-ListLike \
			devel/hs-mtl \
			devel/hs-transformers
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
