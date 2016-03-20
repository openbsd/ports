# $OpenBSD: Makefile,v 1.20 2016/03/20 19:56:13 naddy Exp $

COMMENT=	module to scan C language files

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	C-Scan-0.74
REVISION=	2
CATEGORIES=	devel

PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	devel/p5-Data-Flow>=0.05
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
