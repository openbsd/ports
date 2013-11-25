# $OpenBSD: Makefile,v 1.7 2013/11/25 14:16:22 sthen Exp $

COMMENT =		type-level programming library

DISTNAME =		type-level-0.2.4
REVISION=		3
CATEGORIES =		devel

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-syb

.include <bsd.port.mk>
