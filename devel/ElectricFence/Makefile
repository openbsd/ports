# $OpenBSD: Makefile,v 1.9 2001/05/06 00:12:42 lebel Exp $

COMMENT=	"library providing malloc debugging via VM protection"

PKGNAME=	electricfence-2.0.5
DISTNAME=	ElectricFence-2.0.5
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	devel/lang/c
NEED_VERSION=	1.402

MAINTAINER=	Niklas Hallqvist <niklas@openbsd.org>

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libefence.a ${PREFIX}/lib
	${INSTALL_MAN} ${WRKBUILD}/libefence.3 ${MAN3PREFIX}/man/man3

.include <bsd.port.mk>
