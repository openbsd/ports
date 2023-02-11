COMMENT=	helper library for networking and security applications

DISTNAME=	gwenhywfar-5.10.1
REVISION=	0

SHARED_LIBS +=  gwenhywfar           2.3      # 83.0
SHARED_LIBS +=  gwengui-cpp          1.0      # 83.0
SHARED_LIBS +=  gwengui-gtk3         0.0      # 83.0
SHARED_LIBS +=  gwengui-qt5          0.0      # 83.0

CATEGORIES=	devel

HOMEPAGE=	https://www.aquamaniac.de

# LGPLv2.1 with OpenSSL exemption
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets X11
WANTLIB += X11-xcb Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 atk-bridge-2.0
WANTLIB += atspi brotlidec brotlienc c cairo cairo-gobject crypto
WANTLIB += dbus-1 double-conversion drm epoxy execinfo expat ffi
WANTLIB += fontconfig freetype fribidi gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += gpg-error graphite2 gthread-2.0 gtk-3 harfbuzz hogweed
WANTLIB += iconv icudata icui18n icuuc idn2 intl jpeg m nettle
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-16
WANTLIB += pcre2-8 pixman-1 png ssl tasn1 unistring xcb xcb-dri2
WANTLIB += xcb-dri3 xcb-glx xcb-present xcb-render xcb-shm xcb-sync
WANTLIB += xcb-xfixes xshmfence z zstd

MASTER_SITES=		https://www.aquamaniac.de/rdm/attachments/download/465/

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
