# $OpenBSD: Makefile,v 1.18 2013/10/11 23:48:29 naddy Exp $

COMMENT=	module to scan C language files

MODULES=	cpan
DISTNAME=	C-Scan-0.74
REVISION=	1
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	devel/p5-Data-Flow>=0.05
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
