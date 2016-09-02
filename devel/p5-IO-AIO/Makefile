# $OpenBSD: Makefile,v 1.3 2016/09/02 22:48:23 ajacoutot Exp $

COMMENT=	asynchronous Input/Output

MODULES=	cpan
DISTNAME=	IO-AIO-4.34
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += pthread

RUN_DEPENDS=	devel/p5-common-sense

.include <bsd.port.mk>
