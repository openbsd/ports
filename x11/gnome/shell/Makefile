# $OpenBSD: Makefile,v 1.13 2012/09/30 14:45:23 jasper Exp $

COMMENT=		next generation GNOME shell

GNOME_PROJECT=		gnome-shell
GNOME_VERSION=		3.6.0

HOMEPAGE=		http://live.gnome.org/GnomeShell

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += asn1 atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += canberra canberra-gtk3 clutter-1.0 cogl cogl-pango
WANTLIB += com_err croco-0.6 crypto dbus-1 dbus-glib-1 drm execinfo
WANTLIB += expat ffi fontconfig freetype gck-1 gcr-3 gcr-base-3
WANTLIB += gcrypt gdbm gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += gjs glib-2.0 gmodule-2.0 gnome-keyring gnome-menu-3
WANTLIB += gobject-2.0 gpg-error gssapi gthread-2.0 gtk-3 harfbuzz
WANTLIB += icudata icule icuuc json json-glib-1.0 krb5 ltdl m
WANTLIB += mozjs185 mutter ncurses nspr4 ogg p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png polkit-agent-1 polkit-gobject-1 pthread pthread-stubs
WANTLIB += pulse pulse-mainloop-glib sndfile soup-2.4 sqlite3
WANTLIB += startup-notification-1 stdc++ telepathy-glib telepathy-logger
WANTLIB += vorbis vorbisfile xcb xcb-aux xcb-render xcb-shm xkbfile
WANTLIB += xml2 z

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		goi

LIB_DEPENDS=		audio/pulseaudio \
			net/telepathy/telepathy-logger \
			sysutils/polkit \
			www/libcroco \
			x11/gnome/gcr \
			x11/gnome/gjs \
			x11/gnome/menus \
			x11/gnome/mutter
RUN_DEPENDS=		devel/py-gobject3 \
			x11/dbus-python \
			x11/gnome/caribou

# Don't depend on evolution to lower down the amount of dependencies and
# because most users want to be able to choose their PIM. Evolution can
# be installed separately or as part of the "gnome-extra" meta-package.
#RUN_DEPENDS +=		mail/evolution

MODGNOME_DESKTOP_FILE=	Yes

LIBTOOL_FLAGS= 		--tag=disable-static

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--disable-static \
			--with-ca-certificates=/etc/ssl/cert.pem \
			--without-systemd

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.11
BUILD_DEPENDS +=	devel/autoconf/${AUTOCONF_VERSION} \
			devel/automake/${AUTOMAKE_VERSION} \
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
