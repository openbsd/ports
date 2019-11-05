# $OpenBSD: Makefile,v 1.34 2019/11/05 10:18:53 rsadowski Exp $

DISTNAME =		qtbase-opensource-src-${DIST_VERSION}
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

PKG_ARCH-global =	*
PKG_ARCH-examples =	*

DPB_PROPERTIES =	parallel

SHARED_LIBS +=	Qt5Concurrent			2.2
SHARED_LIBS +=	Qt5Core				2.2
SHARED_LIBS +=	Qt5DBus				2.2
SHARED_LIBS +=	Qt5Gui				2.2
SHARED_LIBS +=	Qt5Network			2.2
SHARED_LIBS +=	Qt5OpenGL			2.2
SHARED_LIBS +=	Qt5PrintSupport			2.2
SHARED_LIBS +=	Qt5Sql				2.2
SHARED_LIBS +=	Qt5Test				2.2
SHARED_LIBS +=	Qt5Widgets			2.2
SHARED_LIBS +=	Qt5Xml				2.2
SHARED_LIBS +=	Qt5EglFSDeviceIntegration	0.1
SHARED_LIBS +=	Qt5XcbQpa			1.2
SHARED_LIBS +=	Qt5EglFsKmsSupport		0.1

WANTLIB-main += ${COMPILER_LIBCXX} EGL GL ICE SM X11 X11-xcb Xext Xi
WANTLIB-main += atk-1.0 c cairo cairo-gobject cups dbus-1 double-conversion
WANTLIB-main += drm execinfo fontconfig freetype gbm gdk-3 gdk_pixbuf-2.0
WANTLIB-main += gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB-main += icudata icui18n icuuc iodbc jpeg m pango-1.0 pangocairo-1.0
WANTLIB-main += pcre2-16 png sqlite3 xcb xcb-glx xcb-icccm xcb-image
WANTLIB-main += xcb-keysyms xcb-randr xcb-render xcb-render-util xcb-shape
WANTLIB-main += xcb-shm xcb-sync xcb-xfixes xcb-xinerama xcb-xkb xkbcommon
WANTLIB-main += xkbcommon-x11 z

# SSL libs are dlopen()d
WANTLIB-main += ssl crypto

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

# no leveldb dependency, requires -lmemenv; QtWebKit uses internal version
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			math/double-conversion \
			databases/iodbc \
			databases/sqlite3 \
			devel/atk \
			devel/harfbuzz \
			devel/libexecinfo \
			devel/pango \
			devel/pcre2 \
			graphics/cairo \
			graphics/gdk-pixbuf2 \
			print/cups,-libs \
			textproc/icu4c \
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
			x11/dbus \
			x11/gnome/at-spi2-core

RUN_DEPENDS-main =	${RUN_DEPENDS} \
			geo/geoclue \
			x11/dbus \
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

# generic args
CONFIGURE_ARGS =	-confirm-license \
			-opensource \
			-rpath \
			-shared \
			-verbose \
			-no-pch \
			-no-compile-examples

# Don't run tests inside main build.
# XXX It looks like affecting other Qt modules as well.
CONFIGURE_ARGS +=	-nomake tests

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	-debug
.else
CONFIGURE_ARGS +=	-release
.endif

# paths
CONFIGURE_ARGS +=	-sysconfdir ${SYSCONFDIR} \
			-prefix ${QT_BASEDIR} \
			-plugindir ${QT_PLUGINSDIR} \
			-libdir ${QT_BASEDIR} \
			-headerdir ${QT_INCDIR} \
			-examplesdir ${QT_EXAMPLES} \
			-docdir ${QT_DOC} \
			-datadir ${QT_BASEDIR} \
			-bindir ${QT_BINDIR} \
			-R${X11BASE}/lib \
			-L${X11BASE}/lib

# switch to c++14 after getting GCC 5.0 enabled by default via COMPILER?
CONFIGURE_ARGS +=	-c++std c++11

# other options
CONFIGURE_ARGS +=	-no-journald \
			-no-mtdev \
			-opengl desktop \
			-system-harfbuzz \
			-system-proxies \
			-system-sqlite \
			-system-xcb

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

do-test:
	#
	# WARNING!
	# Many tests won't run if window manager has either
	# "focus follows pointer", or "click to activate" policy.
	#
	${MODQMAKE_configure}
	${MODQMAKE_build}
	${MODQMAKE_test}

post-install:
	# often-used includes directory
	! test -d ${PREFIX}/lib/qt5 || \
	    cd ${PREFIX}/lib/qt5 && ln -sf ../../include/X11/qt5 include

.include <bsd.port.mk>
