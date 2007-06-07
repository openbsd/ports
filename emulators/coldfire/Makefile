# $OpenBSD: Makefile,v 1.1.1.1 2007/06/07 11:46:07 martin Exp $

COMMENT=	"Motorola Coldfire emulator"

DISTNAME=	coldfire-0.3.1
CATEGORIES=	emulators
HOMEPAGE=	http://www.slicer.ca/coldfire/

MAINTAINER=	Martin Reindl <martin@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/files/

WANTLIB=		c ncurses pthread readline

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/coldfire ${PREFIX}/bin

	${INSTALL_DATA_DIR} ${PREFIX}/share/coldfire
	cp ${WRKBUILD}/boards/*.board ${PREFIX}/share/coldfire

NO_REGRESS=		Yes

.include <bsd.port.mk>
