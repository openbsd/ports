# $OpenBSD: Makefile,v 1.19 2011/10/19 18:45:20 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		standard GNOME themes

GNOME_PROJECT=		gnome-themes-standard
GNOME_VERSION=		3.2.1
REVISION=		0

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += croco-0.6 drm expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread-stubs rsvg-2 xcb xcb-render xcb-shm
WANTLIB += xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		x11/gtk+3 \
			x11/gnome/librsvg

# As explained here:
# https://mail.gnome.org/archives/desktop-devel-list/2011-March/msg00017.html
# we need to depend on gtk-engines2 in order for the gtk2 themes to work.
RUN_DEPENDS+=		x11/gtk-engines2

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS+=	--disable-static

.include <bsd.port.mk>
