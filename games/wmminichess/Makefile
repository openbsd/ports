# $OpenBSD: Makefile,v 1.12 2004/11/28 22:41:22 espie Exp $

COMMENT=		'wm-dockapp; chess game'

DISTNAME=		miniCHESS-0.8
PKGNAME=		wm${DISTNAME:L}
CATEGORIES=		games x11 x11/windowmaker

HOMEPAGE=		http://www.foobargeek.com/miniCHESS/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		${HOMEPAGE}

RUN_DEPENDS=		:gnuchess-*:games/gnuchess

USE_X11=		Yes
NO_REGRESS=		Tes

ALL_TARGET=		minichess

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/minichess ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmminichess
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmminichess/

.include <bsd.port.mk>
