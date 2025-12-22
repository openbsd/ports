QT6NAME =		QtBase

COMMENT-main =		C++ general-purpose toolkit
COMMENT-global =	global Qt6 documentation internals
COMMENT-mysql =		MySQL plugin for Qt6
COMMENT-psql =		PostgresSQL plugin for Qt6
REVISION-main =		1

PKGSPEC-main =		qt6-qtbase-${QT6_PKGSPEC}

PKGNAME-mysql =		qt6-mysql-${VERSION}
PKGNAME-global =	qt6-global-${VERSION}
PKGNAME-psql =		qt6-postgresql-${VERSION}

PKG_ARCH-global =	*

DPB_PROPERTIES =	parallel

SHARED_LIBS +=  Qt6Concurrent                0.1 # 6.7
SHARED_LIBS +=  Qt6Core                      6.0 # 6.7
SHARED_LIBS +=  Qt6DBus                      3.1 # 6.7
SHARED_LIBS +=  Qt6Gui                       8.0 # 6.7
SHARED_LIBS +=  Qt6Network                   4.0 # 6.7
SHARED_LIBS +=  Qt6OpenGL                    3.0 # 6.7
SHARED_LIBS +=  Qt6PrintSupport              1.1 # 6.7
SHARED_LIBS +=  Qt6Sql                       3.1 # 6.7
SHARED_LIBS +=  Qt6Test                      5.0 # 6.7
SHARED_LIBS +=  Qt6Widgets                   4.0 # 6.7
SHARED_LIBS +=  Qt6Xml                       1.0 # 6.7
SHARED_LIBS +=  Qt6EglFSDeviceIntegration    2.0 # 6.7
SHARED_LIBS +=  Qt6EglFsKmsSupport           1.0 # 6.7
SHARED_LIBS +=  Qt6OpenGLExtensions          0.1 # 6.7
SHARED_LIBS +=  Qt6XcbQpa                    4.1 # 6.7
SHARED_LIBS +=  Qt6EglFsKmsGbmSupport        0.2 # 6.7
SHARED_LIBS +=  Qt6OpenGLWidgets             1.0 # 6.7
SHARED_LIBS +=  Qt6WaylandClient             8.0 # 6.7
SHARED_LIBS +=  Qt6WlShellIntegration        4.0 # 6.7

WANTLIB-main += ${COMPILER_LIBCXX} EGL GL ICE SM X11 X11-xcb atk-1.0
WANTLIB-main += b2 brotlidec c cairo cairo-gobject crypto cups dbus-1
WANTLIB-main += double-conversion drm execinfo fontconfig freetype
WANTLIB-main += gbm gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB-main += gthread-2.0 gtk-3 harfbuzz icudata icui18n icuuc intl
WANTLIB-main += iodbc jpeg m pango-1.0 pangocairo-1.0 pcre2-16 png
WANTLIB-main += proxy sqlite3 ssl wayland-client wayland-cursor wayland-egl
WANTLIB-main += xcb xcb-cursor xcb-glx xcb-icccm xcb-image xcb-keysyms
WANTLIB-main += xcb-randr xcb-render xcb-render-util xcb-shape xcb-shm
WANTLIB-main += xcb-sync xcb-util xcb-xfixes xcb-xinput xcb-xkb xkbcommon
WANTLIB-main += xkbcommon-x11 z zstd

WANTLIB-mysql += ${COMPILER_LIBCXX} Qt6Core Qt6Sql execinfo m mariadb

WANTLIB-psql += ${COMPILER_LIBCXX} Qt6Core Qt6Sql execinfo m pq

MULTI_PACKAGES =	-main -global -mysql -psql

MODULES =		lang/python
CONFIGURE_STYLE =	cmake
MODPY_RUNDEP =		No

LIB_DEPENDS-main =	archivers/brotli \
			archivers/zstd \
			databases/iodbc \
			databases/sqlite3 \
			devel/harfbuzz \
			devel/pango \
			devel/pcre2 \
			graphics/cairo \
			graphics/gdk-pixbuf2 \
			math/double-conversion \
			net/libproxy \
			print/cups,-libs \
			security/libb2 \
			textproc/icu4c \
			wayland/wayland \
			x11/dbus \
			x11/gnome/at-spi2-core \
			x11/gtk+3 \
			x11/xkbcommon

LIB_DEPENDS-global =

LIB_DEPENDS-main +=	devel/gettext,-runtime

LIB_DEPENDS-mysql =	${BASE_PKGPATH},-main \
			databases/mariadb

LIB_DEPENDS-mysql +=	${MODGCC4_CPPLIBDEP}

LIB_DEPENDS-psql =	${BASE_PKGPATH},-main \
			databases/postgresql

LIB_DEPENDS-psql +=	${MODGCC4_CPPLIBDEP}

BUILD_DEPENDS =		graphics/vulkan-loader \
			wayland/wayland-protocols \
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
CONFIGURE_ARGS +=	-DBUILD_WITH_PCH=OFF \
			-DCMAKE_INSTALL_PREFIX=${PREFIX} \
			-DFEATURE_dtls=OFF \
			-DFEATURE_journald=OFF \
			-DFEATURE_libinput=OFF \
			-DFEATURE_libproxy=ON \
			-DFEATURE_libudev=OFF \
			-DFEATURE_openssl_linked=ON \
			-DFEATURE_system_sqlite=ON \
			-DFEATURE_system_xcb_xinput=ON \
			-DFEATURE_wayland=ON \
			-DINSTALL_ARCHDATADIR=lib/qt6 \
			-DINSTALL_BINDIR=lib/qt6/bin \
			-DINSTALL_DATADIR=share/qt6 \
			-DINSTALL_DOCDIR=share/doc/qt6 \
			-DINSTALL_EXAMPLESDIR=share/doc/qt6/examples \
			-DINSTALL_INCLUDEDIR=include/X11/qt6 \
			-DINSTALL_MKSPECSDIR=lib/qt6/mkspecs \
			-DINSTALL_PLUGINSDIR=lib/qt6/plugins

# TODO
#CONFIGURE_ARGS +=	-DQT_BUILD_TESTS=ON

MODCMAKE_LDFLAGS +=	-lexecinfo

MODQT6_DEPS =		No

MODPY_ADJ_FILES =	util/testrunner/qt-testrunner.py \
			util/testrunner/sanitizer-testrunner.py \
			mkspecs/features/uikit/devices.py

PROGRAMS6 =		qmake cmake_automoc_parser moc qlalr \
			qt-cmake-standalone-test qvkgen rcc syncqt tracegen \
			tracepointgen uic

MODCMAKE_LDFLAGS +=	-L${X11BASE}/lib -L${LOCALBASE}/lib
CXXFLAGS +=		-I${X11BASE}/include -I${LOCALBASE}/include

post-extract:
	mkdir -p ${WRKDIST}/mkspecs/openbsd-clang
	cp ${FILESDIR}/clang-qmake.conf \
		${WRKDIST}/mkspecs/openbsd-clang/qmake.conf
	cp ${WRKDIST}/mkspecs/openbsd-g++/qplatformdefs.h \
		${WRKDIST}/mkspecs/openbsd-clang/

post-install:
.for p in ${PROGRAMS6}
	! test -e ${PREFIX}/lib/qt6/bin/$p || \
	    ln -sf ../lib/qt6/bin/$p ${PREFIX}/bin/$p-qt6
	! test -e ${PREFIX}/lib/qt6/libexec/$p || \
	    ln -sf ../lib/qt6/libexec/$p ${PREFIX}/bin/$p-qt6
.endfor
	${MODPY_COMPILEALL} \
		${PREFIX}/lib/qt6/libexec/ \
		${PREFIX}/lib/qt6/mkspecs/features/uikit/

.include <bsd.port.mk>
