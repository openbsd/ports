# $OpenBSD: Makefile,v 1.1.1.1 2000/09/21 16:07:20 espie Exp $
# $NetBSD: Makefile,v 1.1.1.1 2000/01/19 08:03:00 itohy Exp $

DISTNAME=	cdparanoia-III-alpha9.7
PKGNAME=	cdparanoia-3.a9.7
CATEGORIES=	audio
NEED_VERSION=	1.317
MASTER_SITES=	http://www.xiph.org/paranoia/download/
EXTRACT_SUFX=	.src.tgz

MAINTAINER=	ports@openbsd.org
HOMEPAGE=	http://www.xiph.org/paranoia/

CONFIGURE_STYLE=	autoconf
ALL_TARGET=	static

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
CONFIGURE_ENV=GCC=${CC}


do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/cdparanoia ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/cdparanoia.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKBUILD}/FAQ.txt ${PREFIX}/share/cdparanoia-FAQ

.include <bsd.port.mk>
