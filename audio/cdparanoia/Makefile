# $OpenBSD: Makefile,v 1.4 2001/08/23 22:22:59 espie Exp $
# $NetBSD: Makefile,v 1.1.1.1 2000/01/19 08:03:00 itohy Exp $

COMMENT=	"CDDA reading utility with extra data verification features"
DISTNAME=	cdparanoia-III-alpha9.7
PKGNAME=	cdparanoia-3.a9.7p1
CATEGORIES=	audio
NEED_VERSION=	1.364
MASTER_SITES=	http://www.xiph.org/paranoia/download/
EXTRACT_SUFX=	.src.tgz

HOMEPAGE=	http://www.xiph.org/paranoia/

CONFIGURE_STYLE=	autoconf

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
CONFIGURE_ENV=GCC=${CC}

post-install:
	${INSTALL_DATA} ${WRKBUILD}/FAQ.txt ${PREFIX}/share/cdparanoia-FAQ

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS)
ALL_TARGET=static
.endif
