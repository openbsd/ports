# $OpenBSD: Makefile,v 1.34 2012/11/13 07:28:15 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		standard GNOME themes

GNOME_PROJECT=		gnome-themes-standard
GNOME_VERSION=		3.6.2

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi cairo cairo-gobject croco-0.6
WANTLIB += dbus-1 drm expat ffi fontconfig freetype gdk-3 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 gtk-x11-2.0 harfbuzz icudata icule
WANTLIB += icuuc m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs rsvg-2 stdc++ xcb
WANTLIB += xcb-render xcb-shm xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		x11/gtk+2 \
			x11/gtk+3 \
			x11/gnome/librsvg

MODGNOME_ICON_CACHE=	Yes

# As explained here:
# https://mail.gnome.org/archives/desktop-devel-list/2011-March/msg00017.html
# we need to depend on gtk-engines2 in order for the gtk2 themes to work.
RUN_DEPENDS+=		x11/gtk-engines2

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS=		--disable-static

# set the global cursor theme
# https://bugzilla.gnome.org/show_bug.cgi?id=660353
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/default
	${INSTALL_DATA} ${FILESDIR}/index.theme \
		${PREFIX}/share/icons/default
	rm ${PREFIX}/lib/gtk-3.0/3.0.0/theming-engines/*.la
	rm ${PREFIX}/lib/gtk-2.0/2.10.0/engines/*.la

.include <bsd.port.mk>
