# $OpenBSD: Makefile,v 1.6 2011/09/12 12:04:17 jasper Exp $

COMMENT=		GNOME power manager

GNOME_PROJECT=		gnome-power-manager
GNOME_VERSION=		3.0.2

HOMEPAGE=		http://projects.gnome.org/gnome-power-manager/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject canberra canberra-gtk3 dbus-1
WANTLIB += dbus-glib-1 drm expat fontconfig freetype gconf-2 gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring
WANTLIB += gobject-2.0 gpg-error gthread-2.0 gtk-3 ltdl m notify
WANTLIB += ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs upower-glib vorbis vorbisfile
WANTLIB += xcb xcb-render xcb-shm z

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes

LIB_DEPENDS=	sysutils/upower \
		devel/libnotify \
		audio/libcanberra,-gtk3 \
		x11/gnome/libgnome-keyring \
		devel/gconf2

FAKE_FLAGS=	autostartdir=${PREFIX}/share/examples/gnome-power-manager/xdg/autostart \
		script_SCRIPTS=""

CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		ac_cv_path_DOCBOOK2MAN=no \
		ac_cv_path_XMLTO=no

pre-configure:
	cd ${WRKSRC}/data/ && \
		perl -pi -e 's,X-GNOME-Bugzilla-ExtraInfoScript.*\n,,g' \
		gnome-power-manager.desktop.in.in

.include <bsd.port.mk>
