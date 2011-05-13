# $OpenBSD: Makefile,v 1.6 2011/05/13 00:09:29 gsoares Exp $

COMMENT=	parallel job forking and management

DISTNAME=	Parallel-Forker-1.232
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	cpan

RUN_DEPENDS=	sysutils/p5-Proc-ProcessTable
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
