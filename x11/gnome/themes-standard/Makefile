# $OpenBSD: Makefile,v 1.52 2014/10/02 20:01:17 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		standard GNOME themes

GNOME_PROJECT=		gnome-themes-standard
GNOME_VERSION=		3.14.0
REVISION=		2

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		x11/gtk+3

LIB_DEPENDS=		x11/gtk+2

MODGNOME_TOOLS=		gtk-update-icon-cache

# As explained here:
# https://mail.gnome.org/archives/desktop-devel-list/2011-March/msg00017.html
# we need to depend on gtk-engines2 in order for the gtk2 themes to work.
RUN_DEPENDS +=		x11/gtk-engines2

# default settings
RUN_DEPENDS +=		fonts/cantarell-fonts \
			x11/gnome/adwaita-icon-theme

post-install:
# set the global cursor theme (libXcursor)
# https://bugzilla.gnome.org/show_bug.cgi?id=660353
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/default
	${INSTALL_DATA} ${FILESDIR}/index.theme \
		${PREFIX}/share/icons/default
	rm ${PREFIX}/lib/gtk-2.0/2.10.0/engines/*.{a,la}

.include <bsd.port.mk>
