# $OpenBSD: Makefile,v 1.4 2009/04/23 22:37:14 ckuethe Exp $

COMMENT=	AVR microcontroller hardware in-system programmer

DISTNAME=	teensyloader-1.03
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel

HOMEPAGE=	http://www.pjrc.com/teensy/

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		https://www.mainframe.cx/~ckuethe/openbsd/

CONFIGURE_STYLE=	None

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/teensyloader ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/teensy
	${INSTALL_DATA} ${WRKSRC}/*.{hex,asm} ${PREFIX}/share/examples/teensy

.include <bsd.port.mk>
