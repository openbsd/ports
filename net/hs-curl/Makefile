# $OpenBSD: Makefile,v 1.7 2015/12/20 11:32:39 kili Exp $

COMMENT =		Haskell binding to libcurl

DISTNAME =		curl-1.3.8
REVISION =		4
CATEGORIES =		net

HOMEPAGE =		https://github.com/GaloisInc/curl

MAINTAINER =		David Schaefer <dawedawe@gmx.de>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	9JZlSJNY6JRIY3XmrL566R

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/curl

.include <bsd.port.mk>
