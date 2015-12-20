# $OpenBSD: Makefile,v 1.28 2015/12/20 11:24:12 kili Exp $

COMMENT =		large library of utility functions

DISTNAME =		MissingH-1.3.0.1
REVISION =		3
CATEGORIES =		devel
HOMEPAGE =		https://github.com/jgoerzen/missingh/wiki

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	Lc9xvH5dl6w98Hl6PoYUye

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
