# $OpenBSD: Makefile,v 1.12 2013/06/17 10:07:40 dcoppa Exp $

COMMENT=		bindings for GHC to Xft, Freetype and Xrender

DISTNAME=		X11-xft-0.3.1
REVISION=		2
CATEGORIES=		x11 devel

HOMEPAGE=		http://hackage.haskell.org/package/X11-xft

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MODULES=	lang/ghc
MODGHC_BUILD=	cabal hackage haddock register

RUN_DEPENDS=	devel/hs-syb \
		x11/hs-X11
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
