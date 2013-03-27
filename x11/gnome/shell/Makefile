# $OpenBSD: Makefile,v 1.33 2013/03/27 18:02:21 ajacoutot Exp $

COMMENT=		next generation GNOME shell

GNOME_PROJECT=		gnome-shell
GNOME_VERSION=		3.6.3.1
REVISION=		0

HOMEPAGE=		http://live.gnome.org/GnomeShell

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += asn1 atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += camel-1.2 canberra canberra-gtk3 clutter-1.0 cogl cogl-pango
WANTLIB += com_err croco-0.6 crypto dbus-1 dbus-glib-1 drm
WANTLIB += ecal-1.2 edataserver-1.2 xkbfile xml2 z graphite2
WANTLIB += execinfo expat ffi fontconfig freetype gck-1 gcr-3
WANTLIB += gcr-base-3 gcrypt gdbm gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += girepository-1.0 gjs glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gnome-keyring gnome-menu-3 gobject-2.0 gpg-error gssapi
WANTLIB += gstbase-1.0 gstreamer-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += ical icalss icalvcal icudata icule icuuc json json-glib-1.0
WANTLIB += krb5 ltdl m mozjs185 mutter ncurses nspr4 nss3 nssutil3
WANTLIB += ogg p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 plc4 plds4 png polkit-agent-1 polkit-gobject-1
WANTLIB += pthread pthread-stubs pulse pulse-mainloop-glib smime3
WANTLIB += sndfile softokn3 soup-2.4 sqlite3 ssl3 startup-notification-1
WANTLIB += stdc++ telepathy-glib telepathy-logger vorbis vorbisfile
WANTLIB += xcb xcb-aux xcb-render xcb-shm FLAC Xtst vorbisenc

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		goi

# man pages
BUILD_DEPENDS += textproc/docbook-xsl

# gnome-keybindings.pc
BUILD_DEPENDS += x11/gnome/controlcenter

LIB_DEPENDS=		audio/pulseaudio>=2.1 \
			databases/evolution-data-server>=3.6.0p3 \
			multimedia/gstreamer1/core \
			net/telepathy/telepathy-logger \
			sysutils/polkit \
			www/libcroco \
			x11/gnome/desktop \
			x11/gnome/gcr \
			x11/gnome/gjs \
			x11/gnome/menus \
			x11/gnome/mutter>=3.6.1
RUN_DEPENDS=		devel/py-gobject3 \
			x11/gnome/caribou

# Don't depend on evolution to lower down the amount of dependencies and
# because most users want to be able to choose their PIM. Evolution can
# be installed separately or as part of the "gnome-extra" meta-package.
#RUN_DEPENDS +=		mail/evolution

# yelp.desktop menu entry (from yelp: OnlyShowIn=GNOME;)
RUN_DEPENDS +=		x11/gnome/user-docs

# add required introspection libs that are not in the dependency chain
RUN_DEPENDS +=		inputmethods/ibus \
			x11/gnome/gdm

MODGNOME_DESKTOP_FILE=	Yes

LIBTOOL_FLAGS= 		--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-static \
			--without-systemd

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.11
BUILD_DEPENDS +=	${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS} \
			devel/libtool \
			x11/gnome/common

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal -I m4
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoconf
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoheader
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake

post-install:
	rm ${PREFIX}/lib/gnome-shell/*.la
	rm ${PREFIX}/lib/mozilla/plugins/*.la

.include <bsd.port.mk>
