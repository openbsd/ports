# $OpenBSD: Makefile,v 1.12 2015/01/21 06:13:47 bentley Exp $

COMMENT=	handle data in a hierarchical structure

MODULES=	cpan
DISTNAME=	Data-Hierarchy-0.34
REVISION=	1
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Clone>=0.15 \
		devel/p5-Test-Exception>=0.21
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
