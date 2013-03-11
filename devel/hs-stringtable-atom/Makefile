# $OpenBSD: Makefile,v 1.12 2013/03/11 10:50:08 espie Exp $

COMMENT =		memoize strings as atoms

DISTNAME =		stringtable-atom-0.0.6.1
REVISION =		8
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-binary \
			devel/hs-syb

.include <bsd.port.mk>
