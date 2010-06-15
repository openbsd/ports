# $OpenBSD: Makefile,v 1.25 2010/06/15 19:04:05 landry Exp $
#

COMMENT=	side-view, fast-action, kill everything type of game

V=		2.02r2
DISTNAME=	xevilsrc${V}
PKGNAME=	xevil-${V}p1

CATEGORIES=	games

HOMEPAGE=	http://www.xevil.com/
MASTER_SITES=	${HOMEPAGE}download/stable/
EXTRACT_SUFX=	.zip

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xpm c m pthread-stubs stdc++ xcb

USE_X11=	Yes
USE_GMAKE=	Yes

WRKDIST=	${WRKDIR}
MAKE_FILE=	makefile

ALL_TARGET=	openbsd
MAKE_ENV=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" HOSTTYPE=openbsd

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xevil/html
	${INSTALL_PROGRAM} ${WRKBUILD}/x11/OPENBSD/xevil \
		${PREFIX}/bin/xevil
	${INSTALL_DATA} ${WRKSRC}/x11/app-defaults/XEvil.* \
		$(PREFIX)/lib/X11/app-defaults/
	${INSTALL_DATA} ${WRKSRC}/instructions/* \
		${PREFIX}/share/doc/xevil/html

.include <bsd.port.mk>
