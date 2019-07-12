# $OpenBSD: Makefile,v 1.11 2019/07/12 20:51:19 sthen Exp $

COMMENT=	PolicyKit authentication agent for Qt

V=		0.112.0
DISTNAME=	polkit-qt-1-${V}
REVISION =	7

SHARED_LIBS +=  polkit-qt-agent-1         2.0 # 0.99
SHARED_LIBS +=  polkit-qt-core-1          2.0 # 0.99
SHARED_LIBS +=  polkit-qt-gui-1           2.0 # 0.99
# XXX keep versions below in sync with above, due to patch-PolkitQt-1Config_cmake_in
SHARED_LIBS +=  polkit-qt5-agent-1        2.0 # 0.99
SHARED_LIBS +=  polkit-qt5-core-1         2.0 # 0.99
SHARED_LIBS +=  polkit-qt5-gui-1          2.0 # 0.99

CATEGORIES=	x11 sysutils

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://techbase.kde.org/Polkit-Qt-1

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m polkit-agent-1 polkit-gobject-1
WANTLIB += ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_KDE:=stable/apps/KDE4.x/admin/}

FLAVORS=	qt5
FLAVOR?=

MODULES=	devel/cmake

BUILD_DEPENDS=	devel/automoc

LIB_DEPENDS=	sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

CONFIGURE_ARGS= -DCMAKE_SHARED_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib"

#
# We use PKGSTEM+CMAKESTEM instead of simple QT5=5 because otherwise
# update-plist will fail in both qt4 and qt5 cases:
#  * for qt4 it'll drop ${QT5} from plist;
#  * for qt5 it'll use ${FLAVORS} instead, see the
#    PKG_ARGS+=-DFLAVORS=${FLAVOR_EXT:Q} line in bsd.port.mk.
#

.if ${FLAVOR:Mqt5}
FULLPKGNAME=	polkit-qt5-${V}
MODULES+=	x11/qt5
CONFIGURE_ARGS+=-DUSE_QT5=Yes \
		-DOPENBSD_STDCPP=${OPENBSD_STDCPP}
WANTLIB+=	Qt5Core Qt5DBus Qt5Gui Qt5Widgets
PKGSTEM=	polkit-qt5-
CMAKESTEM=	PolkitQt5-1
.else
FULLPKGNAME=	polkit-qt4-${V}
MODULES+=	x11/qt4
CONFIGURE_ARGS+=-DUSE_QT4=Yes \
		-DOPENBSD_STDCPP=
WANTLIB+=	QtDBus QtGui
PKGSTEM=	polkit-qt-
CMAKESTEM=	PolkitQt-1
.endif

# N.B.: run update-plist with qt4 FLAVOR
SUBST_VARS=	PKGSTEM CMAKESTEM

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/PolkitQt-1Config.cmake.in

.include <bsd.port.mk>
.if ${PROPERTIES:Mclang}
OPENBSD_STDCPP = c++ c++abi pthread
.else
OPENBSD_STDCPP = estdc++
.endif
