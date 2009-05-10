# $OpenBSD: Makefile,v 1.13 2009/05/10 08:39:23 sthen Exp $

COMMENT=		minimalist window manager for the X Window System

DISTNAME=		evilwm-1.0.1
CATEGORIES=		x11

HOMEPAGE=		http://www.6809.org.uk/evilwm/

MAINTAINER=		Victor Sahlstedt <salan@legonet.org>

# 9wm license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xrandr c

MASTER_SITES=		${HOMEPAGE}

USE_X11=		Yes
MAKE_FLAGS=		XROOT='${X11BASE}' CC='${CC}'

NO_REGRESS=		Yes

DOCDIR=			${PREFIX}/share/doc/evilwm

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/evilwm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/evilwm.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}

.include <bsd.port.mk>
