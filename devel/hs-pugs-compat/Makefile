# $OpenBSD: Makefile,v 1.14 2013/07/19 06:52:21 kili Exp $

COMMENT =		portable Haskell/POSIX layer for Pugs

DISTNAME =		pugs-compat-0.0.6.20130611.0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-mtl>=2.0.0.0 \
			devel/hs-network \
			devel/hs-random \
			devel/hs-regex-base \
			devel/hs-regex-pcre-builtin>=0.94.4.4.8.31 \
			devel/hs-stm \
			devel/hs-stringtable-atom>=0.0.6.1 \
			devel/hs-syb

.include <bsd.port.mk>
