# $OpenBSD: Makefile.inc,v 1.4 2013/05/16 20:45:30 rpe Exp $

CATEGORIES =	games
PKGNAME ?=	${DISTNAME:S/-src//}
EXTRACT_SUFX ?=	.tar.bz2

HOMEPAGE ?=	http://gottcode.org/${GAME}/
MASTER_SITES ?=	${HOMEPAGE}

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST ?=	${WRKDIR}/${DISTNAME:S/-src//}
MODULES +=	x11/qt4
RUN_DEPENDS +=	devel/desktop-file-utils x11/gtk+2,-guic
WANTLIB +=	ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype
WANTLIB +=	QtGui c m pthread stdc++

MAKE_FLAGS +=	CXX=${CXX} \
		QMAKE_CXXFLAGS="${CXXFLAGS}"
FAKE_FLAGS +=	INSTALL_ROOT=${DESTDIR}

do-configure:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/qmake4
