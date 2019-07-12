# $OpenBSD: Makefile,v 1.39 2019/07/12 20:46:27 sthen Exp $
#

PORTROACH_COMMENT =	2.02r2 is newer than 2.02
PORTROACH =		skipv:2.02

COMMENT=	side-view, fast-action, kill everything type of game

V=		2.02r2
DISTNAME=	xevilsrc${V}
PKGNAME=	xevil-${V}
REVISION =	7

CATEGORIES=	games

HOMEPAGE=	http://www.xevil.com/
MASTER_SITES=	${HOMEPAGE}download/stable/
EXTRACT_SUFX=	.zip

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 Xpm c m ${COMPILER_LIBCXX} xcb

COMPILER =	base-clang ports-gcc base-gcc

USE_GMAKE=	Yes

WRKDIST=	${WRKDIR}
MAKE_FILE=	makefile

ALL_TARGET=	openbsd
MAKE_ENV=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" HOSTTYPE=openbsd

# WAY too many warnings from xpm files otherwise!!!
CXXFLAGS +=	-Wno-write-strings

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xevil/html
	${INSTALL_PROGRAM} ${WRKBUILD}/x11/OPENBSD/xevil \
		${PREFIX}/bin/xevil
	${INSTALL_DATA} ${WRKSRC}/x11/app-defaults/XEvil.* \
		$(PREFIX)/lib/X11/app-defaults/
	${INSTALL_DATA} ${WRKSRC}/instructions/* \
		${PREFIX}/share/doc/xevil/html

.include <bsd.port.mk>
