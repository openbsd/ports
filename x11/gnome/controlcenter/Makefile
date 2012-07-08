# $OpenBSD: Makefile,v 1.69 2012/07/08 11:19:23 ajacoutot Exp $

# XXX Binary files patch-panels_info_hostnames-test_txt and
# patch-panels_info_hostnames-test_txt.new differ
DIFF_ARGS=	-a

SHARED_ONLY=		Yes

COMMENT=		GNOME control center

GNOME_PROJECT=		gnome-control-center
GNOME_VERSION=		3.4.2
REVISION=		4

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
WANTLIB += expat ffi fontconfig freetype gailutil-3 gcrypt gdbm
WANTLIB += gdk-3 gdk_pixbuf-2.0 geoclue gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 gnome-keyring gnome-menu-3 gnomekbd
WANTLIB += gnomekbdui goa-1.0 goa-backend-1.0 gobject-2.0 gpg-error
WANTLIB += gssapi gstapp-0.10 gstaudio-0.10 gstbase-0.10 gstfft-0.10
WANTLIB += gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10
WANTLIB += gthread-2.0 gtk-3 gtop-2.0 icudata icui18n icuuc javascriptcoregtk-3.0
WANTLIB += jpeg json json-glib-1.0 krb5 kvm ltdl m notify ogg
WANTLIB += orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png polkit-gobject-1 pthread pthread-stubs
WANTLIB += pulse pulse-mainloop-glib rest-0.7 sndfile soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 ssl stdc++ upower-glib vorbis
WANTLIB += vorbisfile webkitgtk-3.0 xcb xcb-render xcb-shm xkbfile
WANTLIB += xklavier xml2 xslt z lcms2

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
			audio/libcanberra,-gtk3 \
			graphics/colord

BUILD_DEPENDS=		x11/gnome/settings-daemon>=3.4.2 \
			devel/iso-codes \
			devel/gsettings-desktop-schemas
RUN_DEPENDS=		x11/gnome/settings-daemon>=3.4.2 \
			devel/iso-codes \
			devel/gsettings-desktop-schemas

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

# share/polkit-1/actions/org.gnome.controlcenter.datetime.policy
RUN_DEPENDS +=  sysutils/polkit

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

# Language code is synced with gdm but gnome-control-center does not
# provide a --with-incomplete-locales configure switch.
CFLAGS +=       -DWITH_INCOMPLETE_LOCALES

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static \
		--disable-update-mimedb \
		--disable-systemd \
		--without-cheese \
		--with-x \
		--enable-cups

# Disable libsocialweb support until Flickr integration is fixed upstream.
CONFIGURE_ARGS+=--without-libsocialweb

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib -Wl,-rpath,${LOCALBASE}/lib/pulseaudio

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/gnome-control-center

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.11
BUILD_DEPENDS +=devel/autoconf/${AUTOCONF_VERSION} \
		devel/automake/${AUTOMAKE_VERSION} \
		devel/libtool \
		x11/gnome/common

pre-configure:
	@cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i
	${SUBST_CMD} ${WRKSRC}/panels/printers/cc-printers-panel.c

.include <bsd.port.mk>
