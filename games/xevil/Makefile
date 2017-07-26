# $OpenBSD: Makefile,v 1.34 2017/07/26 22:45:22 sthen Exp $
#

PORTROACH_COMMENT =	2.02r2 is newer than 2.02
PORTROACH =		skipv:2.02

COMMENT=	side-view, fast-action, kill everything type of game

V=		2.02r2
DISTNAME=	xevilsrc${V}
PKGNAME=	xevil-${V}
REVISION =	4

CATEGORIES=	games

HOMEPAGE=	http://www.xevil.com/
MASTER_SITES=	${HOMEPAGE}download/stable/
EXTRACT_SUFX=	.zip

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xpm c m pthread-stubs ${COMPILER_LIBCXX} xcb

USE_GMAKE=	Yes

WRKDIST=	${WRKDIR}
MAKE_FILE=	makefile

ALL_TARGET=	openbsd
MAKE_ENV=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" HOSTTYPE=openbsd

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

# WAY too many warnings from xpm files otherwise!!!
.if ${PROPERTIES:Mclang}
CXXFLAGS +=	-Wno-c++11-compat-deprecated-writable-strings
.endif
