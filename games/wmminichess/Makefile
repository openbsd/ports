# $OpenBSD: Makefile,v 1.20 2017/10/23 17:10:50 sthen Exp $

COMMENT=		wm-dockapp; chess game

DISTNAME=		miniCHESS-0.8
PKGNAME=		wm${DISTNAME:L}
REVISION =		2
CATEGORIES=		games x11 x11/windowmaker

HOMEPAGE=		http://www.foobargeek.com/miniCHESS/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext Xpm c xcb

MASTER_SITES=		${HOMEPAGE}

RUN_DEPENDS=		games/gnuchess

NO_TEST=		Yes

ALL_TARGET=		minichess

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/minichess ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmminichess
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmminichess/

.include <bsd.port.mk>
