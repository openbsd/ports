# $OpenBSD: Makefile,v 1.8 2020/07/03 21:44:56 sthen Exp $

COMMENT=	asynchronous Input/Output

MODULES=	cpan
DISTNAME=	IO-AIO-4.34
REVISION=	2
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl pthread

BUILD_DEPENDS=	devel/p5-Canary-Stability
RUN_DEPENDS=	devel/p5-common-sense

.include <bsd.port.mk>
