# $OpenBSD: Makefile,v 1.2 2015/09/20 16:23:19 kili Exp $

COMMENT =		mutable hash tables in the ST monad

DISTNAME =		hashtables-1.2.0.1
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	KDE2fatvAR6BRy3T0FFYXJ

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-hashable>=1.2.1,<1.3 \
			devel/hs-primitive \
			devel/hs-vector>=0.7,<0.12


.include <bsd.port.mk>
