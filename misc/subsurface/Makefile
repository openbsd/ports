COMMENT =	divelog program for recreational, tech, and free-divers

VER =		4.8.5
REVISION =	7
PKGNAME =	subsurface-${VER}
DISTNAME =	Subsurface-${VER}

CATEGORIES =	misc
HOMEPAGE =	https://subsurface-divelog.org

# GPLv2, and LGPLv2.1 for libdivecomputer
# The content of mobile-widgets/qml/icons/ is Apache 2, but not installed.
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5Gui Qt5Location
WANTLIB += Qt5Network Qt5Positioning Qt5PositioningQuick Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5QuickWidgets Qt5Svg Qt5Widgets
WANTLIB += c crypto curl git2 m sqlite3 ssh2 ssl usb-1.0 xml2
WANTLIB += xslt zip

SITES =		https://subsurface-divelog.org/downloads/
EXTRACT_SUFX =	.tgz
DISTFILES =	Subsurface-${VER}${EXTRACT_SUFX} \
		libdivecomputer-subsurface-branch-${VER}${EXTRACT_SUFX}

# cmake for subsurface, autoconf for libdivecomputer-subsurface
MODULES +=	gnu \
		devel/cmake \
		x11/qt5

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

LIB_DEPENDS =	archivers/libzip \
		databases/sqlite3 \
		devel/libgit2/libgit2 \
		devel/libusb1 \
		net/curl \
		security/libssh2 \
		textproc/libxml \
		textproc/libxslt \
		x11/qt5/qtbase \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qtsvg

USE_GMAKE =	Yes

# Disable the built-in facebook, user manual and printing support which require
# qt5-webkit/qt5-webengine
CONFIGURE_ARGS +=	-DNO_DOCS=ON \
			-DUSE_WEBENGINE=OFF \
			-DFBSUPPORT=OFF \
			-DBTSUPPORT=OFF \
			-DNO_PRINTING=ON \
			-DNO_USERMANUAL=ON

# many "undefined reference to `dc_*" when tests are enabled
CONFIGURE_ARGS +=	-DMAKE_TESTS=OFF
NO_TEST =		Yes

post-extract:
	rmdir ${WRKSRC}/libdivecomputer
	mv ${WRKDIR}/libdivecomputer-subsurface-branch-${VER} \
		${WRKSRC}/libdivecomputer

do-gen:
	${AUTOCONF_ENV} autoreconf -f -i ${WRKSRC}/libdivecomputer

pre-configure:
	mkdir -p ${WRKSRC}/libdivecomputer/build
	cd ${WRKSRC}/libdivecomputer/build && \
		${XXCONFIGURE_ENV} ac_cv_path_SED=/usr/bin/sed \
		MKDIR_P="/bin/mkdir -p" ../configure \
		--without-libusb \
		--without-hidapi \
		--without-bluez \
		--disable-shared \
		--disable-examples \
		--disable-doc \
		--disable-silent-rules \
		--prefix=${WRKSRC}/libdivecomputer/built

pre-build:
	cd ${WRKSRC}/libdivecomputer/build && \
		${MAKE_PROGRAM} && \
		${MAKE_PROGRAM} install

post-build:
	mkdir -p ${WRKBUILD}/Documentation
	for f in user-manual user-manual_es user-manual_fr \
		user-manual_ru user-manual_nl; do \
		cp ${WRKSRC}/Documentation/$$f.html.git \
		${WRKBUILD}/Documentation/$$f.html; done

.include <bsd.port.mk>
