# $OpenBSD: Makefile,v 1.93 2012/04/12 18:00:14 ajacoutot Exp $

COMMENT= 		Telepathy based messenger for GNOME

GNOME_PROJECT=		empathy
GNOME_VERSION=		3.2.2
REVISION=		4

CATEGORIES=		net

HOMEPAGE=		http://live.gnome.org/Empathy

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm asn1
WANTLIB += atk-1.0 c cairo cairo-gobject camel-1.2 canberra canberra-gtk3
WANTLIB += com_err crypto dbus-1 dbus-glib-1 drm ebook-1.2 edataserver-1.2
WANTLIB += enchant execinfo expat ffi folks folks-telepathy fontconfig
WANTLIB += freetype gailutil-3 gck-1 gconf-2 gcr-3 gcr-base-3
WANTLIB += gcrypt gdbm gdk-3 gdk_pixbuf-2.0 gee geoclue gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gnome-keyring gnutls goa-1.0
WANTLIB += gobject-2.0 gpg-error gssapi gstapp-0.10 gstaudio-0.10
WANTLIB += gstbase-0.10 gstfft-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += gtk-3 hogweed icudata icui18n icuuc javascriptcoregtk-3.0
WANTLIB += jpeg json krb5 ltdl m mission-control-plugins nettle
WANTLIB += notify nspr4 nss3 ogg orc-0.4 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += pulse pulse-mainloop-glib smime3 sndfile softokn3 soup-2.4
WANTLIB += sqlite3 ssl3 stdc++ tasn1 telepathy-farstream telepathy-glib
WANTLIB += telepathy-logger vorbis vorbisfile webkitgtk-3.0 xcb
WANTLIB += xcb-render xcb-shm xml2 xslt z farstream-0.1

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes
#XXX see below		x11/gnome/nautilus-sendto
LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			audio/pulseaudio \
			geo/geoclue \
			net/telepathy/folks \
			net/telepathy/telepathy-farstream \
			net/telepathy/telepathy-logger \
			textproc/enchant \
			x11/gnome/gcr \
			x11/gnome/online-accounts
RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes \
			net/telepathy/telepathy-mission-control \
			net/telepathy/telepathy-gabble \
			net/telepathy/telepathy-idle \
			net/telepathy/telepathy-salut \
			x11/gnome/icon-theme

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS= 	yelp

AUTOCONF_VERSION=	2.67

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	--enable-spell \
			--enable-location \
			--enable-goa \
			--disable-control-center-embedding \
			--disable-geocode \
			--disable-gudev \
			--disable-Werror \
			--with-eds \
			--with-ca-file=/etc/ssl/cert.pem \
			--without-cheese

# needs connman or network-manager
CONFIGURE_ARGS+=	--without-connectivity

# XXX: Disable map plugin as this requires libchamplain (+clutter)
CONFIGURE_ARGS+=	--disable-map
# XXX: Disable call plugin as this requires a newer clutter
CONFIGURE_ARGS+=	--disable-call \
			--disable-call-logs
# XXX lots of 'libnstempathy.so: undefined symbol' at runtime
# revisit when telepathy-yell is moved out from empathy(?)
CONFIGURE_ARGS+=	--disable-nautilus-sendto

USE_GROFF=		Yes

.include <bsd.port.mk>
