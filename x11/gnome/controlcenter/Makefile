# $OpenBSD: Makefile,v 1.57 2012/02/16 22:25:47 ajacoutot Exp $

# XXX Binary files patch-panels_info_hostnames-test_txt and
# patch-panels_info_hostnames-test_txt.new differ
DIFF_ARGS=	-a

SHARED_ONLY=		Yes

COMMENT=		GNOME control center

GNOME_PROJECT=		gnome-control-center
GNOME_VERSION=		3.2.2

REVISION=		3

SHARED_LIBS +=  gnome-control-center      0.0 # 1.0

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm asn1
WANTLIB += atk-1.0 c cairo cairo-gobject canberra canberra-gtk3
WANTLIB += colord crypto cups dbus-1 dbus-glib-1 drm enchant execinfo
WANTLIB += expat ffi fontconfig freetype gailutil-3 gconf-2 gcrypt
WANTLIB += gdbm gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 gnome-keyring gnome-menu-3 gnomekbd
WANTLIB += gnomekbdui goa-1.0 goa-backend-1.0 gobject-2.0 gpg-error
WANTLIB += gssapi gstapp-0.10 gstbase-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += gtk-3 gtop-2.0 icudata icui18n icuuc javascriptcoregtk-3.0
WANTLIB += jpeg json json-glib-1.0 krb5 kvm ltdl m notify ogg
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png polkit-gobject-1 pthread pthread-stubs pulse pulse-mainloop-glib
WANTLIB += rest-0.7 sndfile soup-2.4 soup-gnome-2.4 sqlite3 ssl
WANTLIB += stdc++ upower-glib vorbis vorbisfile webkitgtk-3.0
WANTLIB += xcb xcb-render xcb-shm xkbfile xklavier xml2 xslt z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		x11/gnome/desktop \
			x11/gnome/menus>=3.2.0 \
			x11/gnome/libgnomekbd \
			x11/gnome/online-accounts \
			sysutils/upower \
			devel/libgtop2 \
			print/cups \
			audio/pulseaudio \
			graphics/colord

BUILD_DEPENDS=		x11/gnome/settings-daemon>=3.2.0p1 \
			devel/gsettings-desktop-schemas>=3.0.2
RUN_DEPENDS=		x11/gnome/settings-daemon>=3.2.0p1 \
			devel/gsettings-desktop-schemas>=3.0.2

# NOTE that a11y dependencies (e.g. mousetweaks, caribou...) are not
# enforced on purpose.

# needed for gnome-color-panel
RUN_DEPENDS+=		x11/gnome/color-manager

# needed for gnome-power-panel+gnome-screen-panel
RUN_DEPENDS+=		x11/gnome/power-manager

# needed for gnome-printers-panel
RUN_DEPENDS+=		print/cups-pk-helper

# needed for gnome-screen-panel
RUN_DEPENDS+=		x11/gnome/screensaver

# needed for gnome-sound-applet
RUN_DEPENDS+=		x11/gnome/icon-theme-symbolic

# needed for gnome-user-accounts-panel
RUN_DEPENDS+=		sysutils/accountsservice \
			security/apg

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

# Language code is synced with gdm but gnome-control-center does not
# provide a --with-incomplete-locales configure switch.
CFLAGS +=       -DWITH_INCOMPLETE_LOCALES

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static \
		--disable-update-mimedb \
		--without-cheese \
		--enable-cups

# Disable libsocialweb support until Flickr integration is fixed upstream.
CONFIGURE_ARGS+=--without-libsocialweb

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/gnome-control-center \
		pkgconfigdir=${PREFIX}/lib/pkgconfig/

# XXX plugins that are not fully working yet:
# * gnome-media-panel needs udev to take appropriate action on device
#   plug (see patch-schemas_org_gnome_desktop_media-handling_gschema_xml_in_in
#   in devel/gsettings-desktop-schemas).
# * gnome-wacom-panel needs device detection support and gnome-bluetooth
DISABLED_PLUGINS= media wacom

pre-configure:
	${SUBST_CMD} ${WRKSRC}/panels/printers/cc-printers-panel.c

post-install:
.for i in ${DISABLED_PLUGINS}
	cd ${PREFIX} && \
		rm lib/control-center-1/panels/lib$i* ;\
		rm share/applications/gnome-$i-panel.desktop ;\
		rm share/gnome-control-center/ui/*$i*.ui
.endfor

.include <bsd.port.mk>
