# $OpenBSD: Makefile,v 1.13 2013/03/11 11:42:41 espie Exp $

COMMENT =		XML parser/formatter based on expat

DISTNAME =		hexpat-0.19.10
REVISION =		1
CATEGORIES =		textproc

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-List \
			devel/hs-text \
			devel/hs-transformers
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
