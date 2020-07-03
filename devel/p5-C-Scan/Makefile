# $OpenBSD: Makefile,v 1.22 2020/07/03 21:44:40 sthen Exp $

COMMENT=	module to scan C language files

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	C-Scan-0.74
REVISION=	3
CATEGORIES=	devel

PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Data-Flow>=0.05
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
