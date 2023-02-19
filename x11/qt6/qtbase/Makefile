QT6NAME =		QtBase

COMMENT-main =		C++ general-purpose toolkit
COMMENT-global =	global Qt6 documentation internals
COMMENT-mysql =		MySQL plugin for Qt6
COMMENT-psql =		PostgresSQL plugin for Qt6

PKGSPEC-main =		qt6-qtbase-${QT6_PKGSPEC}

PKGNAME-mysql =		qt6-mysql-${VERSION}
PKGNAME-global =	qt6-global-${VERSION}
PKGNAME-psql =		qt6-postgresql-${VERSION}

PKG_ARCH-global =	*

DPB_PROPERTIES =	parallel

SHARED_LIBS +=  Qt6Concurrent                0.1 # 6.4
SHARED_LIBS +=  Qt6Core                      1.0 # 6.4
SHARED_LIBS +=  Qt6DBus                      1.0 # 6.4
SHARED_LIBS +=  Qt6Gui                       2.0 # 6.4
SHARED_LIBS +=  Qt6Network                   0.3 # 6.4
SHARED_LIBS +=  Qt6OpenGL                    1.0 # 6.4
SHARED_LIBS +=  Qt6PrintSupport              0.2 # 6.4
SHARED_LIBS +=  Qt6Sql                       0.1 # 6.4
SHARED_LIBS +=  Qt6Test                      2.0 # 6.4
SHARED_LIBS +=  Qt6Widgets                   1.0 # 6.4
SHARED_LIBS +=  Qt6Xml                       0.1 # 6.4
SHARED_LIBS +=  Qt6EglFSDeviceIntegration    0.2 # 6.4
SHARED_LIBS +=  Qt6EglFsKmsSupport           0.1 # 6.4
SHARED_LIBS +=  Qt6OpenGLExtensions          0.1 # 6.4
SHARED_LIBS +=  Qt6XcbQpa                    1.1 # 6.4
SHARED_LIBS +=  Qt6EglFsKmsGbmSupport        0.2 # 6.4
SHARED_LIBS +=  Qt6OpenGLWidgets             0.1 # 6.4

WANTLIB-global =

WANTLIB-main += ${COMPILER_LIBCXX} EGL GL ICE SM X11 X11-xcb atk-1.0
WANTLIB-main += b2 brotlidec c cairo cairo-gobject crypto cups dbus-1
WANTLIB-main += double-conversion drm execinfo fontconfig freetype
WANTLIB-main += gbm gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB-main += gthread-2.0 gtk-3 harfbuzz icudata icui18n icuuc iodbc
WANTLIB-main += jpeg m pango-1.0 pangocairo-1.0 pcre2-16 png ssl xcb
WANTLIB-main += xcb-glx xcb-icccm xcb-image xcb-keysyms xcb-randr xcb-render
WANTLIB-main += xcb-render-util xcb-shape xcb-shm xcb-sync xcb-xfixes
WANTLIB-main += xcb-xkb xkbcommon xkbcommon-x11 z zstd

# those come from gthread-2.0, not used by Qt itself
WANTLIB-main +=		intl

WANTLIB-mysql += ${COMPILER_LIBCXX} Qt6Core Qt6Sql c execinfo m mariadb

WANTLIB-psql += ${COMPILER_LIBCXX} Qt6Core Qt6Sql c execinfo m pq

MULTI_PACKAGES =	-main -global -mysql -psql

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			archivers/brotli \
			archivers/zstd \
			databases/iodbc \
			devel/harfbuzz \
			x11/xkbcommon \
			devel/pango \
			devel/pcre2 \
			graphics/cairo \
			graphics/gdk-pixbuf2 \
			math/double-conversion \
			print/cups,-libs \
			security/libb2 \
			textproc/icu4c \
			x11/dbus \
			x11/gnome/at-spi2-core \
			x11/gtk+3

LIB_DEPENDS-global =

LIB_DEPENDS-main +=	devel/gettext,-runtime

LIB_DEPENDS-mysql =	${BASE_PKGPATH},-main \
			${MODGCC4_CPPLIBDEP} \
			databases/mariadb

LIB_DEPENDS-psql =	${BASE_PKGPATH},-main \
			${MODGCC4_CPPLIBDEP} \
			databases/postgresql

BUILD_DEPENDS =		graphics/vulkan-loader \
			x11/gnome/at-spi2-core

RUN_DEPENDS-main =	${RUN_DEPENDS} \
			x11/gnome/at-spi2-core

RUN_DEPENDS-global =
RUN_DEPENDS-mysql =
RUN_DEPENDS-psql =

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
CONFIGURE_ARGS +=	-DQT_QMAKE_TARGET_MKSPEC=openbsd-clang
.else
CONFIGURE_ARGS +=	-DQT_QMAKE_TARGET_MKSPEC=openbsd-g++
.endif

# cmake/configure-cmake-mapping.md
CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX=${PREFIX} \
			-DINSTALL_BINDIR=lib/qt6/bin \
			-DINSTALL_DOCDIR=share/doc/qt6 \
			-DINSTALL_ARCHDATADIR=lib/qt6 \
			-DINSTALL_DATADIR=share/qt6 \
			-DINSTALL_INCLUDEDIR=include/X11/qt6 \
			-DINSTALL_MKSPECSDIR=lib/qt6/mkspecs \
			-DINSTALL_EXAMPLESDIR=share/doc/qt6/examples \
			-DINSTALL_PLUGINSDIR=lib/qt6/plugins \
			-DBUILD_WITH_PCH=OFF \
			-DQT_FEATURE_journald=OFF \
			-DQT_FEATURE_libudev=OFF \
			-DQT_FEATURE_openssl_linked=ON \
			-DQT_FEATURE_dtls=OFF

MODCMAKE_LDFLAGS +=	-lexecinfo

MODQT6_DEPS =		No

post-extract:
	mkdir -p ${WRKDIST}/mkspecs/openbsd-clang
	cp ${FILESDIR}/clang-qmake.conf \
		${WRKDIST}/mkspecs/openbsd-clang/qmake.conf
	cp ${WRKDIST}/mkspecs/openbsd-g++/qplatformdefs.h \
		${WRKDIST}/mkspecs/openbsd-clang/

.include <bsd.port.mk>

.if ${USE_CCACHE:L} == "yes"
CONFIGURE_ARGS +=	-DQT_USE_CCACHE=ON
.endif
