# $OpenBSD: Makefile,v 1.23 2019/07/12 20:51:24 sthen Exp $

COMMENT=		wm-dockapp; application launching program

DISTNAME=		wmbutton-0.6.1
REVISION=		1
CATEGORIES=		x11 x11/windowmaker
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=		http://greek0.net/~greek0/wmbutton/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		${HOMEPAGE}

NO_TEST=		Yes

SAMPLE_DIR=		${PREFIX}/share/examples/wmbutton
SUBST_VARS+=		SAMPLE_DIR

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmbutton ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/.wmbutton ${SAMPLE_DIR}/dot.wmbutton.sample

.include <bsd.port.mk>
