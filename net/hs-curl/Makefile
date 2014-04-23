# $OpenBSD: Makefile,v 1.4 2014/04/23 05:55:16 ajacoutot Exp $

COMMENT =		Haskell binding to libcurl

DISTNAME =		curl-1.3.8
REVISION =		1
CATEGORIES =		net

HOMEPAGE =		https://github.com/GaloisInc/curl

MAINTAINER =		David Schaefer <dawedawe@gmx.de>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/curl

.include <bsd.port.mk>
