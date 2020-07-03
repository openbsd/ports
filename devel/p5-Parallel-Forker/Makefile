# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:05 sthen Exp $

COMMENT=	parallel job forking and management

DISTNAME =	Parallel-Forker-1.252
CATEGORIES=	devel
REVISION =	0

# Artistic
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	sysutils/p5-Proc-ProcessTable
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
