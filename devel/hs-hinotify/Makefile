# $OpenBSD: Makefile,v 1.1.1.1 2016/01/26 01:31:49 abieber Exp $

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

RUN_DEPENDS = devel/libinotify

NO_TEST = Yes

.include <bsd.port.mk>
