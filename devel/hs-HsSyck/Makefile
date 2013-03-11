# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:06 espie Exp $

COMMENT =		fast, lightweight YAML loader and dumper

DISTNAME =		HsSyck-0.50
REVISION =		4
EPOCH =			0
CATEGORIES =		devel

# MIT (see comment in HsSyck.cabal)
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-syb

.include <bsd.port.mk>
