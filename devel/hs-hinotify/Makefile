# $OpenBSD: Makefile,v 1.7 2019/09/30 12:58:08 kili Exp $

COMMENT =		inotify lib for haskell

DISTNAME =		hinotify-0.3.8.1
REVISION =		3
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	1TL7DUYG6qt2stVKTb4zoz

MODGHC_SETUP_CONF_ARGS +=	--extra-include-dirs=${LOCALBASE}/include/inotify/ \
				--extra-lib-dirs=${LOCALBASE}/lib/inotify/

BUILD_DEPENDS = devel/libinotify
RUN_DEPENDS = devel/libinotify

NO_TEST = Yes

.include <bsd.port.mk>
