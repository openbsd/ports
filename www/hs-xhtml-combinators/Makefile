# $OpenBSD: Makefile,v 1.13 2014/11/27 21:45:37 kili Exp $

COMMENT =		fast and easy to use XHTML 1.0 Strict combinators

DISTNAME =		xhtml-combinators-0.2.2
REVISION =		9
CATEGORIES =		www

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-random \
			devel/hs-text \
			textproc/hs-xml
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
