# $OpenBSD: Makefile,v 1.18 2015/12/20 11:34:51 kili Exp $

COMMENT =		XML parser/formatter based on expat

DISTNAME =		hexpat-0.20.9
REVISION =		0
CATEGORIES =		textproc

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	6AFjapvZoYTBbTPC4Y5dpD

RUN_DEPENDS +=		devel/hs-List>=0.4.2,<0.6 \
			devel/hs-text>=0.5.0.0,<1.3.0.0 \
			devel/hs-utf8-string>=0.3,<1.1
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
