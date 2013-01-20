# $OpenBSD: Makefile,v 1.2 2013/01/20 18:02:12 kili Exp $

COMMENT =		combinators and extra features for Par monads

DISTNAME =		monad-par-extras-0.3.2
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
RUN_DEPENDS =		devel/hs-abstract-par>=0.3 \
			devel/hs-cereal>=0.3 \
			devel/hs-mtl>=2.0 \
			devel/hs-random>=1.0 \
			devel/hs-transformers>=0.2

.include <bsd.port.mk>
