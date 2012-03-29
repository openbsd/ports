# $OpenBSD: Makefile,v 1.84 2012/03/29 06:46:31 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		components for the GNOME desktop

GNOME_PROJECT=		gnome-desktop
GNOME_VERSION=		3.4.0

SHARED_LIBS +=  gnome-desktop-3      1.0      # 2.1

CATEGORIES=		x11

# LGPLv2/GFDLv1.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += drm expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread-stubs xcb xcb-render xcb-shm z stdc++

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas
RUN_DEPENDS=		devel/gsettings-desktop-schemas
LIB_DEPENDS=		x11/gtk+3

MODGNOME_TOOLS= 	goi yelp

CONFIGURE_ARGS=		--with-gnome-distributor="OpenBSD Ports"

.include <bsd.port.mk>
