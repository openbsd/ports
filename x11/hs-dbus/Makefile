# $OpenBSD: Makefile,v 1.20 2017/04/27 08:43:26 dcoppa Exp $

COMMENT =		Haskell implementation of the D-Bus protocol

DISTNAME =		dbus-0.10.13
CATEGORIES =		devel x11

HOMEPAGE =		https://github.com/rblaze/haskell-dbus#readme

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	86vmMsycG5aDChJhqAXTgY

RUN_DEPENDS =		devel/hs-cereal \
			devel/hs-network \
			devel/hs-parsec \
			devel/hs-random \
			devel/hs-text \
			devel/hs-vector \
			textproc/hs-libxml-sax \
			textproc/hs-xml-types
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
