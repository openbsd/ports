# $OpenBSD: Makefile,v 1.6 2022/01/14 11:12:32 tb Exp $

QT6NAME =		QtBase

COMMENT-main =		C++ general-purpose toolkit
COMMENT-global =	global Qt6 documentation internals
COMMENT-mysql =		MySQL plugin for Qt6
COMMENT-psql =		PostgresSQL plugin for Qt6

REVISION =		3

PKGNAME-mysql =		qt6-mysql-${VERSION}
PKGNAME-global =	qt6-global-${VERSION}
PKGNAME-psql =		qt6-postgresql-${VERSION}

PKG_ARCH-global =	*

SHARED_LIBS +=  Qt6Concurrent                0.0 # 6.0
SHARED_LIBS +=  Qt6Core                      0.0 # 6.0
SHARED_LIBS +=  Qt6DBus                      0.0 # 6.0
SHARED_LIBS +=  Qt6Gui                       0.0 # 6.0
SHARED_LIBS +=  Qt6Network                   0.0 # 6.0
SHARED_LIBS +=  Qt6OpenGL                    0.0 # 6.0
SHARED_LIBS +=  Qt6PrintSupport              0.0 # 6.0
SHARED_LIBS +=  Qt6Sql                       0.0 # 6.0
SHARED_LIBS +=  Qt6Test                      0.0 # 6.0
SHARED_LIBS +=  Qt6Widgets                   0.0 # 6.0
SHARED_LIBS +=  Qt6Xml                       0.0 # 6.0
SHARED_LIBS +=  Qt6EglFSDeviceIntegration    0.0 # 6.0
SHARED_LIBS +=  Qt6EglFsKmsSupport           0.0 # 6.0
SHARED_LIBS +=  Qt6OpenGLExtensions          0.0 # 6.0
SHARED_LIBS +=  Qt6XcbQpa                    0.0 # 6.0
SHARED_LIBS +=  Qt6EglFsKmsGbmSupport        0.0 # 6.0
SHARED_LIBS +=  Qt6OpenGLWidgets             0.0 # 6.0

WANTLIB-global =

WANTLIB-main += ${COMPILER_LIBCXX} EGL GL X11 atk-1.0 brotlidec c cairo
WANTLIB-main += cairo-gobject crypto cups dbus-1 double-conversion
WANTLIB-main += drm execinfo fontconfig freetype gbm gdk-3 gdk_pixbuf-2.0
WANTLIB-main += gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB-main += icudata icui18n icuuc iodbc jpeg m pango-1.0 pangocairo-1.0
WANTLIB-main += pcre2-16 png ssl z zstd

# those come from gthread-2.0, not used by Qt itself
WANTLIB-main +=		intl

WANTLIB-mysql += ${COMPILER_LIBCXX} Qt6Core Qt6Sql c execinfo m mariadb

WANTLIB-psql += ${COMPILER_LIBCXX} Qt6Core Qt6Sql c execinfo m pq

MULTI_PACKAGES =	-main -global -mysql -psql

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			archivers/brotli \
			archivers/zstd \
			databases/iodbc \
			devel/atk \
			devel/harfbuzz \
			devel/pango \
			devel/pcre2 \
			graphics/cairo \
			graphics/gdk-pixbuf2 \
			math/double-conversion \
			print/cups,-libs \
			textproc/icu4c \
			x11/dbus \
			x11/gtk+3

LIB_DEPENDS-global =

LIB_DEPENDS-main +=	devel/gettext,-runtime


LIB_DEPENDS-mysql =	${BASE_PKGPATH},-main>=${VERSION:R},<${NEXT_VERSION} \
			${MODGCC4_CPPLIBDEP} \
			databases/mariadb

LIB_DEPENDS-psql =	${BASE_PKGPATH},-main>=${VERSION:R},<${NEXT_VERSION} \
			${MODGCC4_CPPLIBDEP} \
			databases/postgresql

BUILD_DEPENDS =		geo/geoclue \
			graphics/vulkan-loader \
			x11/gnome/at-spi2-core

RUN_DEPENDS-main =	${RUN_DEPENDS} \
			geo/geoclue \
			x11/gnome/at-spi2-core

RUN_DEPENDS-global =
RUN_DEPENDS-mysql =
RUN_DEPENDS-psql =

CONFIGURE_ARGS =	-DQT_DEFAULT_PLATFORM_DEFINITION_DIR_ABSOLUTE=${WRKDIST}/mkspecs/openbsd-g++/

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX=${PREFIX} \
			-DINSTALL_BINDIR=lib/qt6/bin \
			-DINSTALL_DOCDIR=share/doc/qt6 \
			-DINSTALL_ARCHDATADIR=lib/qt6 \
			-DINSTALL_DATADIR=share/qt6 \
			-DINSTALL_INCLUDEDIR=include/X11/qt6 \
			-DINSTALL_MKSPECSDIR=lib/qt6/mkspecs \
			-DINSTALL_EXAMPLESDIR=share/doc/qt6/examples \
			-DINSTALL_PLUGINSDIR=lib/qt6/plugins \
			-DQT_FEATURE_journald=OFF \
			-DQT_FEATURE_openssl_linked=ON \
			-DQT_FEATURE_dtls=OFF

LDFLAGS +=		-lexecinfo

MODQT6_DEPS =		no

post-extract:
	mkdir -p ${WRKDIST}/mkspecs/openbsd-clang
	cp ${FILESDIR}/clang-qmake.conf \
		${WRKDIST}/mkspecs/openbsd-clang/qmake.conf
	cp ${WRKDIST}/mkspecs/openbsd-g++/qplatformdefs.h \
		${WRKDIST}/mkspecs/openbsd-clang/

.include <bsd.port.mk>

.if ${USE_CCACHE:L} != "yes"
CONFIGURE_ARGS +=	-DQT_USE_CCACHE=ON
.endif
