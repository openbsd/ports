# $OpenBSD: Makefile,v 1.7 2019/08/05 20:48:17 sthen Exp $

# Qt5Webkit
USE_WXNEEDED =	Yes

COMMENT =	divelog program for recreational, tech, and free-divers

VER =		4.8.5
REVISION =	0
PKGNAME =	subsurface-${VER}
DISTNAME =	Subsurface-${VER}

CATEGORIES =	misc
HOMEPAGE =	https://subsurface-divelog.org
MAINTAINER =	Kristaps Dzonsons <kristaps@bsd.lv>

# GPLv2, and LGPLv2.1 for libdivecomputer
# The content of mobile-widgets/qml/icons/ is Apache 2, but not installed.
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates Qt5Concurrent
WANTLIB += Qt5Core Qt5Gui Qt5Location Qt5Network Qt5Positioning
WANTLIB += Qt5PrintSupport Qt5Qml Qt5Quick Qt5QuickWidgets Qt5Svg
WANTLIB += Qt5WebKit Qt5WebKitWidgets Qt5Widgets c crypto curl
WANTLIB += git2 m sqlite3 ssh2 ssl usb-1.0 xml2 xslt zip

MASTER_SITES =	https://subsurface-divelog.org/downloads/
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
		net/curl \
		security/libssh2 \
		textproc/libxml \
		x11/grantlee-qt5 \
		x11/qt5/qtbase \
		x11/qt5/qtsvg \
		x11/qt5/qtwebkit

USE_GMAKE =	Yes

CONFIGURE_ARGS +=	-DNO_DOCS:Bool=ON \
			-DBTSUPPORT:Bool=OFF

# many "undefined reference to `dc_*" when tests are enabled
CONFIGURE_ARGS +=	-DMAKE_TESTS:Bool=OFF
NO_TEST =		Yes

post-extract:
	rmdir ${WRKSRC}/libdivecomputer
	mv ${WRKDIR}/libdivecomputer-subsurface-branch-${VER} \
		${WRKSRC}/libdivecomputer

do-gen:
	${AUTOCONF_ENV} autoreconf -f -i ${WRKSRC}/libdivecomputer

pre-configure:
	mkdir -p ${WRKSRC}/libdivecomputer/build
	cd ${WRKSRC}/libdivecomputer/build && ${XXCONFIGURE_ENV} ../configure \
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
