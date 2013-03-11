# $OpenBSD: Makefile,v 1.47 2013/03/11 11:46:11 espie Exp $

COMMENT=	mouse accessibility enhancements for GNOME

GNOME_PROJECT=	mousetweaks
GNOME_VERSION=	3.6.0

HOMEPAGE=	http://live.gnome.org/Mousetweaks/Home

# GPLv3 - GFDLv1.3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xcursor Xfixes Xrender Xtst atk-1.0 c cairo
WANTLIB += cairo-gobject expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb
WANTLIB += xcb-render xcb-shm z

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

USE_GROFF=	Yes

BUILD_DEPENDS=	devel/gsettings-desktop-schemas>=3.6.0
RUN_DEPENDS=	devel/gsettings-desktop-schemas>=3.6.0
LIB_DEPENDS=	x11/gtk+3>=3.6.0

MODGNOME_TOOLS= yelp

.include <bsd.port.mk>
