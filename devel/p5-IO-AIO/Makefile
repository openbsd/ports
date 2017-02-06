# $OpenBSD: Makefile,v 1.5 2017/02/06 20:20:23 sthen Exp $

COMMENT=	asynchronous Input/Output

MODULES=	cpan
DISTNAME=	IO-AIO-4.34
REVISION=	0
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += perl pthread

BUILD_DEPENDS=	devel/p5-Canary-Stability
RUN_DEPENDS=	devel/p5-common-sense

.include <bsd.port.mk>
