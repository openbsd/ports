COMMENT=	PolicyKit authentication agent for Qt

V=		0.200.0
DISTNAME=	polkit-qt-1-${V}
PKGNAME=	polkit-qt5-${V}

SHARED_LIBS +=  polkit-qt5-agent-1        3.0 # 0.99
SHARED_LIBS +=  polkit-qt5-core-1         3.0 # 0.99
SHARED_LIBS +=  polkit-qt5-gui-1          3.0 # 0.99
SHARED_LIBS +=	polkit-qt6-agent-1        0.0 # 0.0
SHARED_LIBS +=	polkit-qt6-core-1         0.0 # 0.0
SHARED_LIBS +=	polkit-qt6-gui-1          0.0 # 0.0

CATEGORIES=	x11 sysutils

EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://invent.kde.org/libraries/polkit-qt-1

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

SITES=		${SITE_KDE:=stable/polkit-qt-1/}

WANTLIB += ${COMPILER_LIBCXX} gio-2.0 glib-2.0 gobject-2.0
WANTLIB += intl m polkit-agent-1 polkit-gobject-1

FLAVORS=	qt5
FLAVOR ?=

MODULES=	devel/cmake

LIB_DEPENDS=	sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

.if ${FLAVOR:Mqt5}
FULLPKGNAME=	polkit-qt5-${V}
MODULES +=	x11/qt5
QT_VERSION =	qt5
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Widgets
.else
PKGNAME=	polkit-qt6-${V}
MODULES +=	x11/qt6
QT_VERSION =	qt6
WANTLIB += GL Qt6Core Qt6DBus Qt6Gui Qt6Widgets
CONFIGURE_ARGS +=	-DQT_MAJOR_VERSION=6
.endif

MODCMAKE_LDFLAGS=	-L${LOCALBASE}/lib

NO_TEST=	Yes

LIBpolkit-Qt-core-1_VERSION= "${LIBpolkit-${QT_VERSION}-core-1_VERSION}"
LIBpolkit-Qt-agent-1_VERSION= "${LIBpolkit-${QT_VERSION}-agent-1_VERSION}"
LIBpolkit-Qt-gui-1_VERSION= "${LIBpolkit-${QT_VERSION}-gui-1_VERSION}"

SUBST_VARS +=	LIBpolkit-Qt-core-1_VERSION \
		LIBpolkit-Qt-agent-1_VERSION \
		LIBpolkit-Qt-gui-1_VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/PolkitQt-1Config.cmake.in

.include <bsd.port.mk>
