# $OpenBSD: Makefile,v 1.8 2000/02/16 16:12:58 millert Exp $

DISTNAME=	nasm-0.98
CATEGORIES=	devel lang
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= devel/lang/assemblers

MAINTAINER=	angelos@openbsd.org

#
# The license is basically NOFEE but requires permission for inclusion
# in a commercial procuct.  See License file for info.
#
LICENSE_TYPE=		RESTRICT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nasm
	${INSTALL_SCRIPT} ${WRKSRC}/doc/rdsrc.pl ${PREFIX}/share/doc/nasm
	${INSTALL_MAN} ${WRKSRC}/*.doc ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKSRC}/doc/nasmdoc.src ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKBUILD}/doc/nasmdoc.ps ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKBUILD}/doc/nasmdoc.txt ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKBUILD}/doc/html/*.html ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKBUILD}/doc/info/nasm.info $(PREFIX)/info
	@install-info ${PREFIX}/info/nasm.info ${PREFIX}/info/dir

.include <bsd.port.mk>
