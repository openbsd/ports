# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:08 espie Exp $

COMMENT =		type-level programming library

DISTNAME =		type-level-0.2.4
REVISION=		3
CATEGORIES =		devel

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

VMEM_WARNING =		Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-syb

.include <bsd.port.mk>
