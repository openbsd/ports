# $OpenBSD: Makefile,v 1.11 2020/02/14 13:57:43 benoit Exp $

COMMENT=	parallel job forking and management

DISTNAME =	Parallel-Forker-1.252
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	sysutils/p5-Proc-ProcessTable
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
