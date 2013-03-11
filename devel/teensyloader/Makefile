# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:31 espie Exp $

COMMENT=	in-system programmer for Teensy boards

DISTNAME=	teensy_loader_cli.2.0
PKGNAME=	teensyloader-2.0
REVISION=	0
CATEGORIES=	devel

HOMEPAGE=	http://www.pjrc.com/teensy/

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

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
