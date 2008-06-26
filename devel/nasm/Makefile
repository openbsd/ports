# $OpenBSD: Makefile,v 1.25 2008/06/26 01:25:32 okan Exp $

COMMENT=	general-purpose multi-platform x86 assembler

ONLY_FOR_ARCHS=	i386 amd64

DISTNAME=	nasm-2.03.01
CATEGORIES=	devel lang

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nasm/}

HOMEPAGE=	http://nasm.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

CONFIGURE_STYLE= gnu
DESTDIRNAME=	INSTALLROOT

ALL_TARGET=	everything
INSTALL_TARGET=	install_everything

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/*.doc ${PREFIX}/share/doc/nasm

.include <bsd.port.mk>
