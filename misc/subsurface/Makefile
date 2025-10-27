COMMENT =	divelog program for recreational, tech, and free-divers

PKGNAME =	subsurface-6.0.5459
DIST_TUPLE +=	github subsurface subsurface e0fbda77ef203a5a2539465e9fa44df56e2f5a9e .
DIST_TUPLE +=	github subsurface libdc 64ecef5b3ee7342159349391c8b55281bebad2c2 libdivecomputer
DIST_TUPLE +=	github subsurface googlemaps 7ce7124b385b2ebac0f72c38b094f436d4fe5c58 gmaps

CATEGORIES =	misc
HOMEPAGE =	https://subsurface-divelog.org

# GPLv2, LGPLv2.1 for libdivecomputer, MIT for googlemaps
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL Qt5Concurrent Qt5Core Qt5Gui Qt5Location Qt5Network
WANTLIB += Qt5Positioning Qt5PositioningQuick Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5QuickWidgets Qt5Svg Qt5Widgets c crypto
WANTLIB += git2 lcms2 m raw_r sqlite3 ssh2 ssl usb-1.0 xml2 xslt
WANTLIB += zip

# presumably dlopen()'d?
WANTLIB += Qt5WebKit Qt5WebKitWidgets

USE_GMAKE =	Yes

# cmake for subsurface, autoconf for libdivecomputer-subsurface
MODULES +=	gnu \
		devel/cmake \
		x11/qt5

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
AUTOCONF_DIRS =		${WRKSRC}/libdivecomputer

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

LIB_DEPENDS =	archivers/libzip \
		databases/sqlite3 \
		devel/libgit2/libgit2 \
		devel/libusb1 \
		graphics/lcms2 \
		graphics/libraw \
		security/libssh2 \
		textproc/libxml \
		textproc/libxslt \
		x11/qt5/qtbase \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qtsvg \
		x11/qt5/qtwebkit \
		x11/qt5/qtlocation

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_ARGS +=	-DBTSUPPORT:Bool=OFF
CONFIGURE_ARGS +=	-DLIBGIT2_FROM_PKGCONFIG:Bool=ON
CONFIGURE_ARGS +=	-DNO_USERMANUAL:Bool=ON
CONFIGURE_ARGS +=	-DWRKINST=${WRKINST}
CONFIGURE_ARGS +=       -DUSE_WEBENGINE:Bool=OFF
CONFIGURE_ARGS +=       -DNO_PRINTING:Bool=ON

# It's possible to run the tests, but they fail.
# First, add the subsurface/large-anonymous-sample-data repo to DISTFILES.
# Add archive/xz to the TEST_DEPENDS.
# To TEST_ENV add QT_PLUGIN_PATH and QT_QPA_PLATFORM_PLUGIN_PATH.
# Watch tests fail.
NO_TEST =	Yes

# main part is a cmake build, so we can't really use CONFIGURE_STYLE=autoreconf
do-gen:
	${AUTOCONF_ENV} autoreconf -f -i ${WRKSRC}/libdivecomputer

pre-configure:
	cd ${WRKSRC}; mkdir -p libdivecomputer/build gmaps/build
	cd ${WRKSRC}/gmaps/build && ${MODQT_QMAKE} -r ..
	cd ${WRKSRC}/libdivecomputer/build && \
		${XXCONFIGURE_ENV} ../configure \
		--without-libusb \
		--without-hidapi \
		--without-bluez \
		--disable-doc \
		--disable-shared \
		--disable-examples \
		--disable-silent-rules \
		--prefix=${WRKSRC}/libdivecomputer/built

pre-build:
	${MAKE_ENV} ${MAKE_PROGRAM} -j ${MAKE_JOBS} -C ${WRKSRC}/gmaps/build
	${MAKE_ENV} INSTALL_ROOT=${WRKINST} ${MAKE_PROGRAM} -C ${WRKSRC}/gmaps/build install
	${MAKE_ENV} ${MAKE_PROGRAM} -j ${MAKE_JOBS} -C ${WRKSRC}/libdivecomputer/build
	${MAKE_ENV} ${MAKE_PROGRAM} -C ${WRKSRC}/libdivecomputer/build install

.include <bsd.port.mk>
