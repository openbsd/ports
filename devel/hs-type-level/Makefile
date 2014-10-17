# $OpenBSD: Makefile,v 1.9 2014/10/17 14:12:02 sthen Exp $

BROKEN-i386 =		duplicate definition for symbol __i686.get_pc_thunk.bx

COMMENT =		type-level programming library

DISTNAME =		type-level-0.2.4
REVISION=		4
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-syb

.include <bsd.port.mk>
