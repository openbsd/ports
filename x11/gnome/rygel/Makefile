# $OpenBSD: Makefile,v 1.13 2012/02/23 08:32:46 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		home media solution that allows easy media sharing
COMMENT-tracker=	(meta-)tracker plugin for rygel(1)

GNOME_PROJECT=		rygel
GNOME_VERSION=		0.12.7

PKGNAME-main=		${DISTNAME}
PKGNAME-tracker=	${GNOME_PROJECT}-meta-tracker-${GNOME_VERSION}

REVISION-main=		0

CATEGORIES=		multimedia

HOMEPAGE=		http://live.gnome.org/Rygel

# LGPLv2.1
PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += e2fs-uuid ffi gee gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 gstbase-0.10 gstpbutils-0.10 gstreamer-0.10
WANTLIB += gstvideo-0.10 gthread-2.0 gupnp-1.0 gupnp-av-1.0 gupnp-dlna-1.0
WANTLIB += m orc-0.4 pcre soup-2.4 xml2 z

MULTI_PACKAGES=		-main

PSEUDO_FLAVORS=		no_tracker
FLAVOR ?=

BUILD_DEPENDS=		net/gupnp/vala>=0.10.0
LIB_DEPENDS=		devel/libgee \
			net/gupnp/av \
			net/gupnp/dlna

WANTLIB-main += ${WANTLIB}
WANTLIB-main += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-main += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB-main += cairo-gobject drm expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB-main += gstapp-0.10 gsttag-0.10 gtk-3 pango-1.0 pangocairo-1.0
WANTLIB-main += pangoft2-1.0 pixman-1 png pthread pthread-stubs sqlite3
WANTLIB-main += stdc++ xcb xcb-render xcb-shm

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			x11/gtk+3
RUN_DEPENDS-main=	${MODGETTEXT_RUN_DEPENDS} \
			${MODGNOME_RUN_DEPENDS} \
			net/gupnp/vala>=0.10.0

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS= 	vala

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS+=	--disable-static \
			--enable-mpris-plugin \
			--enable-media-export-plugin \
			--enable-gst-launch-plugin \
			--enable-external-plugin \
			--disable-mediathek-plugin \
			--disable-tracker-plugin

FAKE_FLAGS+=		sysconfdir=${PREFIX}/share/examples/rygel/

.if ${FLAVOR:Mno_tracker}
CONFIGURE_ARGS +=	--disable-tracker-plugin
.else
MULTI_PACKAGES +=	-tracker
CONFIGURE_ARGS +=	--enable-tracker-plugin
LIB_DEPENDS-tracker +=	${LIB_DEPENDS}
RUN_DEPENDS-tracker=	${MODGETTEXT_RUN_DEPENDS} \
			x11/gnome/tracker # org.freedesktop.Tracker
WANTLIB-tracker += ${WANTLIB}
.endif

.include <bsd.port.mk>
