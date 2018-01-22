# $OpenBSD: Makefile,v 1.4 2018/01/22 21:42:27 kili Exp $

COMMENT =		inotify lib for haskell

DISTNAME =		hinotify-0.3.8.1
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	JeakPC9kS286yNpujVG5g4

MODGHC_SETUP_CONF_ARGS +=	--extra-include-dirs=${LOCALBASE}/include/inotify/ \
				--extra-lib-dirs=${LOCALBASE}/lib/inotify/

BUILD_DEPENDS = devel/libinotify
RUN_DEPENDS = devel/libinotify

NO_TEST = Yes

.include <bsd.port.mk>
