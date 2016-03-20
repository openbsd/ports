# $OpenBSD: Makefile,v 1.2 2016/03/20 19:56:25 naddy Exp $

COMMENT=	asynchronous Input/Output

MODULES=	cpan
DISTNAME=	IO-AIO-4.32
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += perl pthread

RUN_DEPENDS=	devel/p5-common-sense

.include <bsd.port.mk>
