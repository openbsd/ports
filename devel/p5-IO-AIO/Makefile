# $OpenBSD: Makefile,v 1.4 2016/09/05 16:46:18 nigel Exp $

COMMENT=	asynchronous Input/Output

MODULES=	cpan
DISTNAME=	IO-AIO-4.34
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += pthread

BUILD_DEPENDS=	devel/p5-Canary-Stability
RUN_DEPENDS=	devel/p5-common-sense

.include <bsd.port.mk>
