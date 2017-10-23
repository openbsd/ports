# $OpenBSD: Makefile,v 1.11 2017/10/23 17:11:03 sthen Exp $

COMMENT=		dockapp; gives access to X11's cut buffers

DISTNAME=		wmcb-0.2
PKGNAME=		${DISTNAME}
REVISION =		2

CATEGORIES=		sysutils x11 x11/windowmaker

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		X11 Xext Xpm c xcb

MASTER_SITES=		https://distfiles.nl/
EXTRACT_SUFX=		.tgz


MAKE_FLAGS=		CFLAGS="${CFLAGS} -DOpenBSD -Wall -I${X11BASE}/include"

MAKE_FILE=		${WRKSRC}/Makefile
WRKDIST=		${WRKDIR}/wmcb.app
WRKSRC=			${WRKDIST}/wmcb

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmcb ${PREFIX}/bin/wmcb
	${INSTALL_DATA_DIR} ${PREFIX}/share/wmcb
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/wmcb

.include <bsd.port.mk>
