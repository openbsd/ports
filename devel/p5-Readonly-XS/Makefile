# $OpenBSD: Makefile,v 1.15 2015/07/16 23:57:23 ajacoutot Exp $

COMMENT= 	create readonly variables faster

MODULES=	cpan
SHARED_ONLY=	Yes
DISTNAME=	Readonly-XS-1.05
REVISION=	4
CATEGORIES=	devel

# perl licence
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

RUN_DEPENDS=	devel/p5-Readonly>=1.02

.include <bsd.port.mk>
