# $OpenBSD: Makefile,v 1.37 2020/03/15 19:57:07 rsadowski Exp $

DISTNAME =		qtbase-everywhere-src-${DIST_VERSION}
QT5NAME =		Qt5 core

COMMENT-main =		C++ general-purpose toolkit
COMMENT-global =	global Qt5 documentation internals
COMMENT-mysql =		MySQL plugin for Qt5
COMMENT-psql =		PostgresSQL plugin for Qt5
COMMENT-sqlite2 =	SQLite 2.x plugin for Qt5
COMMENT-tds =		TDS plugin for Qt5

PKGNAME-mysql =		qt5-mysql-${VERSION}
PKGNAME-global =	qt5-global-${VERSION}
PKGNAME-psql =		qt5-postgresql-${VERSION}
PKGNAME-sqlite2 =	qt5-sqlite2-${VERSION}
PKGNAME-tds =		qt5-tds-${VERSION}

REVISON-main =		0

PKG_ARCH-global =	*
PKG_ARCH-examples =	*

DPB_PROPERTIES =	parallel

SHARED_LIBS +=  Qt5Concurrent                3.0 # 5.9
SHARED_LIBS +=  Qt5Core                      3.0 # 5.9
SHARED_LIBS +=  Qt5DBus                      3.0 # 5.9
SHARED_LIBS +=  Qt5Gui                       3.0 # 5.9
SHARED_LIBS +=  Qt5Network                   3.0 # 5.9
SHARED_LIBS +=  Qt5OpenGL                    3.0 # 5.9
SHARED_LIBS +=  Qt5PrintSupport              3.0 # 5.9
SHARED_LIBS +=  Qt5Sql                       3.0 # 5.9
SHARED_LIBS +=  Qt5Test                      3.0 # 5.9
SHARED_LIBS +=  Qt5Widgets                   3.0 # 5.9
SHARED_LIBS +=  Qt5Xml                       3.0 # 5.9
SHARED_LIBS +=  Qt5EglFSDeviceIntegration    1.0 # 5.9
SHARED_LIBS +=  Qt5EglFsKmsSupport           1.0 # 5.9
SHARED_LIBS +=  Qt5OpenGLExtensions          0.0 # 5.13
SHARED_LIBS +=  Qt5XcbQpa                    0.0 # 5.13

WANTLIB-main += ${COMPILER_LIBCXX} EGL GL ICE SM X11 X11-xcb Xext atk-1.0
WANTLIB-main += c cairo cairo-gobject crypto cups dbus-1 double-conversion
WANTLIB-main += drm execinfo fontconfig freetype gbm gdk-3 gdk_pixbuf-2.0
WANTLIB-main += gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB-main += icudata icui18n icuio icuuc iodbc iodbcinst jpeg m
WANTLIB-main += pango-1.0 pangocairo-1.0 pcre2-16 png sqlite3 ssl xcb
WANTLIB-main += xcb-glx xcb-icccm xcb-image xcb-keysyms xcb-randr xcb-render
WANTLIB-main += xcb-render-util xcb-shape xcb-shm xcb-sync xcb-xfixes
WANTLIB-main += xcb-xinerama xcb-xinput xcb-xkb xkbcommon xkbcommon-x11
WANTLIB-main += z zstd

WANTLIB-global =

WANTLIB-mysql =		${COMPILER_LIBCXX} Qt5Core Qt5Sql
WANTLIB-mysql +=	m pthread mariadb

WANTLIB-psql =		${COMPILER_LIBCXX} Qt5Core Qt5Sql
WANTLIB-psql +=		m pthread pq

WANTLIB-sqlite2 =	${COMPILER_LIBCXX} Qt5Core Qt5Sql
WANTLIB-sqlite2 +=	m pthread sqlite

WANTLIB-tds =		${COMPILER_LIBCXX} Qt5Core Qt5Sql
WANTLIB-tds +=		m pthread sybdb

# there is no -sqlite3 because it's heavily used by Qt itself (.qch files)
MULTI_PACKAGES =	-main -examples -global -mysql -psql -sqlite2 -tds

# qmake module is used only for running tests and setting vars
MODQT_DEPS =		No
MODQMAKE_PROJECTS =	tests/tests.pro
USE_GMAKE =		Yes

# no leveldb dependency, requires -lmemenv; QtWebKit uses internal version
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			archivers/zstd \
			databases/iodbc \
			databases/sqlite3 \
			devel/atk \
			devel/harfbuzz \
			devel/libexecinfo \
			devel/pango \
			devel/pcre2 \
			graphics/cairo \
			graphics/gdk-pixbuf2 \
			math/double-conversion \
			print/cups,-libs \
			textproc/icu4c \
			x11/dbus \
			x11/gtk+3 \
			x11/xkbcommon

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

LIB_DEPENDS-sqlite2 =	${BASE_PKGPATH},-main>=${VERSION:R},<${QT5_NEXT_VERSION} \
			${MODGCC4_CPPLIBDEP} \
			databases/sqlite

LIB_DEPENDS-tds =	${BASE_PKGPATH},-main>=${VERSION:R},<${QT5_NEXT_VERSION} \
			${MODGCC4_CPPLIBDEP} \
			databases/freetds

# Nothing in qtbase links to pulseaudio, but configure checks
# are recorded.
# The atspi is checked at configure time and used via D-Bus.
BUILD_DEPENDS =		audio/pulseaudio \
			geo/geoclue \
			x11/gnome/at-spi2-core

RUN_DEPENDS-main =	${RUN_DEPENDS} \
			geo/geoclue \
			x11/gnome/at-spi2-core
RUN_DEPENDS-global =
RUN_DEPENDS-examples =
RUN_DEPENDS-mysql =
RUN_DEPENDS-psql =
RUN_DEPENDS-sqlite2 =
RUN_DEPENDS-tds =

CONFIGURE_STYLE =	simple

FLAVORS =		debug
FLAVOR ?=

# readability macros
QT_BASEDIR =	${PREFIX}/lib/qt5
QT_INCDIR =	${PREFIX}/include/X11/qt5
QT_EXAMPLES =	${QT_BASEDIR}/examples
QT_DOC =	${PREFIX}/share/doc/qt5
QT_PLUGINSDIR =	${QT_BASEDIR}/plugins
QT_BINDIR =	${QT_BASEDIR}/bin
QT_PKGCFGDIR =	${QT_BASEDIR}/pkgconfig
QT_CMAKEDIR =	${QT_BASEDIR}/cmake
QT_QMLDIR =	${QT_BASEDIR}/qml

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
			-no-compile-examples \
			-opensource \
			-rpath \
			-shared \
			-verbose

# We have to wait until arm64 is vulkan ready.
#BUILD_DEPENDS =		graphics/vulkan-loader
CONFIGURE_ARGS +=	-no-vulkan

# disabled
CONFIGURE_ARGS +=	-no-ccache \
			-no-compile-examples \
			-no-journald \
			-no-mimetype-database \
			-no-mtdev \
			-no-optimized-qmake \
			-no-pch \
			-no-use-gold-linker

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
			-system-xcb \
			-system-zlib

# database support
CONFIGURE_ARGS +=	-sql-mysql
CONFIGURE_ARGS +=	-sql-psql
CONFIGURE_ARGS +=	-sql-sqlite2
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
TEST_DEPENDS =		audio/sox

post-extract:
	mkdir -p ${WRKDIST}/mkspecs/openbsd-clang
	cp ${FILESDIR}/clang-qmake.conf \
		${WRKDIST}/mkspecs/openbsd-clang/qmake.conf
	cp ${WRKDIST}/mkspecs/openbsd-g++/qplatformdefs.h \
		${WRKDIST}/mkspecs/openbsd-clang/

pre-configure:
	@gccbasedir=`ecpp -print-search-dirs | awk '/^install:/{print $$2}'`; \
	perl ${PORTSDIR}/infrastructure/bin/pkg_subst \
		-D OPENBSD_INCDIR_PREPEND="$${gccbasedir}include" \
		${WRKSRC}/mkspecs/openbsd-g++/qmake.conf \
		${WRKSRC}/mkspecs/openbsd-clang/qmake.conf

# WARNING!
# Many tests won't run if window manager has either
# "focus follows pointer", or "click to activate" policy.
do-test:
	${MODQMAKE_configure}
	${MODQMAKE_build}
	${MODQMAKE_test}

post-install:
	# often-used includes directory
	! test -d ${PREFIX}/lib/qt5 || \
		cd ${PREFIX}/lib/qt5 && ln -sf ../../include/X11/qt5 include

.include <bsd.port.mk>
