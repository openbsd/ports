# $OpenBSD: Makefile,v 1.138 2015/07/21 15:34:21 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		multi-platform graphical toolkit
COMMENT-cups=		gtk+3 CUPS print backend
COMMENT-cloudprint=	gtk+3 Google Cloud Print backend
COMMENT-guic=		gtk+ icon theme caching utility

GNOME_PROJECT=		gtk+
GNOME_VERSION=		3.16.6

PKGNAME-main=		gtk+3-${GNOME_VERSION}
PKGNAME-cups=		gtk+3-cups-${GNOME_VERSION}
PKGNAME-cloudprint=	gtk+3-cloudprint-${GNOME_VERSION}
PKGNAME-guic=		gtk-update-icon-cache-${GNOME_VERSION}

CATEGORIES=		x11 devel

SHARED_LIBS +=  gdk-3                1600.0   # 1600.0
SHARED_LIBS +=  gtk-3                1600.0   # 1600.0
SHARED_LIBS +=  gailutil-3           0.0      # 0.0

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += pcre png pthread z

MULTI_PACKAGES=		-main -cups -cloudprint -guic

MODULES=		devel/gettext \
			devel/dconf \
			x11/gnome

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

WANTLIB-main += ${WANTLIB} c epoxy
WANTLIB-main += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB-main += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB-main += cairo cairo-gobject dbus-1 expat fontconfig freetype
WANTLIB-main += graphite2 gthread-2.0 harfbuzz pango-1.0 pangocairo-1.0
WANTLIB-main += pangoft2-1.0 pixman-1 pthread-stubs xcb xcb-render xcb-shm

LIB_DEPENDS-cups=	${LIB_DEPENDS} \
			print/cups,-libs \
			${BASE_PKGPATH},-main=${GNOME_VERSION}
RUN_DEPENDS-cups=	${MODGETTEXT_RUN_DEPENDS}

WANTLIB-cups += ${WANTLIB} epoxy
WANTLIB-cups += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB-cups += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB-cups += cairo cairo-gobject dbus-1 expat fontconfig freetype
WANTLIB-cups += graphite2 gthread-2.0 harfbuzz pango-1.0 pangocairo-1.0
WANTLIB-cups += pangoft2-1.0 pixman-1 pthread-stubs xcb xcb-render
WANTLIB-cups += avahi-client avahi-common cups gdk-3 gmp xcb-shm
WANTLIB-cups += gnutls gtk-3 hogweed nettle p11-kit tasn1

LIB_DEPENDS-cloudprint=	${LIB_DEPENDS} \
			devel/json-glib \
			net/librest \
			${BASE_PKGPATH},-main=${GNOME_VERSION}
RUN_DEPENDS-cloudprint=	${MODGETTEXT_RUN_DEPENDS}

WANTLIB-cloudprint += ${WANTLIB} epoxy
WANTLIB-cloudprint += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB-cloudprint += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB-cloudprint += cairo cairo-gobject dbus-1 expat fontconfig freetype
WANTLIB-cloudprint += graphite2 gthread-2.0 harfbuzz pango-1.0 pangocairo-1.0
WANTLIB-cloudprint += pangoft2-1.0 pixman-1 pthread-stubs xcb xcb-render
WANTLIB-cloudprint += gdk-3 gtk-3 json-glib-1.0 rest-0.7 soup-2.4 soup-gnome-2.4
WANTLIB-cloudprint += sqlite3 xml2 lzma xcb-shm

LIB_DEPENDS-guic=	graphics/gdk-pixbuf2
RUN_DEPENDS-guic=	${MODGETTEXT_RUN_DEPENDS} \
			x11/hicolor-icon-theme
WANTLIB-guic += ${WANTLIB} c

MODGNOME_TOOLS=		docbook gobject-introspection gtk-update-icon-cache \
			desktop-file-utils

TEST_IS_INTERACTIVE=	x11

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-libcanberra

# sync with devel/mozjs17: colord -> polkit -> mozjs17
# not for mips64* since devel/mozjs17 does not compile there (OOM)
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "hppa" || \
    ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "sparc64"
LIB_DEPENDS-cups +=	graphics/colord
WANTLIB-cups +=	colordprivate colord lcms2
.else
CONFIGURE_ARGS +=	--disable-colord
.endif

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/gtk+3

# configure will disable lpr in default gtk-print-backends if cups is found
MAKE_FLAGS=		GTK_PRINT_BACKENDS="file,lpr,cups,cloudprint"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/gtk-3.0/modules
	rm ${PREFIX}/lib/gtk-3.0/3.0.0/{printbackends,immodules}/*.{a,la}

.include <bsd.port.mk>
