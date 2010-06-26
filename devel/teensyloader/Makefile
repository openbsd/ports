# $OpenBSD: Makefile,v 1.5 2010/06/26 21:22:00 ckuethe Exp $

COMMENT=	AVR microcontroller hardware in-system programmer

DISTNAME=	teensy_loader_cli.2.0
PKGNAME=	teensyloader-2.0
CATEGORIES=	devel

HOMEPAGE=	http://www.pjrc.com/teensy/

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		http://www.pjrc.com/teensy/

CONFIGURE_STYLE=	None
WRKDIST=${WRKDIR}/teensy_loader_cli
MAKE_FILE=Makefile.bsd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/teensyloader ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/teensy
	${INSTALL_DATA} ${WRKSRC}/*.hex ${PREFIX}/share/examples/teensy

.include <bsd.port.mk>
