# $OpenBSD: Makefile,v 1.5 2010/05/29 00:00:37 kili Exp $

COMMENT =		library for client-side HTTP

DISTNAME =		HTTP-4000.0.9
PKGNAME =		hs-${DISTNAME}p2
CATEGORIES =		net devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		::devel//hs-network \
			::devel/hs-parsec

.include <bsd.port.mk>
