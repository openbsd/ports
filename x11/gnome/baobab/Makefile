# $OpenBSD: Makefile,v 1.5 2012/09/01 14:36:58 ajacoutot Exp $

COMMENT=		directory tree analyzer for GNOME

GNOME_PROJECT=		baobab
GNOME_VERSION=		3.4.1
REVISION=		1

HOMEPAGE=		https://live.gnome.org/Baobab

# GPLv2 - GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xrender atk-1.0 c cairo cairo-gobject expat
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 gtop-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb
WANTLIB += xcb-render xcb-shm z

LIB_DEPENDS=		x11/gtk+3 \
			devel/libgtop2

RUN_DEPENDS=		x11/gnome/gvfs

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

.include <bsd.port.mk>
