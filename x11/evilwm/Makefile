# $OpenBSD: Makefile,v 1.17 2013/03/11 11:46:09 espie Exp $

COMMENT=		minimalist window manager for the X Window System

DISTNAME=		evilwm-1.0.1
CATEGORIES=		x11

HOMEPAGE=		http://www.6809.org.uk/evilwm/

MAINTAINER=		Victor Sahlstedt <salan@legonet.org>

# 9wm license
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext Xrandr c

MASTER_SITES=		${HOMEPAGE}

USE_GROFF =		Yes
MAKE_FLAGS=		XROOT='${X11BASE}' CC='${CC}'

NO_TEST=		Yes

DOCDIR=			${PREFIX}/share/doc/evilwm

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/evilwm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/evilwm.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}

.include <bsd.port.mk>
