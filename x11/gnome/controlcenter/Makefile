# $OpenBSD: Makefile,v 1.33 2011/09/20 21:10:00 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		GNOME control center

GNOME_PROJECT=		gnome-control-center
GNOME_VERSION=		3.0.2
REVISION=		1

SHARED_LIBS +=  gnome-control-center      0.0 # 1.0

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ORBit-2 X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += asn1 atk-1.0 c cairo cairo-gobject crypto cups dbus-1
WANTLIB += dbus-glib-1 drm execinfo expat fontconfig freetype
WANTLIB += gconf-2 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 gnome-menu gnomekbd gnomekbdui gobject-2.0
WANTLIB += gssapi gthread-2.0 gtk-3 gtop-2.0 krb5 kvm m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png polkit-gobject-1
WANTLIB += pthread pthread-stubs ssl startup-notification-1 xcb
WANTLIB += xcb-aux xcb-render xcb-shm xkbfile xklavier xml2 z

EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		x11/gnome/desktop \
			x11/gnome/menus \
			x11/gnome/libgnomekbd \
			sysutils/upower \
			devel/libgtop2 \
			print/cups

BUILD_DEPENDS=		x11/gnome/settings-daemon \
			devel/gsettings-desktop-schemas
RUN_DEPENDS=		x11/gnome/settings-daemon \
			devel/gsettings-desktop-schemas

# NOTE that a11y dependencies (e.g. mousetweaks, caribou...) are not
# enforced on purpose.

# needed for gnome-power-panel+gnome-screen-panel
RUN_DEPENDS+=		x11/gnome/power-manager

# needed for gnome-printers-panel
# (and it would make no sense not to have gtk+3-cups in this case)
RUN_DEPENDS+=		print/cups-pk-helper \
			x11/gtk+3,-cups

# needed for gnome-screen-panel
RUN_DEPENDS+=		x11/gnome/screensaver

# needed for gnome-user-accounts-panel
RUN_DEPENDS+=		sysutils/accountsservice \
			security/apg

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=		Yes

# Language code is synced with gdm but gnome-control-center does not
# provide a --with-incomplete-locales configure switch.
CFLAGS +=       -DWITH_INCOMPLETE_LOCALES

CONFIGURE_ARGS=	--disable-update-mimedb \
		--without-cheese \
		--enable-cups

# Disable libsocialweb support until Flickr integration is fixed upstream.
CONFIGURE_ARGS+=--without-libsocialweb

CONFIGURE_ENV= 	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/gnome-control-center \
		pkgconfigdir=${PREFIX}/lib/pkgconfig/

# Plugins that are not fully working yet:
# * gnome-media-panel needs udev to take appropriate action on device
#   plug (see patch-schemas_org_gnome_desktop_media-handling_gschema_xml_in_in
#   in devel/gsettings-desktop-schemas).
# * gnome-power-panel needs a fully working gnome-power-manager
#   (userland cannot be made aware of power/button events yet).
DISABLED_PLUGINS= media power

pre-configure:
	${SUBST_CMD} ${WRKSRC}/panels/printers/cc-printers-panel.c

post-install:
.for i in ${DISABLED_PLUGINS}
	cd ${PREFIX} && \
		rm lib/control-center-1/panels/lib$i.* ;\
		rm share/applications/gnome-$i-panel.desktop ;\
		rm share/gnome-control-center/ui/*$i*.ui
.endfor

.include <bsd.port.mk>
