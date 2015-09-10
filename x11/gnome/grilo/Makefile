# $OpenBSD: Makefile,v 1.37 2015/09/10 12:45:15 jasper Exp $

COMMENT=	framework for making media discovery and browsing easy

GNOME_PROJECT=	grilo
GNOME_VERSION=	0.2.15
API=		0.2
SUBST_VARS=	API

SHARED_LIBS +=  grilo-0.2            2.0      # 6.0
SHARED_LIBS +=  grlnet-0.2           1.1      # 1.6
SHARED_LIBS +=	grlpls-0.2           0.0      # 0.0

CATEGORIES+=	multimedia

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender archive atk-1.0 atk-bridge-2.0 atspi bz2 c
WANTLIB += cairo cairo-gobject crypto curl dbus-1 epoxy expat ffi
WANTLIB += fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmime-2.6 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz idn lzma lzo2 m nspr4
WANTLIB += nss3 oauth pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 plc4 plds4 png pthread pthread-stubs smime3 softokn3
WANTLIB += soup-2.4 sqlite3 ssl ssl3 totem-plparser xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libsoup \
		net/liboauth \
		x11/gnome/totem-pl-parser \
		x11/gtk+3

MODGNOME_TOOLS += gobject-introspection vala

# Own the grilo plugins directory to prevent warnings that this
# directory does not exist when no plugin is installed.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/grilo-${API}

.include <bsd.port.mk>
