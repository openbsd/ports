# $OpenBSD: Makefile,v 1.45 2011/10/18 14:53:25 sthen Exp $

# XXX Binary files patch-panels_info_hostnames-test_txt and
# patch-panels_info_hostnames-test_txt.new differ
DIFF_ARGS=	-a

SHARED_ONLY=		Yes

COMMENT=		GNOME control center

GNOME_PROJECT=		gnome-control-center
GNOME_VERSION=		3.2.1
REVISION=		0

SHARED_LIBS +=  gnome-control-center      0.0 # 1.0

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xt Xxf86vm asn1 atk-1.0 c cairo cairo-gobject
WANTLIB += canberra canberra-gtk3 crypto cups dbus-1 dbus-glib-1
WANTLIB += drm enchant execinfo expat ffi fontconfig freetype
WANTLIB += gailutil-3 gconf-2 gcrypt gdbm gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3 gnome-keyring
WANTLIB += gnome-menu-3 gnomekbd gnomekbdui goa-1.0 goa-backend-1.0
WANTLIB += gobject-2.0 gpg-error gssapi gstapp-0.10 gstbase-0.10
WANTLIB += gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10
WANTLIB += gthread-2.0 gtk-3 gtop-2.0 icudata icui18n icuuc jpeg
WANTLIB += json-glib-1.0 krb5 kvm ltdl m notify ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png polkit-gobject-1
WANTLIB += pthread pthread-stubs pulse pulse-mainloop-glib rest-0.7
WANTLIB += sndfile soup-2.4 soup-gnome-2.4 sqlite3 ssl stdc++
WANTLIB += vorbis vorbisfile webkitgtk-3.0 xcb xcb-render xcb-shm
WANTLIB += xkbfile xklavier xml2 xslt z javascriptcoregtk-3.0 json

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		x11/gnome/desktop \
			x11/gnome/menus>=3.2.0 \
			x11/gnome/libgnomekbd \
			x11/gnome/online-accounts \
			sysutils/upower \
			devel/libgtop2 \
			print/cups \
			audio/pulseaudio

BUILD_DEPENDS=		x11/gnome/settings-daemon>=3.2.0 \
			devel/gsettings-desktop-schemas>=3.0.2
RUN_DEPENDS=		x11/gnome/settings-daemon>=3.2.0 \
			devel/gsettings-desktop-schemas>=3.0.2

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

# needed for gnome-sound-applet
RUN_DEPENDS+=		x11/gnome/icon-theme-symbolic

# needed for gnome-user-accounts-panel
RUN_DEPENDS+=		sysutils/accountsservice \
			security/apg

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes

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
# * gnome-power-panel needs a fully working gnome-power-manager
#   (userland cannot be made aware of power/button events yet).
# * gnome-wacom-panel needs device detection support and gnome-bluetooth
DISABLED_PLUGINS= media power wacom

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
