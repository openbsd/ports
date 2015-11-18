# $OpenBSD: Makefile,v 1.1.1.1 2015/11/18 09:10:34 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	asynchronous Input/Output

MODULES=	cpan
DISTNAME=	IO-AIO-4.32
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += pthread

RUN_DEPENDS=	devel/p5-common-sense

.include <bsd.port.mk>
