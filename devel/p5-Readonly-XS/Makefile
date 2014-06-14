# $OpenBSD: Makefile,v 1.14 2014/06/14 23:24:58 sthen Exp $

COMMENT= 	create readonly variables faster

MODULES=	cpan
SHARED_ONLY=	Yes
DISTNAME=	Readonly-XS-1.05
REVISION=	3
CATEGORIES=	devel

# perl licence
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

RUN_DEPENDS=	devel/p5-Readonly>=1.02

.include <bsd.port.mk>
