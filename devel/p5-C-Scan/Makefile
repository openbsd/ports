# $OpenBSD: Makefile,v 1.21 2019/07/12 21:02:15 sthen Exp $

COMMENT=	module to scan C language files

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	C-Scan-0.74
REVISION=	2
CATEGORIES=	devel

PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Data-Flow>=0.05
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
