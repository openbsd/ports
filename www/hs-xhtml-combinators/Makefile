# $OpenBSD: Makefile,v 1.12 2013/03/11 11:44:42 espie Exp $

COMMENT =		fast and easy to use XHTML 1.0 Strict combinators

DISTNAME =		xhtml-combinators-0.2.2
REVISION =		8
CATEGORIES =		www

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-random \
			devel/hs-text \
			devel/hs-transformers \
			textproc/hs-xml
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
