# $OpenBSD: Makefile,v 1.1.1.1 2007/08/28 18:49:40 jasper Exp $

COMMENT=		dockapp; gives access to X11's cut buffers

DISTNAME=		wmcb-0.2
CATEGORIES=		sysutils x11 x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		http://humppa.nl/distfiles/
EXTRACT_SUFX=		.tgz

USE_X11=		Yes

MAKE_FLAGS=		CFLAGS="${CFLAGS} -DOpenBSD -Wall -I${X11BASE}/include"

MAKE_FILE=		${WRKSRC}/Makefile
WRKDIST=		${WRKDIR}/wmcb.app/
WRKSRC=			${WRKDIST}/wmcb

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmcb ${PREFIX}/bin/wmcb
	${INSTALL_DATA_DIR} ${PREFIX}/share/wmcb
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/wmcb

.include <bsd.port.mk>
