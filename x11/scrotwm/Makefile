# $OpenBSD: Makefile,v 1.8 2009/05/31 18:29:53 pyr Exp $

COMMENT=		small tiling window manager

DISTNAME=		scrotwm-0.9.5
CATEGORIES=		x11

HOMEPAGE=		http://www.peereboom.us/scrotwm/html/scrotwm.html
MAINTAINER=		Pierre-Yves Ritschard <pyr@spootnik.org>

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=   http://spootnik.org/scrotwm/

NO_REGRESS=     Yes
WANTLIB=        c X11 Xrandr util

RUN_DEPENDS=	:dmenu->=3.9:x11/dmenu
		
MAKE_FLAGS=	BINDIR="${TRUEPREFIX}/bin" \
		MANDIR="${TRUEPREFIX}/man/cat"

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/scrotwm.conf ${WRKSRC}/scrotwm.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/scrotwm
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/scrotwm
	${INSTALL_SCRIPT} ${WRKSRC}/baraction.sh ${PREFIX}/share/scrotwm
	${INSTALL_SCRIPT} ${WRKSRC}/screenshot.sh ${PREFIX}/share/scrotwm
	${INSTALL_DATA} ${WRKSRC}/scrotwm.conf ${PREFIX}/share/examples/scrotwm

.include <bsd.port.mk>
