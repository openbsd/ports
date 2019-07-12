# $OpenBSD: Makefile,v 1.10 2019/07/12 21:02:17 sthen Exp $

COMMENT=	parallel job forking and management

DISTNAME =	Parallel-Forker-1.234
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	sysutils/p5-Proc-ProcessTable
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
