# $OpenBSD: Makefile,v 1.2 2017/11/07 22:21:58 kili Exp $

COMMENT =		consistent filesystem interaction

DISTNAME =		system-fileio-0.3.16.3
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	6MypGiy6Sm27nlSttZrvyT

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/hs-system-filepath>=0.3.1,<0.5 \
			devel/hs-text>=0.7.1

.include <bsd.port.mk>
