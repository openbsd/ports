# $OpenBSD: Makefile,v 1.13 2011/04/23 14:32:51 kili Exp $

COMMENT =		versatile logging framework

DISTNAME =		hslogger-1.1.0
REVISION =		1
CATEGORIES =		devel sysutils
HOMEPAGE =		http://software.complete.org/hslogger

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-network \
			devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
