COMMENT=	color terminal emulator with unicode support
DISTNAME=	mlterm-3.9.4

SHARED_LIBS+=	mef	1.0 # 3.1
SHARED_LIBS+=	pobl	1.0 # 2.1

CATEGORIES=	x11

HOMEPAGE=	https://mlterm.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xft Xi
WANTLIB += Xinerama Xrandr Xrender XRes atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 epoll-shim epoxy expat ffi
WANTLIB += fontconfig freetype fribidi gdk_pixbuf-2.0 gdk-3  gtk-3
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += harfbuzz iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png pthread
WANTLIB += util wayland-client wayland-cursor wayland-egl xcb
WANTLIB += xcb-render xcb-shm xkbcommon z Xau Xdmcp jpeg
WANTLIB += ${COMPILER_LIBCXX}

SITES=		${SITE_SOURCEFORGE:=mlterm/}

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	devel/fribidi \
		devel/gettext,-runtime \
		devel/pango \
		graphics/gdk-pixbuf2 \
		x11/dbus \
		x11/gnome/at-spi2-core \
		x11/gtk+3

FAKE_FLAGS=	INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_SCRIPT="${INSTALL_SCRIPT}" \
		sysconfdir="${PREFIX}/share/examples"

CONFIGURE_STYLE=autoconf no-autoheader
AUTOCONF_VERSION=2.69
CONFIGURE_ARGS=	--disable-canna \
		--disable-dl-ctl \
		--disable-fcitx \
		--disable-ibus \
		--disable-iiimf \
		--disable-ind \
		--disable-m17nlib \
		--disable-scim \
		--disable-ssh2 \
		--disable-uim \
		--disable-wnn \
		--with-gtk=3.0 \
		--with-gui=wayland,xlib \
		--with-imagelib=gdk-pixbuf2 \
		--with-tools=mlclient,mlconfig,mlcc,mlterm-menu,mlimgloader,mlfc
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include/freetype2 -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		INSTALL_OPT="-m 4755 -o root"
MAKE_ENV=	LIBmef_VERSION=${LIBmef_VERSION} \
		LIBpobl_VERSION=${LIBpobl_VERSION}

NO_TEST=	Yes

.include <bsd.port.mk>
