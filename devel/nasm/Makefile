# $OpenBSD: Makefile,v 1.10 2000/08/17 12:32:44 fgsch Exp $

DISTNAME=	nasm-0.98
CATEGORIES=	devel lang
NEED_VERSION=	1.310
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= devel/lang/assemblers

MAINTAINER=	angelos@openbsd.org
HOMEPAGE=	http://www.web-sites.co.uk/nasm/

#
# The license is basically NOFEE but requires permission for inclusion
# in a commercial procuct.  See License file for info.
#
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=	gnu
FAKE_FLAGS=	INSTALLROOT=${WRKINST}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nasm
	${INSTALL_SCRIPT} ${WRKSRC}/doc/rdsrc.pl ${PREFIX}/share/doc/nasm
	${INSTALL_MAN} ${WRKSRC}/*.doc ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKSRC}/doc/nasmdoc.src ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKBUILD}/doc/nasmdoc.ps ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKBUILD}/doc/nasmdoc.txt ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKBUILD}/doc/html/*.html ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKBUILD}/doc/info/* $(PREFIX)/info

.include <bsd.port.mk>
