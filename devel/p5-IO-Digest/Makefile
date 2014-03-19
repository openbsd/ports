# $OpenBSD: Makefile,v 1.13 2014/03/19 07:23:26 jasper Exp $

COMMENT=	module for computing digests while reading or writing

MODULES=	cpan
DISTNAME=	IO-Digest-0.11
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-PerlIO-via-dynamic>=0.11
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
