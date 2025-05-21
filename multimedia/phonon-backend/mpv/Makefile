COMMENT =	Phonon backend using MPV player

VERSION =	0.1.0
DISTNAME =	phonon-backend-mpv-${VERSION}

DIST_TUPLE +=	github OpenProgger phonon-mpv v${VERSION} .

FLAVORS =	qt5
FLAVOR ?=

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/kf6/extra-cmake-modules

LIB_DEPENDS =		multimedia/mpv

.if ${FLAVOR:Mqt5}
FULLPKGNAME =		phonon-backend-mpv-qt5-${VERSION}
MODULES +=		x11/qt5

LIB_DEPENDS +=		multimedia/phonon \
			x11/qt5/qtx11extras

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets Qt5X11Extras
WANTLIB += m mpv phonon4qt5 phonon4qt5experimental

CONFIGURE_ARGS +=	-DPHONON_BUILD_QT6=OFF
CONFIGURE_ARGS +=	-DPHONON_BUILD_QT5=ON
.else
MODULES +=		x11/qt6

LIB_DEPENDS +=		multimedia/phonon,qt6

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6OpenGL Qt6OpenGLWidgets
WANTLIB += Qt6Widgets m mpv phonon4qt6 phonon4qt6experimental

CONFIGURE_ARGS +=	-DPHONON_BUILD_QT6=ON
CONFIGURE_ARGS +=	-DPHONON_BUILD_QT5=OFF
.endif

CONFIGURE_ARGS +=	-DKDE_INSTALL_QTPLUGINDIR=${MODQT_LIBDIR}/plugins

#NO_TEST =		Yes
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

WRKDIST =		${WRKDIR}/phonon-mpv-${VERSION}

.include <bsd.port.mk>
