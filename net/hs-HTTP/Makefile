# $OpenBSD: Makefile,v 1.17 2011/12/31 22:08:39 kili Exp $

COMMENT =		library for client-side HTTP

DISTNAME =		HTTP-4000.1.2
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
