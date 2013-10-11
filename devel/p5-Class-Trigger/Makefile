# $OpenBSD: Makefile,v 1.11 2013/10/11 23:48:36 naddy Exp $

COMMENT=	add / call inheritable triggers

MODULES=	cpan
DISTNAME=	Class-Trigger-0.11
REVISION=	1
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Data-Inheritable \
		devel/p5-IO-stringy

.include <bsd.port.mk>
