# $OpenBSD: Makefile,v 1.5 2014/12/02 20:45:23 kili Exp $

COMMENT =		Haskell binding to libcurl

DISTNAME =		curl-1.3.8
REVISION =		2
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
