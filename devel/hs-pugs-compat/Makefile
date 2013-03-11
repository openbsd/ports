# $OpenBSD: Makefile,v 1.13 2013/03/11 10:50:08 espie Exp $

COMMENT =		portable Haskell/POSIX layer for Pugs

DISTNAME =		pugs-compat-0.0.6.20120229.163800
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-network \
			devel/hs-random \
			devel/hs-regex-base \
			devel/hs-regex-pcre-builtin \
			devel/hs-stm \
			devel/hs-stringtable-atom>=0.0.6.1 \
			devel/hs-syb

.include <bsd.port.mk>
