# $OpenBSD: Makefile,v 1.3 2010/11/19 22:31:33 espie Exp $

COMMENT=	pastebin command line application

DISTNAME=	pb-0.1.0
REVISION=	0
CATEGORIES=	net sysutils

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB=		c gmp m pthread util

MODULES=		converters/libiconv \
			lang/ghc

MODGHC_BUILD =          cabal hackage nort

BUILD_DEPENDS +=        devel/hs-network \
			net/hs-HTTP

LIB_DEPENDS=		devel/gmp

.include <bsd.port.mk>
