# $OpenBSD: Makefile,v 1.1.1.1 2009/02/07 02:37:42 form Exp $
# $RuOBSD: Makefile,v 1.4 2009/02/05 06:38:32 form Exp $

COMMENT=		DEC Professional 350 emulator based on SIMH

VERSION=		9-16-06
DISTNAME=		xhomer-${VERSION}
PKGNAME=		xhomer-${VERSION:S/-/./g}
EXTRACT_SUFX=		.tgz
CATEGORIES=		emulators

HOMEPAGE=		http://xhomer.isani.org/xhomer/

MAINTAINER=		Oleg Safiullin <form@openbsd.org>

# SIMH + GPLv2
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext Xxf86dga c m

MASTER_SITES=		${HOMEPAGE}

USE_X11=		Yes
USE_GMAKE=		Yes
MAKE_ENV=		X11DIR=${X11BASE}
ALL_TARGET=		xhomer

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xhomer ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xhomer
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xhomer/html
	${INSTALL_DATA} ${WRKDIST}/LICENSE ${PREFIX}/share/doc/xhomer
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/xhomer
	${INSTALL_DATA} ${WRKDIST}/DOC/* ${PREFIX}/share/doc/xhomer/html
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xhomer
	${INSTALL_DATA} ${WRKDIST}/xhomer.cfg ${PREFIX}/share/examples/xhomer

.include <bsd.port.mk>
