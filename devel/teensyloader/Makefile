# $OpenBSD: Makefile,v 1.9 2015/05/03 13:31:49 bmercer Exp $

COMMENT=	in-system programmer for Teensy boards
V=		2.1
DISTNAME=	teensy_loader_cli.${V}
PKGNAME=	teensyloader-${V}
CATEGORIES=	devel
EXTRACT_SUFX=	.zip
HOMEPAGE=	http://www.pjrc.com/teensy/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	None
WRKDIST=		${WRKDIR}/teensy_loader_cli
MAKE_FILE=		Makefile.bsd
NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/teensyloader ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/teensy
	${INSTALL_DATA} ${WRKSRC}/*.hex ${PREFIX}/share/examples/teensy

.include <bsd.port.mk>
