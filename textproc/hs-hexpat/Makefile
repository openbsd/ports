# $OpenBSD: Makefile,v 1.15 2014/12/03 21:56:45 kili Exp $

COMMENT =		XML parser/formatter based on expat

DISTNAME =		hexpat-0.19.10
REVISION =		3
CATEGORIES =		textproc

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-List>=0.4.2,<0.5 \
			devel/hs-extensible-exceptions>=0.1,<0.2 \
			devel/hs-text>=0.5,<0.12
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
