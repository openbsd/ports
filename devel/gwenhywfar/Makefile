COMMENT=	helper library for networking and security applications

DISTNAME=	gwenhywfar-5.12.0

SHARED_LIBS +=  gwenhywfar           2.4      # 83.0
SHARED_LIBS +=  gwengui-cpp          1.0      # 83.0
SHARED_LIBS +=  gwengui-gtk3         0.0      # 83.0
SHARED_LIBS +=  gwengui-qt5          0.0      # 83.0

CATEGORIES=	devel

HOMEPAGE=	https://www.aquamaniac.de

# LGPLv2.1 with OpenSSL exemption
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL LLVM Qt5Core Qt5Gui Qt5Widgets
WANTLIB += X11 X11-xcb Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject crypto dbus-1 double-conversion
WANTLIB += drm drm_amdgpu elf epoll-shim epoxy execinfo
WANTLIB += expat ffi fontconfig freetype fribidi gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0 gmp
WANTLIB += gnutls gobject-2.0 gpg-error graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz hogweed iconv icudata icui18n icuuc
WANTLIB += idn2 intl jpeg m nettle p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pciaccess pcre2-16 pcre2-8 pixman-1 png
WANTLIB += ssl tasn1 unistring wayland-client wayland-cursor wayland-egl
WANTLIB += xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-randr
WANTLIB += xcb-render xcb-shm xcb-sync xcb-xfixes xkbcommon xshmfence
WANTLIB += z zstd

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
WANTLIB += drm_intel
.endif

SITES=			https://www.aquamaniac.de/rdm/attachments/download/529/

MODULES=		x11/qt5

BUILD_DEPENDS=		devel/gettext,-tools

LIB_DEPENDS=		graphics/png \
			security/libgcrypt \
			security/gnutls \
			x11/gtk+3

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--with-guis="gtk3 qt5 cpp" \
			--enable-ssl \
			--with-qt5-moc="${MODQT5_MOC}" \
			--with-qt5-qmake="${MODQT5_QMAKE}" \
			--with-qt5-uic="${MODQT5_UIC}"

CONFIGURE_ENV+=		QT_LRELEASE="${MODQT5_LRELEASE}" \
			QT_LUPDATE="${LOCALBASE}/bin/lupdate-qt5" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="-I${MODQT5_INCDIR}/QtWidgets"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gwenhywfar-config.cmake.in \
	${WRKSRC}/gui/qt5/gwengui-qt5-config.cmake.in \
	${WRKSRC}/gui/cpp/gwengui-cpp-config.cmake.in

.include <bsd.port.mk>
