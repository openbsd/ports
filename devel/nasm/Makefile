# $OpenBSD: Makefile,v 1.15 2002/10/25 22:37:52 naddy Exp $

COMMENT=	"general-purpose multi-platform x86 assembler"

ONLY_FOR_ARCHS=	i386

DISTNAME=	nasm-0.98
CATEGORIES=	devel lang

MASTER_SITES=	${MASTER_SITE_SUNSITE:=devel/lang/assemblers/}

HOMEPAGE=	http://www.web-sites.co.uk/nasm/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# The license is basically NOFEE but requires permission for inclusion
# in a commercial procuct.  See License file for info.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

NO_REGRESS=	Yes

FAKE_FLAGS=	INSTALLROOT="${WRKINST}"

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
