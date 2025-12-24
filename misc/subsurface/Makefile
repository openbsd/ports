COMMENT =	divelog program for recreational, tech, and free-divers

PKGNAME =	subsurface-6.0.5459
DIST_TUPLE +=	github subsurface subsurface e0fbda77ef203a5a2539465e9fa44df56e2f5a9e .
DIST_TUPLE +=	github subsurface libdc 64ecef5b3ee7342159349391c8b55281bebad2c2 libdivecomputer
DIST_TUPLE +=	github subsurface googlemaps 7ce7124b385b2ebac0f72c38b094f436d4fe5c58 gmaps
REVISION =	2

CATEGORIES =	misc
HOMEPAGE =	https://subsurface-divelog.org

# GPLv2, LGPLv2.1 for libdivecomputer, MIT for googlemaps
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5Gui
WANTLIB += Qt5Location Qt5Network Qt5Positioning Qt5PositioningQuick
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickWidgets Qt5Svg
WANTLIB += Qt5Widgets c crypto git2 lcms2 m mtp raw_r sqlite3
WANTLIB += ssh2 ssl usb-1.0 xml2 xslt zip

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
		devel/libmtp \
		graphics/lcms2 \
		graphics/libraw \
		security/libssh2 \
		textproc/libxml \
		textproc/libxslt \
		x11/qt5/qtbase \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qtsvg \
		x11/qt5/qtlocation

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

# Disable the built-in facebook, user manual and printing support which require
# qt5-webkit/qt5-webengine
CONFIGURE_ARGS +=	-DBTSUPPORT=OFF \
			-DNO_PRINTING=ON \
			-DNO_USERMANUAL=ON

CONFIGURE_ARGS +=	-DLIBGIT2_FROM_PKGCONFIG=ON
CONFIGURE_ARGS +=	-DWRKINST=${WRKINST}

# It's possible to run the tests, but they fail.
# First, add the subsurface/large-anonymous-sample-data repo to DISTFILES.
# Add archive/xz to the TEST_DEPENDS.
# To TEST_ENV add QT_PLUGIN_PATH and QT_QPA_PLATFORM_PLUGIN_PATH.
# Watch tests fail.
NO_TEST =	Yes

# main part is a cmake build, so we can't really use CONFIGURE_STYLE=autoreconf
do-gen:
	${AUTOCONF_ENV} autoreconf -f -i ${WRKSRC}/libdivecomputer

# dirty fix to populate autoconf cache; if this is not done we miss
# protection done by gnu.port.mk for configure detecting gmkdir, etc
# (otherwise we could split libdivecomputer off to a separate port)
CONFIGURE_SCRIPT= /usr/bin/true
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/libdivecomputer/build

pre-configure:
	cd ${WRKSRC}; mkdir -p libdivecomputer/build gmaps/build
	${MODGNU_configure}
	cd ${WRKSRC}/gmaps/build && ${MODQT_QMAKE} -r ..
	cd ${WRKSRC}/libdivecomputer/build && \
		${CONFIGURE_ENV} ../configure \
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
