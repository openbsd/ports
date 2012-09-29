# $OpenBSD: Makefile,v 1.32 2012/09/29 10:52:28 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		standard GNOME themes

GNOME_PROJECT=		gnome-themes-standard
GNOME_VERSION=		3.6.0.2
REVISION=		0

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi cairo cairo-gobject croco-0.6
WANTLIB += dbus-1 drm expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 harfbuzz icudata icule icuuc m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += rsvg-2 stdc++ xcb xcb-render xcb-shm xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		x11/gtk+3>=3.5.18 \
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

.include <bsd.port.mk>
