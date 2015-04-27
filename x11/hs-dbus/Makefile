# $OpenBSD: Makefile,v 1.14 2015/04/27 07:30:06 dcoppa Exp $

COMMENT =		Haskell implementation of the D-Bus protocol

DISTNAME =		dbus-0.10.10
CATEGORIES =		devel x11

HOMEPAGE =		https://john-millikin.com/software/haskell-dbus/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-cereal>=0.3.4,<0.5 \
			devel/hs-network>=2.2.3 \
			devel/hs-parsec>=2.0,<3.2 \
			devel/hs-random>=1.0,<2.0 \
			devel/hs-text>=0.11.1.5 \
			devel/hs-vector>=0.7,<0.11 \
			textproc/hs-libxml-sax>=0.7,<0.8 \
			textproc/hs-xml-types>=0.3,<0.4
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
