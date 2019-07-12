# $OpenBSD: Makefile,v 1.7 2019/07/12 20:44:57 sthen Exp $

COMMENT=	asynchronous Input/Output

MODULES=	cpan
DISTNAME=	IO-AIO-4.34
REVISION=	1
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl pthread

BUILD_DEPENDS=	devel/p5-Canary-Stability
RUN_DEPENDS=	devel/p5-common-sense

.include <bsd.port.mk>
