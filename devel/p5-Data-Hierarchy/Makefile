# $OpenBSD: Makefile,v 1.15 2020/07/03 21:44:46 sthen Exp $

COMMENT=	handle data in a hierarchical structure

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Data-Hierarchy-0.34
REVISION=	2
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Clone>=0.15 \
		devel/p5-Test-Exception>=0.21
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
