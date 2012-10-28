# $OpenBSD: Makefile,v 1.19 2012/10/28 23:30:15 kili Exp $

COMMENT =		library for client-side HTTP

DISTNAME =		HTTP-4000.2.3
REVISION =		0
CATEGORIES =		net devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-mtl>=2.0,<2.2 \
			devel/hs-network \
			devel/hs-parsec
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
