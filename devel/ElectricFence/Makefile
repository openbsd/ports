# $OpenBSD: Makefile,v 1.2 1999/04/01 06:20:06 brad Exp $

PKGNAME=	electricfence-2.0.5
DISTNAME=	ElectricFence-2.0.5
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	devel/lang/c

MAINTAINER=	niklas@openbsd.org

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libefence.a ${PREFIX}/lib
	${INSTALL_MAN} ${WRKBUILD}/libefence.3 ${MAN3PREFIX}/man/man3

.include <bsd.port.mk>
