COMMENT=	PolicyKit authentication agent for Qt

V=		0.114.0
DISTNAME=	polkit-qt-1-${V}
PKGNAME=	polkit-qt5-${V}

SHARED_LIBS +=  polkit-qt5-agent-1        3.0 # 0.99
SHARED_LIBS +=  polkit-qt5-core-1         3.0 # 0.99
SHARED_LIBS +=  polkit-qt5-gui-1          3.0 # 0.99

CATEGORIES=	x11 sysutils

EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	http://techbase.kde.org/Polkit-Qt-1

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m polkit-agent-1 polkit-gobject-1

MASTER_SITES=	${MASTER_SITE_KDE:=stable/polkit-qt-1/}

MODULES=	devel/cmake \
		x11/qt5

LIB_DEPENDS=	sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

CONFIGURE_ARGS= -DCMAKE_SHARED_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib"

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/PolkitQt-1Config.cmake.in

.include <bsd.port.mk>
