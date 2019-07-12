# $OpenBSD: Makefile,v 1.5 2019/07/12 20:46:08 sthen Exp $

COMMENT=	Motorola Coldfire emulator

DISTNAME=	coldfire-0.3.1
REVISION=	1
CATEGORIES=	emulators
HOMEPAGE=	http://www.slicer.ca/coldfire/

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}/files/

WANTLIB=		c curses pthread readline

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/coldfire ${PREFIX}/bin

	${INSTALL_DATA_DIR} ${PREFIX}/share/coldfire
	cp ${WRKBUILD}/boards/*.board ${PREFIX}/share/coldfire

NO_TEST=		Yes

.include <bsd.port.mk>
