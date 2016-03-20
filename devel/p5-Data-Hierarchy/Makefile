# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:18 naddy Exp $

COMMENT=	handle data in a hierarchical structure

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Data-Hierarchy-0.34
REVISION=	1
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Clone>=0.15 \
		devel/p5-Test-Exception>=0.21
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
