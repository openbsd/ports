# $OpenBSD: Makefile,v 1.17 2013/03/11 10:50:13 espie Exp $

COMMENT=	module to scan C language files

MODULES=	cpan
DISTNAME=	C-Scan-0.74
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	devel/p5-Data-Flow>=0.05
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
