# $OpenBSD: Makefile,v 1.9 2021/03/05 07:42:54 benoit Exp $

COMMENT=	asynchronous Input/Output

MODULES=	cpan
DISTNAME=	IO-AIO-4.75
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl pthread

BUILD_DEPENDS=	devel/p5-Canary-Stability
RUN_DEPENDS=	devel/p5-common-sense

.include <bsd.port.mk>
