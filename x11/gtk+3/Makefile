# $OpenBSD: Makefile,v 1.233 2020/07/05 07:33:26 kmos Exp $

# XXX never versions require pango>=1.45
# XXX add support for libcloudproviders?

PORTROACH=		skipv:3.90.0,3.92.1,3.93.0,3.94.0

COMMENT-main=		multi-platform graphical toolkit
COMMENT-cups=		gtk+3 CUPS print backend
COMMENT-cloudprint=	gtk+3 Google Cloud Print backend
COMMENT-guic=		gtk+ icon theme caching utility

GNOME_PROJECT=		gtk+
GNOME_VERSION=		3.24.21

PKGNAME-main=		gtk+3-${GNOME_VERSION}
PKGNAME-cups=		gtk+3-cups-${GNOME_VERSION}
PKGNAME-cloudprint=	gtk+3-cloudprint-${GNOME_VERSION}
PKGNAME-guic=		gtk-update-icon-cache-${GNOME_VERSION}

CATEGORIES=		x11 devel

SHARED_LIBS +=  gdk-3                2201.1   # 2404.17
SHARED_LIBS +=  gtk-3                2201.0   # 2404.17
SHARED_LIBS +=  gailutil-3           0.0      # 0.0

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl m pcre pthread z

MULTI_PACKAGES=		-main -cups -cloudprint -guic

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

WANTLIB-main += ${WANTLIB} c epoxy fribidi
WANTLIB-main += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB-main += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB-main += cairo cairo-gobject dbus-1 expat fontconfig freetype
WANTLIB-main += graphite2 harfbuzz pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-main += pixman-1 xcb xcb-render xcb-shm png

LIB_DEPENDS-cups=	${LIB_DEPENDS} \
			print/cups,-libs \
			${BASE_PKGPATH},-main=${GNOME_VERSION}
RUN_DEPENDS-cups=

WANTLIB-cups += ${WANTLIB} epoxy idn2 fribidi
WANTLIB-cups += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB-cups += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB-cups += cairo cairo-gobject dbus-1 expat fontconfig freetype
WANTLIB-cups += graphite2 gthread-2.0 harfbuzz pango-1.0 pangocairo-1.0
WANTLIB-cups += pangoft2-1.0 pixman-1 xcb xcb-render png
WANTLIB-cups += avahi-client avahi-common cups gdk-3 gmp xcb-shm
WANTLIB-cups += gnutls gtk-3 hogweed nettle p11-kit tasn1 unistring

LIB_DEPENDS-cloudprint=	${LIB_DEPENDS} \
			devel/json-glib \
			net/librest \
			${BASE_PKGPATH},-main=${GNOME_VERSION}
RUN_DEPENDS-cloudprint=

WANTLIB-cloudprint += ${WANTLIB} epoxy fribidi idn2 psl unistring
WANTLIB-cloudprint += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB-cloudprint += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB-cloudprint += cairo cairo-gobject dbus-1 expat fontconfig freetype
WANTLIB-cloudprint += graphite2 gthread-2.0 harfbuzz pango-1.0 pangocairo-1.0
WANTLIB-cloudprint += pangoft2-1.0 pixman-1 xcb xcb-render
WANTLIB-cloudprint += gdk-3 gtk-3 json-glib-1.0 rest-0.7 soup-2.4 soup-gnome-2.4
WANTLIB-cloudprint += sqlite3 xml2 lzma xcb-shm png brotlicommon brotlidec

LIB_DEPENDS-guic=	graphics/gdk-pixbuf2
RUN_DEPENDS-guic=	x11/hicolor-icon-theme

# uses pledge()
WANTLIB-guic += ${WANTLIB} c

MODGNOME_TOOLS=		docbook gobject-introspection gtk-update-icon-cache \
			desktop-file-utils

TEST_IS_INTERACTIVE=	x11

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-libcanberra

# sync with devel/spidermonkey60 (ONLY_FOR_ARCHS):
# colord -> polkit -> spidermonkey60
.if ${MACHINE_ARCH} == "aarch64" || ${MACHINE_ARCH} == "alpha" || \
    ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386" || \
    ${MACHINE_ARCH} == "hppa" || ${MACHINE_ARCH} == "mips64el" || \
    ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "powerpc" || \
    ${MACHINE_ARCH} == "sparc64"
LIB_DEPENDS-cups +=	graphics/colord
WANTLIB-cups +=	colordprivate colord lcms2
.else
CONFIGURE_ARGS +=	--disable-colord
.endif

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/gtk+3

# configure will disable lpr in default gtk-print-backends if cups is found
MAKE_FLAGS=		GTK_PRINT_BACKENDS="file,lpr,cups,cloudprint"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/gtk-3.0/modules
	rm ${PREFIX}/lib/gtk-3.0/3.0.0/{printbackends,immodules}/*.{a,la}

.include <bsd.port.mk>
