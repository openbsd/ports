COMMENT=	helper library for networking and security applications

DISTNAME=	gwenhywfar-5.13.0

SHARED_LIBS +=  gwenhywfar           2.5      # 83.0
SHARED_LIBS +=  gwengui-cpp          1.0      # 83.0
SHARED_LIBS +=  gwengui-gtk3         0.0      # 83.0
SHARED_LIBS +=  gwengui-qt5          1.0      # 83.0

CATEGORIES=	devel

HOMEPAGE=	https://www.aquamaniac.de

# LGPLv2.1 with OpenSSL exemption
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC GL LLVM Qt5Concurrent Qt5Core
WANTLIB += Qt5DBus Qt5Designer Qt5Gui Qt5Help Qt5Multimedia Qt5MultimediaWidgets
WANTLIB += Qt5Network Qt5OpenGL Qt5PrintSupport Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5QuickTest Qt5Script Qt5ScriptTools Qt5Sensors
WANTLIB += Qt5SerialPort Qt5Sql Qt5Svg Qt5Test Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xml Qt5XmlPatterns X11 X11-xcb Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xxf86vm atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += crypto dbus-1 double-conversion drm elf epoll-shim
WANTLIB += epoxy execinfo expat ffi fontconfig freetype fribidi
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0
WANTLIB += gmodule-2.0 gmp gnutls gobject-2.0 gpg-error graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz hogweed iconv icudata icui18n
WANTLIB += icuuc idn2 intl jpeg m mp3lame mpg123 nettle ogg opus
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pciaccess
WANTLIB += pcre2-16 pcre2-8 pixman-1 png pulse pulse-mainloop-glib
WANTLIB += sndfile ssl tasn1 unistring vorbis vorbisenc wayland-client
WANTLIB += wayland-cursor wayland-egl xcb xcb-dri2 xcb-dri3 xcb-glx
WANTLIB += xcb-present xcb-randr xcb-render xcb-shm xcb-sync xcb-xfixes
WANTLIB += xkbcommon xshmfence z zstd

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
WANTLIB += drm_amdgpu drm_intel
.endif

SITES=			https://www.aquamaniac.de/rdm/attachments/download/550/

MODULES=		x11/qt5

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		audio/flac \
			audio/lame \
			audio/libogg \
			audio/libsndfile \
			audio/libvorbis \
			audio/mpg123 \
			audio/opus \
			audio/pulseaudio \
			graphics/png \
			security/gnutls \
			security/libgcrypt \
			x11/gtk+3 \
			x11/qt5/qtdeclarative \
			x11/qt5/qtmultimedia \
			x11/qt5/qtscript \
			x11/qt5/qtsensors \
			x11/qt5/qtserialport \
			x11/qt5/qtsvg \
			x11/qt5/qttools \
			x11/qt5/qtx11extras \
			x11/qt5/qtxmlpatterns

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--with-guis="gtk3 qt5 cpp" \
			--with-moc="${MODQT5_MOC}" \
			--with-qmake="${MODQT5_QMAKE}" \
			--with-uic="${MODQT5_UIC}" \
			--enable-ssl

CONFIGURE_ENV+=		QT_LRELEASE="${MODQT5_LRELEASE}" \
			QT_LUPDATE="${LOCALBASE}/bin/lupdate-qt5" \
			QT_MAJOR_VERSION=5 \
			QT_MOC="${MODQT5_MOC}" \
			QT_RCC="${LOCALBASE}/bin/rcc-qt6" \
			QT_UIC="${LOCALBASE}/bin/uic-qt6"

CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gwenhywfar-config.cmake.in \
	${WRKSRC}/gui/qt5/gwengui-qt5-config.cmake.in \
	${WRKSRC}/gui/cpp/gwengui-cpp-config.cmake.in

.include <bsd.port.mk>
