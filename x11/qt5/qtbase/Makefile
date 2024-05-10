QT5NAME =		QtBase

KDE_COMMIT =		2b71429330544809ff5f95111a020e7ceec643fd
KDE_VERSION =		145

COMMENT-main =		C++ general-purpose toolkit
COMMENT-global =	global Qt5 documentation internals
COMMENT-mysql =		MySQL plugin for Qt5
COMMENT-psql =		PostgresSQL plugin for Qt5
COMMENT-tds =		TDS plugin for Qt5

PKGNAME-mysql =		qt5-mysql-${QT5_KDE_VERSION}
PKGNAME-global =	qt5-global-${QT5_KDE_VERSION}
PKGNAME-psql =		qt5-postgresql-${QT5_KDE_VERSION}
PKGNAME-tds =		qt5-tds-${QT5_KDE_VERSION}

PKG_ARCH-global =	*
PKG_ARCH-examples =	*

DPB_PROPERTIES =	parallel

SHARED_LIBS +=  Qt5Concurrent                4.1 # 5.15
SHARED_LIBS +=  Qt5Core                      6.0 # 5.15
SHARED_LIBS +=  Qt5DBus                      3.0 # 5.15
SHARED_LIBS +=  Qt5Gui                       4.2 # 5.15
SHARED_LIBS +=  Qt5Network                   4.0 # 5.15
SHARED_LIBS +=  Qt5OpenGL                    3.0 # 5.15
SHARED_LIBS +=  Qt5PrintSupport              3.0 # 5.15
SHARED_LIBS +=  Qt5Sql                       3.0 # 5.15
SHARED_LIBS +=  Qt5Test                      3.1 # 5.15
SHARED_LIBS +=  Qt5Widgets                   4.1 # 5.15
SHARED_LIBS +=  Qt5Xml                       3.0 # 5.15
SHARED_LIBS +=  Qt5EglFSDeviceIntegration    1.0 # 5.15
SHARED_LIBS +=  Qt5EglFsKmsSupport           1.0 # 5.15
SHARED_LIBS +=  Qt5OpenGLExtensions          0.0 # 5.15
SHARED_LIBS +=  Qt5XcbQpa                    1.0 # 5.15

WANTLIB-main += ${COMPILER_LIBCXX} EGL GL ICE SM X11 X11-xcb Xext atk-1.0
WANTLIB-main += c cairo cairo-gobject crypto cups dbus-1 double-conversion
WANTLIB-main += drm execinfo fontconfig freetype gbm gdk-3 gdk_pixbuf-2.0
WANTLIB-main += gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB-main += icudata icui18n icuuc jpeg m pango-1.0 pangocairo-1.0
WANTLIB-main += pcre2-16 png sqlite3 ssl xcb xcb-glx xcb-icccm xcb-image
WANTLIB-main += xcb-keysyms xcb-randr xcb-render xcb-render-util xcb-shape
WANTLIB-main += xcb-shm xcb-sync xcb-xfixes xcb-xinerama xcb-xinput
WANTLIB-main += xcb-xkb xkbcommon xkbcommon-x11 z zstd

WANTLIB-global =

WANTLIB-mysql =		${COMPILER_LIBCXX} Qt5Core Qt5Sql
WANTLIB-mysql +=	m pthread mariadb

WANTLIB-psql =		${COMPILER_LIBCXX} Qt5Core Qt5Sql
WANTLIB-psql +=		m pthread pq

WANTLIB-tds =		${COMPILER_LIBCXX} Qt5Core Qt5Sql
WANTLIB-tds +=		m pthread sybdb

# there is no -sqlite3 because it's heavily used by Qt itself (.qch files)
MULTI_PACKAGES =	-main -examples -global -mysql -psql -tds

# qmake module is used only for running tests and setting vars
MODQT_DEPS =		No
MODQMAKE_PROJECTS =	src/tools/bootstrap src/corelib src/tools/qlalr
USE_GMAKE =		Yes

# no leveldb dependency, requires -lmemenv; QtWebKit uses internal version
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			archivers/zstd \
			databases/sqlite3 \
			x11/gnome/at-spi2-core \
			devel/harfbuzz \
			devel/pango \
			devel/pcre2 \
			graphics/cairo \
			graphics/gdk-pixbuf2 \
			math/double-conversion \
			print/cups,-libs \
			textproc/icu4c \
			x11/dbus \
			x11/gtk+3 \
			x11/xkbcommon>=1.0.1

# those come from gthread-2.0, not used by Qt itself
WANTLIB-main +=		intl
LIB_DEPENDS-main +=	devel/gettext,-runtime

LIB_DEPENDS-global =

LIB_DEPENDS-mysql =	${BASE_PKGPATH},-main>=${VERSION:R},<${QT5_NEXT_VERSION} \
			${MODGCC4_CPPLIBDEP} \
			databases/mariadb

LIB_DEPENDS-psql =	${BASE_PKGPATH},-main>=${VERSION:R},<${QT5_NEXT_VERSION} \
			${MODGCC4_CPPLIBDEP} \
			databases/postgresql

LIB_DEPENDS-tds =	${BASE_PKGPATH},-main>=${VERSION:R},<${QT5_NEXT_VERSION} \
			${MODGCC4_CPPLIBDEP} \
			databases/freetds

# The atspi is checked at configure time and used via D-Bus.
BUILD_DEPENDS =		x11/gnome/at-spi2-core

RUN_DEPENDS-main =	${RUN_DEPENDS} \
			x11/gnome/at-spi2-core
RUN_DEPENDS-global =
RUN_DEPENDS-examples =
RUN_DEPENDS-mysql =
RUN_DEPENDS-psql =
RUN_DEPENDS-tds =

CONFIGURE_STYLE =	simple

FLAVORS =		debug
FLAVOR ?=

CONFIGURE_ARGS +=	OPENSSL_LIBS="-L/usr/lib -lssl -lcrypto"

# configure
CONFIGURE_ARGS+= -I "${LOCALBASE}/include"
CONFIGURE_ARGS+= -L "${LOCALBASE}/lib"

# paths
CONFIGURE_ARGS +=	-bindir ${QT_BINDIR} \
			-datadir ${QT_BASEDIR} \
			-docdir ${QT_DOC} \
			-examplesdir ${QT_EXAMPLES} \
			-headerdir ${QT_INCDIR} \
			-libdir ${QT_BASEDIR} \
			-plugindir ${QT_PLUGINSDIR} \
			-prefix ${QT_BASEDIR} \
			-qmldir ${QT_QMLDIR} \
			-sysconfdir ${SYSCONFDIR}/xdg

# generic args
CONFIGURE_ARGS +=	-confirm-license \
			-opensource \
			-rpath \
			-shared \
			-verbose

# We have to wait until arm64 is vulkan ready.
#BUILD_DEPENDS =	graphics/vulkan-loader
CONFIGURE_ARGS +=	-no-vulkan

# Let's wait a little until we have more experience and test results
#LIB_DEPENDS +=		sysutils/libudev-openbsd
CONFIGURE_ARGS +=	-no-libudev

# wayland/libinput-openbsd
CONFIGURE_ARGS +=	-no-libinput

# disabled
CONFIGURE_ARGS +=	-no-compile-examples \
			-no-inotify \
			-no-journald \
			-no-mimetype-database \
			-no-mtdev \
			-no-optimized-qmake \
			-no-pch \
			-no-use-gold-linker

# https://www.qt.io/blog/qt-is-relocatable (QTBUG-87220)
CONFIGURE_ARGS +=	-no-feature-relocatable

# DTLS support depends on DTLSv1_listen() having a BIO_ADDR argument
# which LibreSSL does not currently support.
CONFIGURE_ARGS +=	-no-feature-dtls

# Don't run tests inside main build.
# XXX It looks like affecting other Qt modules as well.
CONFIGURE_ARGS +=	-nomake tests

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	-debug
.else
CONFIGURE_ARGS +=	-release
.endif

CONFIGURE_ARGS +=	-c++std c++17

## other options
CONFIGURE_ARGS +=	-accessibility \
			-cups \
			-dbus-linked \
			-glib \
			-icu \
			-opengl desktop \
			-openssl-linked \
			-pkg-config \
			-syslog \
			-system-harfbuzz \
			-system-doubleconversion \
			-system-libjpeg \
			-system-libpng \
			-system-pcre \
			-system-sqlite \
			-system-zlib

# database support
CONFIGURE_ARGS +=	-sql-mysql
CONFIGURE_ARGS +=	-sql-psql
CONFIGURE_ARGS +=	-sql-tds

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
# AVX:    Sandy Bridge/Haswell, but not all models. AMD Bulldozer/Jaguar.
# SSE4.2: Nehalem, Silvermont Atom, AMD Bulldozer/Jaguar.
# SSE4.1: Core 2 (Penryn), Nehalem, Silvermont Atom, AMD Bulldozer/Jaguar.
# SSSE3:  Core 2 Duo, Atom, AMD Bulldozer/Bobcat.
# SSE3:   missing on very early 64-bit AMD.
CONFIGURE_ARGS +=	-no-sse4.1 -no-sse4.2 -no-avx -no-avx2
CONFIGURE_ARGS +=	-no-ssse3 -no-sse3
.endif

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS +=	-no-sse2
.endif

MODULES =		devel/qmake
MODQMAKE_ENV +=		${TEST_ENV}
CONFIGURE_ENV +=	${MODQMAKE_ENV}
MAKE_ENV +=		${MODQMAKE_ENV}

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mclang}
CONFIGURE_ARGS +=	-platform openbsd-clang
.else
CONFIGURE_ARGS +=	-platform openbsd-g++
.endif

# See qtbase/tests/README for details
TEST_IS_INTERACTIVE =	X11

WRKDIST =	${WRKDIR}/qtbase-${KDE_COMMIT}

QT5_SYNCQT_BIN = 	${WRKDIST}/bin/syncqt.pl
pre-configure:
	${QT5_GEN_INCLUDES}

post-extract:
	mkdir -p ${WRKDIST}/mkspecs/openbsd-{clang,g++}
	cp ${FILESDIR}/clang-qmake.conf \
		${WRKDIST}/mkspecs/openbsd-clang/qmake.conf
	cp ${FILESDIR}/g++-qmake.conf \
		${WRKDIST}/mkspecs/openbsd-g++/qmake.conf
	cp ${WRKDIST}/mkspecs/freebsd-clang/qplatformdefs.h \
		${WRKDIST}/mkspecs/openbsd-clang/
	cp ${WRKDIST}/mkspecs/freebsd-g++/qplatformdefs.h \
		${WRKDIST}/mkspecs/openbsd-g++/

post-install:
	# often-used includes directory
	! test -d ${PREFIX}/lib/qt5 || \
		cd ${PREFIX}/lib/qt5 && ln -sf ../../include/X11/qt5 include

.include <bsd.port.mk>

.if ${USE_CCACHE:L} == "yes"
CONFIGURE_ARGS +=	-ccache
.else
CONFIGURE_ARGS +=	-no-ccache
.endif
