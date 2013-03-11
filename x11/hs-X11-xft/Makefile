# $OpenBSD: Makefile,v 1.11 2013/03/11 11:46:13 espie Exp $

COMMENT=		bindings for GHC to Xft, Freetype and Xrender

DISTNAME=		X11-xft-0.3.1
REVISION=		1
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
