# $OpenBSD: Makefile,v 1.13 2020/11/15 08:31:01 benoit Exp $

COMMENT=	parallel job forking and management

DISTNAME =	Parallel-Forker-1.260
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	sysutils/p5-Proc-ProcessTable
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
