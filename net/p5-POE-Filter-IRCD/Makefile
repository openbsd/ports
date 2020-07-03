# $OpenBSD: Makefile,v 1.22 2020/07/03 21:45:38 sthen Exp $

COMMENT=		POE-based parser for the IRC protocol

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		POE-Filter-IRCD-2.44
REVISION=		1
CATEGORIES=		net

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-POE
BUILD_DEPENDS=		${RUN_DEPENDS}

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
