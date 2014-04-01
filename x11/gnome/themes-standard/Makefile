# $OpenBSD: Makefile,v 1.47 2014/04/01 18:38:54 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		standard GNOME themes

GNOME_PROJECT=		gnome-themes-standard
GNOME_VERSION=		3.12.0
REVISION=		0

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject croco-0.6 dbus-1 expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs rsvg-2 xcb
WANTLIB += xcb-render xcb-shm xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		x11/gtk+2 \
			x11/gtk+3 \
			x11/gnome/librsvg

MODGNOME_TOOLS=		gtk-update-icon-cache

# As explained here:
# https://mail.gnome.org/archives/desktop-devel-list/2011-March/msg00017.html
# we need to depend on gtk-engines2 in order for the gtk2 themes to work.
RUN_DEPENDS+=		x11/gtk-engines2

post-install:
# set the global cursor theme
# https://bugzilla.gnome.org/show_bug.cgi?id=660353
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/default
	${INSTALL_DATA} ${FILESDIR}/index.theme \
		${PREFIX}/share/icons/default

	rm ${PREFIX}/lib/gtk-3.0/3.0.0/theming-engines/*.{a,la}
	rm ${PREFIX}/lib/gtk-2.0/2.10.0/engines/*.{a,la}

.include <bsd.port.mk>
