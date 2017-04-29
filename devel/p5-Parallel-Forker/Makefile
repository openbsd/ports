# $OpenBSD: Makefile,v 1.9 2017/04/29 08:39:12 benoit Exp $

COMMENT=	parallel job forking and management

DISTNAME =	Parallel-Forker-1.234
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	sysutils/p5-Proc-ProcessTable
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
