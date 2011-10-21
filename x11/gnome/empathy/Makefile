# $OpenBSD: Makefile,v 1.80 2011/10/21 10:59:44 jasper Exp $

COMMENT= 		telepathy based messenger for GNOME

GNOME_PROJECT=		empathy
GNOME_VERSION=		3.2.1
REVISION=		1

CATEGORIES=		net

HOMEPAGE=		http://live.gnome.org/Empathy

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm
WANTLIB += asn1 atk-1.0 c cairo cairo-gobject camel-1.2 canberra
WANTLIB += canberra-gtk3 com_err crypto dbus-1 dbus-glib-1 drm
WANTLIB += ebook-1.2 edataserver-1.2 enchant execinfo expat ffi
WANTLIB += folks folks-telepathy fontconfig freetype gailutil-3
WANTLIB += gck-1 gconf-2 gcr-3 gcrypt gdbm gdk-3 gdk_pixbuf-2.0
WANTLIB += gee geoclue gio-2.0 glib-2.0 gmodule-2.0 gmp gnome-keyring
WANTLIB += gnutls goa-1.0 gobject-2.0 gpg-error gssapi gstapp-0.10
WANTLIB += gstbase-0.10 gstfarsight-0.10 gstinterfaces-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gstvideo-0.10 gthread-2.0 gtk-3 hogweed
WANTLIB += icudata icui18n icuuc javascriptcoregtk-3.0 jpeg json
WANTLIB += krb5 ltdl m mission-control-plugins nettle notify nspr4
WANTLIB += nss3 ogg p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += pulse pulse-mainloop-glib smime3 sndfile softokn3 soup-2.4
WANTLIB += sqlite3 ssl3 stdc++ tasn1 telepathy-farsight telepathy-glib
WANTLIB += telepathy-logger vorbis vorbisfile webkitgtk-3.0 xcb
WANTLIB += xcb-render xcb-shm xml2 xslt z

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
			net/telepathy/folks>=0.6.3.2p0 \
			net/telepathy/telepathy-farsight \
			net/telepathy/telepathy-logger>=0.2.10 \
			textproc/enchant \
			x11/gnome/keyring \
			x11/gnome/online-accounts
RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes \
			net/telepathy/telepathy-mission-control \
			net/telepathy/telepathy-gabble \
			net/telepathy/telepathy-idle \
			net/telepathy/telepathy-salut \
			x11/gnome/icon-theme>=2.30.3
# XXX: need to address "Disconnected, network error" first.
#RUN_DEPENDS+=		net/telepathy/telepathy-butterfly

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS= 	yelp

CONFIGURE_ARGS+=	--enable-spell=Yes \
			--enable-location=Yes \
			--enable-control-center-embedding=no \
			--with-eds \
			--with-ca-file=/etc/ssl/cert.pem \
			--disable-Werror \
			--enable-goa

# needs connman or network-manager
CONFIGURE_ARGS+=	--with-connectivity=no

# XXX: Disable map plugin as this requires libchamplain (+clutter)
CONFIGURE_ARGS+=	--enable-map=no
# XXX: Disable call plugin as this requires a newer clutter
CONFIGURE_ARGS+=	--enable-call=no
# XXX lots of 'libnstempathy.so: undefined symbol' at runtime
# revisit when telepathy-yell is moved out from empathy(?)
CONFIGURE_ARGS+=	--disable-nautilus-sendto

USE_GROFF=		Yes

FAKE_FLAGS+=		pkgdatadir=${PREFIX}/share/

.include <bsd.port.mk>
