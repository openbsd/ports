# $OpenBSD: Makefile,v 1.6 2013/06/25 07:28:54 dcoppa Exp $

COMMENT =		Haskell implementation of the D-Bus protocol

DISTNAME =		dbus-0.10.4
REVISION =		0
CATEGORIES =		devel x11

HOMEPAGE =		https://john-millikin.com/software/haskell-dbus/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-cereal>=0.3.4,<0.4 \
			devel/hs-network>=2.3.0.13p0,<2.4 \
			devel/hs-random \
			devel/hs-transformers \
			devel/hs-vector \
			textproc/hs-libxml-sax>=0.7,<0.8
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
