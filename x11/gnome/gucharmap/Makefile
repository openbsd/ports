# $OpenBSD: Makefile,v 1.68 2013/01/24 07:31:58 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		Unicode character map for the GNOME project

GNOME_PROJECT=		gucharmap
GNOME_VERSION=		3.6.1

SHARED_LIBS +=  gucharmap_2_90            7.0 # 7.0

HOMEPAGE=		http://live.gnome.org/Gucharmap

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs stdc++ xcb
WANTLIB += xcb-render xcb-shm z
WANTLIB += ICE SM atk-bridge-2.0 atspi dbus-1 harfbuzz icudata
WANTLIB += icule icuuc

MODULES=		devel/gettext \
			devel/dconf \
			x11/gnome

MODGNOME_TOOLS= 	goi yelp

LIB_DEPENDS+=		x11/gtk+3,-main

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

# error: -Bsymbolic requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic

.include <bsd.port.mk>
