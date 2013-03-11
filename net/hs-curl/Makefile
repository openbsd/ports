# $OpenBSD: Makefile,v 1.3 2013/03/11 11:35:47 espie Exp $

COMMENT =		Haskell binding to libcurl

DISTNAME =		curl-1.3.8
REVISION =		0
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
