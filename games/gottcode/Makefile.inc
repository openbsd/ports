# $OpenBSD: Makefile.inc,v 1.11 2017/05/31 08:08:15 espie Exp $

CATEGORIES =	games
PKGNAME ?=	${DISTNAME:S/-src//}
EXTRACT_SUFX ?=	.tar.bz2

HOMEPAGE ?=	http://gottcode.org/${GAME}/
MASTER_SITES ?=	${HOMEPAGE}

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST ?=	${WRKDIR}/${DISTNAME:S/-src//}
MODULES +=	devel/qmake
QT5 ?=		No
.if ${QT5} == "Yes"
MODULES +=	x11/qt5
MODGCC4_ARCHS =	i386 amd64 powerpc sparc64
WANTLIB +=	GL Qt5Core Qt5Gui Qt5Widgets
.else
MODULES +=	x11/qt4
WANTLIB +=	ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype
WANTLIB +=	QtGui ${LIBCXX}
.endif
WANTLIB +=	c m pthread
RUN_DEPENDS +=	devel/desktop-file-utils x11/gtk+3,-guic

MAKE_FLAGS +=	CXX=${CXX} \
		QMAKE_CXXFLAGS="${CXXFLAGS}"

NO_TEST =	Yes
