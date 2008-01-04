# $OpenBSD: Makefile,v 1.22 2008/01/04 17:48:34 espie Exp $

COMMENT=	general-purpose multi-platform x86 assembler

ONLY_FOR_ARCHS=	i386

DISTNAME=	nasm-0.98.38
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel lang

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nasm/}

HOMEPAGE=	http://nasm.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

NO_REGRESS=	Yes

DESTDIRNAME=	INSTALLROOT

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nasm
	${INSTALL_MAN} ${WRKSRC}/doc/*.doc ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKBUILD}/doc/html/*.html ${PREFIX}/share/doc/nasm
	${INSTALL_DATA} ${WRKBUILD}/doc/info/* $(PREFIX)/info

.include <bsd.port.mk>
