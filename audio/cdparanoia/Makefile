# $OpenBSD: Makefile,v 1.12 2004/02/27 13:18:55 naddy Exp $

COMMENT=	"CDDA reading utility with extra data verification features"

DISTNAME=	cdparanoia-III-alpha9.8
PKGNAME=	cdparanoia-3.a9.8
CATEGORIES=	audio

HOMEPAGE=	http://www.xiph.org/paranoia/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/
EXTRACT_SUFX=	.src.tgz

CONFIGURE_STYLE=	autoconf autoheader
AUTOCONF_NEW=		Yes
CONFIGURE_ENV=		GCC=${CC}

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cdparanoia
	${INSTALL_DATA} ${WRKBUILD}/FAQ.txt ${PREFIX}/share/doc/cdparanoia

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS)
ALL_TARGET=	static
INSTALL_TARGET=	sinstall
.endif
