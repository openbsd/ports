# $OpenBSD: Makefile,v 1.15 2011/04/23 14:32:51 kili Exp $

COMMENT =		library for client-side HTTP

DISTNAME =		HTTP-4000.1.1
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

RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-network \
			devel/hs-parsec
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
