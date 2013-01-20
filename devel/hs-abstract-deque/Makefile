# $OpenBSD: Makefile,v 1.2 2013/01/20 17:59:47 kili Exp $

COMMENT =		abstract, parameterized interface to mutable deques

DISTNAME =		abstract-deque-0.1.6
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-HUnit

.include <bsd.port.mk>
