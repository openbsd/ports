# $OpenBSD: Makefile,v 1.6 2010/12/13 08:27:43 jasper Exp $

COMMENT=	in-system programmer for Teensy boards

DISTNAME=	teensy_loader_cli.2.0
PKGNAME=	teensyloader-2.0
REVISION=	0
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
WRKDIST=		${WRKDIR}/teensy_loader_cli
MAKE_FILE=		Makefile.bsd

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/teensyloader ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/teensy
	${INSTALL_DATA} ${WRKSRC}/*.hex ${PREFIX}/share/examples/teensy

.include <bsd.port.mk>
