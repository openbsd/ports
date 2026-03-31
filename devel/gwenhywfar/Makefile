COMMENT-main=	helper library for networking and security applications
COMMENT-gtk3=	gwenhywfar GTK+3 support library
COMMENT-qt6=	gwenhywfar Qt6 support library

V=		5.14.1
DISTNAME=	gwenhywfar-${V}

PKGNAME-gtk3=	gwenhywfar-gtk3-${V}
PKGNAME-qt6=	gwenhywfar-qt6-${V}

SHARED_LIBS +=  gwenhywfar           2.6      # 93.1
SHARED_LIBS +=  gwengui-cpp          1.1      # 93.1
SHARED_LIBS +=  gwengui-gtk3         0.1      # 93.1
SHARED_LIBS +=  gwengui-qt6          0.0      # 93.1

CATEGORIES=	devel

HOMEPAGE=	https://www.aquamaniac.de

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1 with OpenSSL exemption
PERMIT_PACKAGE =	Yes

WANTLIB-main += ${COMPILER_LIBCXX} c crypto gcrypt gmp gnutls gpg-error
WANTLIB-main += hogweed iconv idn2 intl m nettle p11-kit ssl tasn1
WANTLIB-main += unistring

WANTLIB-gtk3 += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB-gtk3 += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB-gtk3 += atk-bridge-2.0 atspi cairo cairo-gobject dbus-1 epoll-shim
WANTLIB-gtk3 += epoxy expat ffi fontconfig freetype fribidi gcrypt
WANTLIB-gtk3 += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp
WANTLIB-gtk3 += gnutls gobject-2.0 gpg-error graphite2 gtk-3 gwenhywfar
WANTLIB-gtk3 += harfbuzz hogweed iconv idn2 intl jpeg m nettle p11-kit
WANTLIB-gtk3 += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1
WANTLIB-gtk3 += png tasn1 unistring wayland-client wayland-cursor wayland-egl
WANTLIB-gtk3 += xcb xcb-render xcb-shm xkbcommon z

WANTLIB-qt6 += ${COMPILER_LIBCXX} EGL FLAC GL LLVM Qt6Concurrent Qt6Core
WANTLIB-qt6 += Qt6DBus Qt6Designer Qt6Gui Qt6Help Qt6Multimedia Qt6MultimediaWidgets
WANTLIB-qt6 += Qt6Network Qt6OpenGL Qt6OpenGLWidgets Qt6PrintSupport
WANTLIB-qt6 += Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript Qt6Quick
WANTLIB-qt6 += Qt6QuickTest Qt6Sensors Qt6Sql Qt6Svg Qt6Test Qt6UiTools
WANTLIB-qt6 += Qt6Widgets Qt6Xml X11 X11-xcb Xau Xdmcp Xext Xfixes
WANTLIB-qt6 += Xxf86vm b2 brotlicommon brotlidec crypto curl dbus-1
WANTLIB-qt6 += double-conversion drm duktape elf execinfo expat ffi
WANTLIB-qt6 += fontconfig freetype gbm gcrypt gio-2.0 glapi glib-2.0
WANTLIB-qt6 += gmodule-2.0 gmp gnutls gobject-2.0 gpg-error graphite2
WANTLIB-qt6 += gthread-2.0 gwengui-cpp gwenhywfar harfbuzz hogweed
WANTLIB-qt6 += iconv icudata icui18n icuuc idn2 intl m mp3lame mpg123
WANTLIB-qt6 += nettle nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_libressl
WANTLIB-qt6 += ogg opus p11-kit pciaccess pcre2-16 pcre2-8 png proxy
WANTLIB-qt6 += pulse sndfile ssl tasn1 unistring vorbis vorbisenc
WANTLIB-qt6 += xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-randr
WANTLIB-qt6 += xcb-shm xcb-sync xcb-xfixes xkbcommon xshmfence z zstd

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
WANTLIB-qt6 += drm_amdgpu drm_intel
.endif

SITES=			https://www.aquamaniac.de/rdm/attachments/download/630/

MODULES=		x11/qt6

MULTI_PACKAGES=		-main -gtk3 -qt6

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS-main=	security/gnutls \
			security/libgcrypt

LIB_DEPENDS-gtk3=	${BASE_PKGPATH},-main \
			x11/gtk+3

LIB_DEPENDS-qt6=	${BASE_PKGPATH},-main \
			${MODQT6_LIB_DEPENDS} \
			x11/qt6/qtmultimedia \
			x11/qt6/qtsensors \
			x11/qt6/qttools

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--with-guis="gtk3 qt6 cpp" \
			--with-moc="${MODQT6_MOC}" \
			--with-qmake="${MODQT6_QMAKE}" \
			--with-uic="${MODQT6_UIC}" \
			--enable-ssl

CONFIGURE_ENV=		QT_LRELEASE="${MODQT6_LRELEASE}" \
			QT_LUPDATE="${LOCALBASE}/bin/lupdate-qt6" \
			QT_MAJOR_VERSION=6 \
			QT_MOC="${MODQT6_MOC}" \
			QT_RCC="${LOCALBASE}/bin/rcc-qt6" \
			QT_UIC="${LOCALBASE}/bin/uic-qt6" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gwenhywfar-config.cmake.in \
	${WRKSRC}/gui/qt5/gwengui-qt6-config.cmake.in \
	${WRKSRC}/gui/cpp/gwengui-cpp-config.cmake.in

.include <bsd.port.mk>
