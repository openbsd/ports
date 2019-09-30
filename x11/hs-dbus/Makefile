# $OpenBSD: Makefile,v 1.26 2019/09/30 13:02:54 kili Exp $

COMMENT =		Haskell implementation of the D-Bus protocol

DISTNAME =		dbus-0.10.13
REVISION =		4
CATEGORIES =		devel x11

HOMEPAGE =		https://github.com/rblaze/haskell-dbus#readme

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	GkT37aCm0RP9JHiW0yK7ST

RUN_DEPENDS =		devel/hs-cereal \
			devel/hs-network \
			devel/hs-random \
			devel/hs-vector \
			textproc/hs-libxml-sax \
			textproc/hs-xml-types
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
