# $OpenBSD: Makefile,v 1.1.1.1 2009/03/28 18:55:09 ckuethe Exp $

COMMENT=	AVR microcontroller hardware in-system programmer

DISTNAME=	teensy_loader_cli
PKGNAME=	teensyloader-1.03
CATEGORIES=	devel

HOMEPAGE=	http://www.pjrc.com/teensy/

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	None
PATCHFILES=		teensy_loader_cli_openbsd.diff

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/teensyloader ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/teensy
	${INSTALL_DATA} ${WRKSRC}/*.{hex,asm} ${PREFIX}/share/examples/teensy

.include <bsd.port.mk>
