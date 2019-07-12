# $OpenBSD: Makefile,v 1.21 2019/07/12 20:48:41 sthen Exp $

COMMENT=		POE-based parser for the IRC protocol

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		POE-Filter-IRCD-2.44
REVISION=		0
CATEGORIES=		net

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-POE
BUILD_DEPENDS=		${RUN_DEPENDS}

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
