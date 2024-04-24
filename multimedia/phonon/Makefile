COMMENT =	multimedia layer for Qt5/KDE5

CATEGORIES =	multimedia devel

VERSION =	4.12.0
DISTNAME =	phonon-${VERSION}
REVISION =	0

# XXX major should be tweaked on any update, to unbreak
# IMPORTED_LINK_INTERFACE_LIBRARIES CMake feature.
SHARED_LIBS +=  phonon4qt5                4.0
SHARED_LIBS +=  phonon4qt5experimental    4.0

SHARED_LIBS +=  phonon4qt6                0.0 # 0.0
SHARED_LIBS +=  phonon4qt6experimental    0.0 # 0.0

HOMEPAGE =	https://community.kde.org/Phonon

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPL v2.1
PERMIT_PACKAGE =	Yes

SITES =			${SITE_KDE:=stable/phonon/${VERSION}/}
EXTRACT_SUFX =		.tar.xz

FLAVORS =	qt6
FLAVOR ?=

LIB_DEPENDS =		audio/pulseaudio

BUILD_DEPENDS =		x11/qt5/qtdeclarative \
			devel/kf6/extra-cmake-modules

CXXFLAGS_base-clang =	-Wno-error=enum-constexpr-conversion

MODULES =	devel/cmake

.if ${FLAVOR:Mqt6}
FULLPKGNAME=	phonon-qt6-${VERSION}

MODULES +=	x11/qt6

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Core5Compat Qt6Gui
WANTLIB += Qt6Widgets c m pulse pulse-mainloop-glib

BUILD_DEPENDS +=	x11/qt6/qtdeclarative
RUN_DEPENDS +=		x11/qt6/qtdeclarative
LIB_DEPENDS +=		x11/qt6/qt5compat

CONFIGURE_ARGS +=	-DPHONON_BUILD_QT6=ON
CONFIGURE_ARGS +=	-DPHONON_BUILD_QT5=OFF
CONFIGURE_ARGS += \
	-DECM_MKSPECS_INSTALL_DIR=${PREFIX}/share/kf6/mkspecs
QT_VERSION =	6
.else
MODULES +=	x11/qt5

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets c m pulse
WANTLIB += pulse-mainloop-glib

BUILD_DEPENDS +=	x11/qt5/qtdeclarative
RUN_DEPENDS +=		x11/qt5/qtdeclarative

CONFIGURE_ARGS +=	-DPHONON_BUILD_QT6=OFF
CONFIGURE_ARGS +=	-DPHONON_BUILD_QT5=ON
CONFIGURE_ARGS += \
	-DECM_MKSPECS_INSTALL_DIR=${PREFIX}/share/kf5/mkspecs
QT_VERSION =	5
.endif

# Clashes with the one provided by Qt itself.
CONFIGURE_ARGS +=	-DPHONON_BUILD_DESIGNER_PLUGIN=OFF

pre-configure:
	rm -rf ${WRKSRC}/poqm

post-install:
	mv ${WRKINST}/${LOCALBASE}/bin/phononsettings \
		${WRKINST}/${LOCALBASE}/bin/phononsettings-qt${QT_VERSION}

.include <bsd.port.mk>
