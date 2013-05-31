# $OpenBSD: Makefile,v 1.18 2013/05/31 15:35:05 ajacoutot Exp $

COMMENT=	framework for making media discovery and browsing easy

GNOME_PROJECT=	grilo
GNOME_VERSION=	0.2.6
API=		0.2
REVISION=	0

SHARED_LIBS +=  grilo-0.2            1.0      # 4.0
SHARED_LIBS +=  grlnet-0.2           1.0      # 1.4

CATEGORIES+=	multimedia

HOMEPAGE=	http://live.gnome.org/Grilo

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext \
		x11/gnome

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs soup-2.4 xcb xcb-render
WANTLIB += xcb-shm xml2 z
WANTLIB += crypto curl idn nspr4 nss3 oauth plc4 plds4 smime3
WANTLIB += softokn3 ssl ssl3

LIB_DEPENDS=	devel/libsoup \
		net/liboauth \
		x11/gtk+3

MODGNOME_TOOLS= gi vala

SUBST_VARS+=	API

.include <bsd.port.mk>
