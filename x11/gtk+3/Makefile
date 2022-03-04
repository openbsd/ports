# $OpenBSD: Makefile,v 1.253 2022/03/04 07:57:18 ajacoutot Exp $

# XXX add support for libcloudproviders?

DPB_PROPERTIES=		parallel

PORTROACH=		skipv:3.90.0,3.92.1,3.93.0,3.94.0

COMMENT-main=		multi-platform graphical toolkit
COMMENT-cups=		gtk+3 CUPS print backend
COMMENT-guic=		gtk+ icon theme caching utility

GNOME_PROJECT=		gtk+
GNOME_VERSION=		3.24.32

PKGNAME-main=		gtk+3-${GNOME_VERSION}
PKGNAME-cups=		gtk+3-cups-${GNOME_VERSION}
PKGNAME-guic=		gtk-update-icon-cache-${GNOME_VERSION}

CATEGORIES=		x11 devel

SHARED_LIBS +=  gdk-3                2201.1   # 2404.28
SHARED_LIBS +=  gtk-3                2201.0   # 2404.28
SHARED_LIBS +=  gailutil-3           0.0      # 0.0

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl jpeg m pcre pthread z

MULTI_PACKAGES=		-main -cups -guic

MODULES=		devel/dconf \
			x11/gnome

DEBUG_PACKAGES=		${BUILD_PACKAGES}

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/pango \
			graphics/gdk-pixbuf2 \
			x11/gnome/at-spi2-atk
RUN_DEPENDS-main=	${RUN_DEPENDS} \
			x11/hicolor-icon-theme

# convenient dependency to prevent hunting what needs what:
# some apps need more icons than the stock ones
# some apps needs the svg version of the icon (librsvg pulled in)
RUN_DEPENDS-main +=	x11/gnome/adwaita-icon-theme

WANTLIB-main += ${WANTLIB} ${COMPILER_LIBCXX} c epoxy fribidi Xau
WANTLIB-main += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xdmcp
WANTLIB-main += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB-main += cairo cairo-gobject dbus-1 expat fontconfig freetype
WANTLIB-main += graphite2 harfbuzz pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-main += pixman-1 xcb xcb-render xcb-shm png execinfo

LIB_DEPENDS-cups=	${LIB_DEPENDS} \
			print/cups,-libs \
			${BASE_PKGPATH},-main=${GNOME_VERSION}
RUN_DEPENDS-cups=

WANTLIB-cups += ${WANTLIB} ${COMPILER_LIBCXX} epoxy idn2 fribidi
WANTLIB-cups += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB-cups += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB-cups += cairo cairo-gobject dbus-1 expat fontconfig freetype
WANTLIB-cups += graphite2 harfbuzz pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-cups += pixman-1 xcb xcb-render png avahi-client avahi-common
WANTLIB-cups += cups gdk-3 gmp xcb-shm gnutls gtk-3 hogweed nettle
WANTLIB-cups += p11-kit tasn1 unistring execinfo Xau Xdmcp

LIB_DEPENDS-guic=	graphics/gdk-pixbuf2
RUN_DEPENDS-guic=	x11/hicolor-icon-theme

# uses pledge()
WANTLIB-guic += ${WANTLIB} c png

MODGNOME_TOOLS=		docbook gobject-introspection gtk-update-icon-cache \
			desktop-file-utils

TEST_IS_INTERACTIVE=	x11

CONFIGURE_STYLE=	gnu

# explicitly decativate wayland
CONFIGURE_ARGS+=	--disable-wayland-backend --enable-x11-backend

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/gtk+3

# configure will disable lpr in default gtk-print-backends if cups is found
MAKE_FLAGS=		GTK_PRINT_BACKENDS="file,lpr,cups"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/gtk-3.0/modules
	rm ${PREFIX}/lib/gtk-3.0/3.0.0/{printbackends,immodules}/*.{a,la}

.include <bsd.port.mk>
