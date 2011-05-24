# $OpenBSD: Makefile,v 1.4 2011/05/24 18:14:52 ajacoutot Exp $

COMMENT=		GNOME power manager

GNOME_PROJECT=		gnome-power-manager
GNOME_VERSION=		2.32.0
REVISION=		2

HOMEPAGE=		http://projects.gnome.org/gnome-power-manager/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gconf2 \
		devel/gettext \
		x11/gnome

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	gnome-power-manager

LIB_DEPENDS=	devel/libunique \
		sysutils/upower \
		devel/libnotify \
		x11/gnome/panel \
		x11/gnome/libgnome

WANTLIB += GL ICE ORBit-2 ORBitCosNaming-2 SM X11 XRes Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xxf86vm art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 c cairo canberra canberra-gtk crypto dbus-1
WANTLIB += dbus-glib-1 drm execinfo expat fontconfig freetype
WANTLIB += gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2
WANTLIB += gnomevfs-2 gobject-2.0 gpg-error gthread-2.0 gtk-x11-2.0
WANTLIB += ltdl m notify ogg panel-applet-2 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png popt pthread pthread-stubs
WANTLIB += ssl startup-notification-1 unique-1.0 upower-glib util
WANTLIB += vorbis vorbisfile wnck-1 xcb xcb-atom xcb-aux xcb-event
WANTLIB += xcb-render xcb-shm xml2 z

FAKE_FLAGS=	autostartdir=${PREFIX}/share/examples/gnome-power-manager/xdg/autostart \
		schemadir=${PREFIX}/${SCHEMAS_INSTDIR} \
		script_SCRIPTS=""

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			ac_cv_path_DOCBOOK2MAN=no \
			ac_cv_path_XMLTO=no

pre-configure:
	cd ${WRKSRC}/data/ && \
		perl -pi -e 's,X-GNOME-Bugzilla-ExtraInfoScript.*\n,,g' \
		gnome-power-{manager,preferences}.desktop.in.in

.include <bsd.port.mk>
