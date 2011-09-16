# $OpenBSD: Makefile,v 1.7 2011/09/16 09:24:50 espie Exp $

COMMENT=		efficient construction of bytestrings

DISTNAME=		blaze-builder-0.2.1.4
REVISION =		0
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		STEM->=0.10,<0.12:devel/hs-text
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
