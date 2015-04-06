# $OpenBSD: Makefile.inc,v 1.6 2015/04/06 14:57:15 landry Exp $

CATEGORIES =	games
PKGNAME ?=	${DISTNAME:S/-src//}
EXTRACT_SUFX ?=	.tar.bz2

HOMEPAGE ?=	http://gottcode.org/${GAME}/
MASTER_SITES ?=	${HOMEPAGE}

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST ?=	${WRKDIR}/${DISTNAME:S/-src//}
QT5 ?=		No
.if ${QT5} == "Yes"
MODULES +=	x11/qt5
MODULES +=	gcc4
MODGCC4_ARCHS =	i386 amd64 powerpc sparc64
MODGCC4_LANGS =	c++
WANTLIB +=	GL Qt5Core Qt5Gui Qt5Widgets
.else
MODULES +=	x11/qt4
WANTLIB +=	ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype
WANTLIB +=	QtGui stdc++
.endif
WANTLIB +=	c m pthread
RUN_DEPENDS +=	devel/desktop-file-utils x11/gtk+3,-guic

MAKE_FLAGS +=	CXX=${CXX} \
		QMAKE_CXXFLAGS="${CXXFLAGS}"
FAKE_FLAGS +=	INSTALL_ROOT=${DESTDIR}

do-configure:
.if ${QT5} == "Yes"
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/qmake-qt5
.else
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/qmake4
.endif
