# $OpenBSD: Makefile,v 1.12 2002/05/13 18:50:38 espie Exp $

COMMENT=	"library providing malloc debugging via VM protection"

PKGNAME=	electricfence-2.0.5
DISTNAME=	ElectricFence-2.0.5
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SUNSITE:=devel/lang/c/}
NEED_VERSION=	1.515

MAINTAINER=	Niklas Hallqvist <niklas@openbsd.org>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libefence.a ${PREFIX}/lib
	${INSTALL_MAN} ${WRKBUILD}/libefence.3 ${MAN3PREFIX}/man/man3

.include <bsd.port.mk>
