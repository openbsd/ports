# $OpenBSD: Makefile,v 1.13 2002/10/25 22:37:52 naddy Exp $

COMMENT=	"library providing malloc debugging via VM protection"

DISTNAME=	ElectricFence-2.0.5
PKGNAME=	${DISTNAME:L}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SUNSITE:=devel/lang/c/}

MAINTAINER=	Niklas Hallqvist <niklas@openbsd.org>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libefence.a ${PREFIX}/lib
	${INSTALL_MAN} ${WRKBUILD}/libefence.3 ${MAN3PREFIX}/man/man3

.include <bsd.port.mk>
