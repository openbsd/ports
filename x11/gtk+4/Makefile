# $OpenBSD: Makefile,v 1.35 2020/12/17 08:49:03 ajacoutot Exp $

# XXX: PORTROACH is set at the end of this file to override gnome.port.mk
  
# XXX add support for libcloudproviders? (-Dcloudproviders=enabled)
# XXX add support for tracker3? (-Dtracker=enabled)

DPB_PROPERTIES=		parallel

COMMENT-main=		multi-platform graphical toolkit
COMMENT-cloudprint=	gtk+4 Cloud Print backend
COMMENT-cups=		gtk+4 CUPS print backend
COMMENT-demos=		gtk+4 demo programs
COMMENT-guic=		gtk+ icon theme caching utility
COMMENT-media=		gtk+ media engine

GNOME_PROJECT=		gtk
GNOME_VERSION=		4.0.0

PKGNAME-main=		gtk+4-${GNOME_VERSION}
PKGNAME-cloudprint=	gtk+4-cloudprint-${GNOME_VERSION}
PKGNAME-cups=		gtk+4-cups-${GNOME_VERSION}
PKGNAME-demos=		gtk+4-demos-${GNOME_VERSION}
PKGNAME-guic=		gtk4-update-icon-cache-${GNOME_VERSION}
PKGNAME-media=		gtk+4-media-${GNOME_VERSION}

CATEGORIES=		x11 devel

SHARED_LIBS += gtk-4                     3.3 # 1.0.0

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=		-main -cloudprint -cups -demos -guic -media

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

COMPILER=		base-clang ports-gcc ports-clang
COMPILER_LANGS=		c

MODGNOME_TOOLS=		docbook gobject-introspection gtk-update-icon-cache \
			desktop-file-utils

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP=		No

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS=		www/sassc

# x11/xkbcommon only needed for Wayland
LIB_DEPENDS-main=	devel/pango \
			graphics/gdk-pixbuf2 \
			graphics/graphene
RUN_DEPENDS-main=	${RUN_DEPENDS}

# convenient dependency to prevent hunting what needs what:
# some apps need more icons than the stock ones
# some apps needs the svg version of the icon (librsvg pulled in)
RUN_DEPENDS-main +=	x11/gnome/adwaita-icon-theme

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr c cairo cairo-gobject cairo-script-interpreter
WANTLIB += epoxy fontconfig fribidi gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphene-1.0 harfbuzz intl
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0

LIB_DEPENDS-cloudprint=	devel/json-glib \
			net/librest \
			${BASE_PKGPATH},-main=${GNOME_VERSION}
RUN_DEPENDS-cloudprint=	# empty

WANTLIB-cloudprint += cairo gio-2.0 glib-2.0 gobject-2.0 gtk-4 json-glib-1.0
WANTLIB-cloudprint += rest-0.7

LIB_DEPENDS-cups=	print/cups,-libs \
			${BASE_PKGPATH},-main=${GNOME_VERSION}
RUN_DEPENDS-cups=	# empty

WANTLIB-cups += cairo cups gio-2.0 glib-2.0 gobject-2.0 gtk-4

LIB_DEPENDS-demos=	${BASE_PKGPATH},-main=${GNOME_VERSION}
RUN_DEPENDS-demos=	${RUN_DEPENDS}

WANTLIB-demos += c cairo epoxy gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB-demos += graphene-1.0 gtk-4 harfbuzz intl m pango-1.0 pangocairo-1.0
WANTLIB-demos += rsvg-2

LIB_DEPENDS-guic=	x11/gtk+4,-main
RUN_DEPENDS-guic=	x11/hicolor-icon-theme

# uses pledge()
WANTLIB-guic += c gdk_pixbuf-2.0 glib-2.0 gtk-4 intl

# gstreamer1-plugins-bad: gstplayer-1.0
LIB_DEPENDS-media=	multimedia/gstreamer1/plugins-bad \
			${BASE_PKGPATH},-main=${GNOME_VERSION}

WANTLIB-media += gio-2.0 glib-2.0 gobject-2.0 gstbase-1.0 gstplayer-1.0
WANTLIB-media += gstreamer-1.0 gstvideo-1.0 gtk-4

TEST_IS_INTERACTIVE=	x11

CONFIGURE_ARGS=		-Dwayland-backend=false \
			-Dprint-backends=file,cups,lpr \
			-Dvulkan=disabled \
			-Dman-pages=true

# preference for media-gstreamer
CONFIGURE_ARGS +=	-Dmedia-ffmpeg=disabled

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=		-Wno-error
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/modules/printbackends/meson.build

.include <bsd.port.mk>

# Clear portroach annotation for we track an odd-numbered development branch
PORTROACH=
