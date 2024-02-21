COMMENT=	small and lightweight IDE

DISTNAME =	geany-2.0
REVISION =	0
SHARED_LIBS +=  geany                     1.0 # 0.0

CATEGORIES=	devel

HOMEPAGE=	https://www.geany.org/

MAINTAINER=	Victor Kukshiev <andrey0bolkonsky@gmail.com>

# GPL + Scintilla License
PERMIT_PACKAGE=	Yes

SITES=		https://download.geany.org/
EXTRACT_SUFX=	.tar.bz2

# C++17
COMPILER =	base-clang ports-gcc
MODULES=	textproc/intltool

USE_GMAKE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 epoll-shim
WANTLIB += epoxy execinfo expat ffi fontconfig freetype fribidi
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl jpeg
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1
WANTLIB += png wayland-client wayland-cursor wayland-egl xcb xcb-render
WANTLIB += xcb-shm xkbcommon z

LIB_DEPENDS=	x11/gtk+3
RUN_DEPENDS=	devel/desktop-file-utils \
		devel/vte3 \
		x11/gtk+4,-guic

FAKE_FLAGS=	doc_DATA="${WRKSRC}/README"
LIBTOOL_FLAGS =	--tag=disable-static

CONFIGURE_STYLE=gnu
# Don't rebuild html/pdf docs, use whatever is included in the tarball
CONFIGURE_ARGS+=--enable-html-docs=no \
		--enable-pdf-docs=no \
		--enable-api-docs=no \
		--enable-gtkdoc-header=no
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	rm -f ${PREFIX}/lib/geany/*.la

.include <bsd.port.mk>
