# $OpenBSD: Makefile,v 1.20 2017/11/07 22:41:31 kili Exp $

COMMENT =		XML parser/formatter based on expat

DISTNAME =		hexpat-0.20.9
REVISION =		2
CATEGORIES =		textproc

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	FuXHk1tg83zEcuqCPKKUZp

RUN_DEPENDS +=		devel/hs-List>=0.4.2,<0.6 \
			devel/hs-text>=0.5.0.0,<1.3.0.0 \
			devel/hs-utf8-string>=0.3,<1.1
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
