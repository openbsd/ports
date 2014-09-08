# $OpenBSD: Makefile,v 1.19 2014/09/08 17:04:51 jasper Exp $

COMMENT=		POE-based parser for the IRC protocol

MODULES=		cpan
DISTNAME=		POE-Filter-IRCD-2.44
REVISION=		0
CATEGORIES=		net

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-POE
BUILD_DEPENDS=		${RUN_DEPENDS}

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
