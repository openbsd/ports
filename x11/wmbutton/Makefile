# $OpenBSD: Makefile,v 1.19 2012/12/13 16:34:48 naddy Exp $

COMMENT=		wm-dockapp; application launching program

DISTNAME=		wmbutton-0.6.1
REVISION=		0
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://greek0.net/~greek0/wmbutton/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		${HOMEPAGE}

NO_REGRESS=		Yes

SAMPLE_DIR=		${PREFIX}/share/examples/wmbutton
SUBST_VARS+=		SAMPLE_DIR

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmbutton ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/.wmbutton ${SAMPLE_DIR}/dot.wmbutton.sample

.include <bsd.port.mk>
