# $OpenBSD: Makefile,v 1.13 2010/11/19 22:31:33 espie Exp $

COMMENT =		library for client-side HTTP

DISTNAME =		HTTP-4000.0.9
REVISION =		8
CATEGORIES =		net devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		devel/hs-network \
			devel/hs-parsec
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
