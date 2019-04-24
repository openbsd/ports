# $OpenBSD: Makefile,v 1.35 2019/04/24 16:26:55 sthen Exp $

COMMENT =		large library of utility functions

DISTNAME =		MissingH-1.4.0.1
REVISION =		2
CATEGORIES =		devel
HOMEPAGE =		https://github.com/jgoerzen/missingh/wiki

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	E7dkd0uerhC9IYkj4nUUis

RUN_DEPENDS +=		devel/hs-hslogger \
			devel/hs-HUnit \
			devel/hs-mtl \
			devel/hs-old-locale \
			devel/hs-old-time \
			devel/hs-parsec \
			devel/hs-random \
			devel/hs-regex-compat
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
