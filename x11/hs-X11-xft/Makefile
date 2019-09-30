# $OpenBSD: Makefile,v 1.21 2019/09/30 13:02:54 kili Exp $

COMMENT=		bindings for GHC to Xft, Freetype and Xrender

DISTNAME=		X11-xft-0.3.1
REVISION=		10
CATEGORIES=		x11 devel

HOMEPAGE=		http://hackage.haskell.org/package/X11-xft

# LGPLv2.1
PERMIT_PACKAGE =	Yes

MODULES=	lang/ghc
MODGHC_BUILD=	cabal hackage haddock register

MODGHC_PACKAGE_KEY =	KBYiLoPicgH6Xf1j5OrcEY

RUN_DEPENDS=	devel/hs-syb \
		devel/hs-utf8-string>=0.1 \
		x11/hs-X11
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
