# $OpenBSD: Makefile,v 1.37 2013/03/30 15:18:58 ajacoutot Exp $

COMMENT=		next generation GNOME shell

GNOME_PROJECT=		gnome-shell
GNOME_VERSION=		3.8.0.1
REVISION=		2

HOMEPAGE=		http://live.gnome.org/GnomeShell

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xtst asn1
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += camel-1.2 canberra canberra-gtk3 clutter-1.0 cogl cogl-pango
WANTLIB += com_err croco-0.6 crypto dbus-1 dbus-glib-1 ecal-1.2
WANTLIB += edataserver-1.2 execinfo expat ffi fontconfig freetype
WANTLIB += gck-1 gcr-3 gcr-base-3 gcrypt gdbm gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 gjs glib-2.0 gmodule-2.0 gnome-menu-3
WANTLIB += gobject-2.0 gpg-error graphite2 gssapi gstbase-1.0
WANTLIB += gstreamer-1.0 gthread-2.0 gtk-3 harfbuzz ical icalss
WANTLIB += icalvcal icudata icule icuuc json json-glib-1.0 krb5
WANTLIB += ltdl m mozjs185 mutter ncurses ncursesw nspr4 nss3
WANTLIB += nssutil3 ogg p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png polkit-agent-1 polkit-gobject-1
WANTLIB += pthread pthread-stubs pulse pulse-mainloop-glib readline
WANTLIB += secret-1 smime3 sndfile softokn3 soup-2.4 sqlite3 ssl3
WANTLIB += startup-notification-1 stdc++ telepathy-glib vorbis
WANTLIB += vorbisenc vorbisfile xcb xcb-aux xcb-render xcb-shm
WANTLIB += xml2 z

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		goi

# man pages
BUILD_DEPENDS += textproc/docbook-xsl

# gnome-keybindings.pc
BUILD_DEPENDS += x11/gnome/controlcenter

# onscreen keyboard
BUILD_DEPENDS +=	x11/gnome/caribou

LIB_DEPENDS=		audio/pulseaudio>=2.1 \
			databases/evolution-data-server>=3.6.0p3 \
			multimedia/gstreamer1/core \
			net/telepathy/telepathy-glib \
			sysutils/polkit \
			www/libcroco \
			x11/gnome/gcr \
			x11/gnome/gjs \
			x11/gnome/menus \
			x11/gnome/mutter>=3.6.1
RUN_DEPENDS=		devel/py-gobject3 \
			x11/gnome/caribou

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

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
