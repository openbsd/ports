# $OpenBSD: Makefile,v 1.19 2019/05/01 19:29:43 sthen Exp $

COMMENT=	library providing malloc debugging via VM protection

DISTNAME=	ElectricFence-2.0.5
PKGNAME=	${DISTNAME:L}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SUNSITE:=devel/lang/c/}
REVISION=	0

# GPL
PERMIT_PACKAGE_CDROM=	Yes

NO_TEST=	Yes

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libefence.a ${PREFIX}/lib
	${INSTALL_MAN} ${WRKBUILD}/libefence.3 ${PREFIX}/man/man3

.include <bsd.port.mk>
