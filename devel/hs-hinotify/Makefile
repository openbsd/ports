# $OpenBSD: Makefile,v 1.3 2017/11/07 22:13:25 kili Exp $

COMMENT =		inotify lib for haskell

DISTNAME =		hinotify-0.3.8.1
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	Gq67SHpnhelljPBDnXAk3

MODGHC_SETUP_CONF_ARGS +=	--extra-include-dirs=${LOCALBASE}/include/inotify/ \
				--extra-lib-dirs=${LOCALBASE}/lib/inotify/

BUILD_DEPENDS = devel/libinotify
RUN_DEPENDS = devel/libinotify

NO_TEST = Yes

.include <bsd.port.mk>
