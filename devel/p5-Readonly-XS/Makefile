# $OpenBSD: Makefile,v 1.13 2013/10/11 23:49:07 naddy Exp $

COMMENT= 	create readonly variables faster

MODULES=	cpan
SHARED_ONLY=	Yes
DISTNAME=	Readonly-XS-1.05
REVISION=	2
CATEGORIES=	devel

# perl licence
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

RUN_DEPENDS=	devel/p5-Readonly>=1.02

.include <bsd.port.mk>
