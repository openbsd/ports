# $OpenBSD: Makefile,v 1.17 2002/12/23 00:37:50 pvalchev Exp $

COMMENT=	"general-purpose multi-platform x86 assembler"

ONLY_FOR_ARCHS=	i386

DISTNAME=	nasm-0.98.35
CATEGORIES=	devel lang

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nasm/}

HOMEPAGE=	http://nasm.sourceforge.net/

# LGPL
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
	${INSTALL_MAN} ${WRKSRC}/doc/*.doc ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKBUILD}/doc/html/*.html ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKBUILD}/doc/info/* $(PREFIX)/info

.include <bsd.port.mk>
