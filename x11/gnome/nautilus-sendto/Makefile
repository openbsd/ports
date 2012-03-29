# $OpenBSD: Makefile,v 1.40 2012/03/29 07:10:32 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	applications integration into Nautilus

GNOME_PROJECT=	nautilus-sendto
GNOME_VERSION=	3.0.2

CATEGORIES=	misc net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm asn1 atk-1.0 c cairo
WANTLIB += cairo-gobject camel-1.2 com_err crypto dbus-1 dbus-glib-1
WANTLIB += drm e2fs-uuid ebook-1.2 ecal-1.2 edataserver-1.2 edataserverui-3.0
WANTLIB += expat ffi fontconfig freetype gconf-2 gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring
WANTLIB += gobject-2.0 gpg-error gssapi gssdp-1.0 gthread-2.0
WANTLIB += gtk-3 gupnp-1.0 ical icalss icalvcal krb5 m nspr4 nss3
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png pthread pthread-stubs smime3 softokn3
WANTLIB += soup-2.4 sqlite3 ssl3 stdc++ xcb xcb-render xcb-shm
WANTLIB += xml2 z

BUILD_DEPENDS=	net/gajim \
		x11/gnome/nautilus
RUN_DEPENDS=	archivers/zip \
		archivers/bzip2 \
		x11/gnome/nautilus
LIB_DEPENDS=	databases/evolution-data-server \
		net/gupnp/core

CONFIGURE_ARGS+= --with-gajim=${LOCALBASE}

LIBTOOL_FLAGS=	--tag=disable-static

# --with-plugins=all ; empathy comes with its own nautilus-sendto plugin
# allowed_plugins="evolution gajim nautilus-burn pidgin removable-devices upnp"
CONFIGURE_ARGS+= --with-plugins="evolution gajim pidgin removable-devices upnp"

FAKE_FLAGS=	schemadir=${PREFIX}/share/schemas/nautilus-sendto

# Remove these files as they are provided by nautilus itself now.
post-install:
	rm ${PREFIX}/lib/nautilus/extensions-3.0/libnautilus-sendto.*

.include <bsd.port.mk>
