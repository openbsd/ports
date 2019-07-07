# $OpenBSD: Makefile,v 1.5 2019/07/07 11:20:55 ajacoutot Exp $

COMMENT=		extra themes for GNOME applications

GNOME_PROJECT=		gnome-themes-extra
GNOME_VERSION=		3.28
REVISION=		2

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat ffi fontconfig freetype
WANTLIB += fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread xcb xcb-render xcb-shm z

MODULES=		x11/gnome

BUILD_DEPENDS=		x11/gtk+3

LIB_DEPENDS=		x11/gtk+2

MODGNOME_TOOLS=		gtk-update-icon-cache

# As explained here:
# https://mail.gnome.org/archives/desktop-devel-list/2011-March/msg00017.html
# we need to depend on gtk-engines2 in order for the gtk2 themes to work.
RUN_DEPENDS +=		x11/gtk-engines2

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/gtk-2.0/2.10.0/engines/*.{a,la}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-themes-extra
# set the global cursor theme (libXcursor)
# https://bugzilla.gnome.org/show_bug.cgi?id=660353
	${INSTALL_DATA} ${FILESDIR}/index.theme \
		${PREFIX}/share/examples/gnome-themes-extra
# set the global gtk+2 theme (matches what's directly bundled in gtk+3;
# /etc/gtk-2.0/gtkrc takes precedence over /usr/local/share/gtk-2.0/gtkrc;
# sync "gtk-icon-theme-name" with x11/gtk+2/files/gtkrc
	${INSTALL_DATA} ${FILESDIR}/gtkrc \
		${PREFIX}/share/examples/gnome-themes-extra

.include <bsd.port.mk>
