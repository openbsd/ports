# $OpenBSD: Makefile,v 1.7 2002/03/09 01:18:10 naddy Exp $
# $NetBSD: Makefile,v 1.1.1.1 2000/01/19 08:03:00 itohy Exp $

COMMENT=	"CDDA reading utility with extra data verification features"
DISTNAME=	cdparanoia-III-alpha9.7
PKGNAME=	cdparanoia-3.a9.7p2
CATEGORIES=	audio
NEED_VERSION=	1.504
MASTER_SITES=	http://www.xiph.org/paranoia/download/
EXTRACT_SUFX=	.src.tgz

HOMEPAGE=	http://www.xiph.org/paranoia/

CONFIGURE_STYLE=	autoconf
AUTOCONF_NEW=		Yes

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
CONFIGURE_ENV=GCC=${CC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cdparanoia
	${INSTALL_DATA} ${WRKBUILD}/FAQ.txt ${PREFIX}/share/doc/cdparanoia

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS)
ALL_TARGET=static
.endif
