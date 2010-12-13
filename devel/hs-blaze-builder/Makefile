# $OpenBSD: Makefile,v 1.1.1.1 2010/12/13 08:28:27 jasper Exp $

COMMENT=		efficient construction of bytestrings

DISTNAME=		blaze-builder-0.2.1.1
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-text>=0.10.0
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
