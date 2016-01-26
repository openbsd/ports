# $OpenBSD: Makefile,v 1.2 2016/01/26 14:50:06 ajacoutot Exp $

COMMENT =		inotify lib for haskell

DISTNAME =		hinotify-0.3.8.1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	Dw3UcxQVCOX92NDmla2yam

MODGHC_SETUP_CONF_ARGS +=	--extra-include-dirs=${LOCALBASE}/include/inotify/ \
				--extra-lib-dirs=${LOCALBASE}/lib/inotify/

BUILD_DEPENDS = devel/libinotify
RUN_DEPENDS = devel/libinotify

NO_TEST = Yes

.include <bsd.port.mk>
