COMMENT =	VLC-based Phonon backend
VERSION =	0.12.0
DISTNAME =	phonon-backend-vlc-${VERSION}
REVISION =	0

SITES =		${SITE_KDE:=stable/phonon/phonon-backend-vlc/${VERSION}/}
EXTRACT_SUFX = .tar.xz

FLAVORS =	qt6
FLAVOR ?=

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/kf6/extra-cmake-modules

LIB_DEPENDS =		x11/vlc

WANTLIB += ${COMPILER_LIBCXX} m vlc vlccore

.if ${FLAVOR:Mqt6}
FULLPKGNAME=	phonon-backend-vlc-qt6-${VERSION}

MODULES +=	x11/qt6

WANTLIB += Qt6Core Qt6Gui Qt6Widgets GL phonon4qt6 phonon4qt6experimental

LIB_DEPENDS +=		multimedia/phonon,qt6

CONFIGURE_ARGS +=	-DPHONON_BUILD_QT6=ON
CONFIGURE_ARGS +=	-DPHONON_BUILD_QT5=OFF
.else
MODULES +=	x11/qt5

LIB_DEPENDS +=		multimedia/phonon>=4.12.0

WANTLIB += Qt5Core Qt5Gui Qt5Widgets phonon4qt5 phonon4qt5experimental

CONFIGURE_ARGS +=	-DPHONON_BUILD_QT6=OFF
CONFIGURE_ARGS +=	-DPHONON_BUILD_QT5=ON
.endif

CONFIGURE_ARGS += \
	-DKDE_INSTALL_QTPLUGINDIR=${MODQT_LIBDIR}/plugins \

NO_TEST =		Yes

.include <bsd.port.mk>
