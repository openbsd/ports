# $OpenBSD: Makefile,v 1.34 2011/09/20 21:10:01 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	applications integration into Nautilus

GNOME_PROJECT=	nautilus-sendto
GNOME_VERSION=	3.0.0
REVISION=	0

CATEGORIES=	misc net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm asn1
WANTLIB += atk-1.0 c cairo cairo-gobject camel-1.2 com_err crypto
WANTLIB += dbus-1 dbus-glib-1 drm e2fs-uuid ebook-1.2 edataserver-1.2
WANTLIB += expat fontconfig freetype gconf-2 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssapi gssdp-1.0
WANTLIB += gthread-2.0 gtk-3 gupnp-1.0 krb5 m nspr4 nss3 nssutil3
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png pthread pthread-stubs smime3 soup-2.4
WANTLIB += sqlite3 ssl3 xcb xcb-render xcb-shm xml2 z

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

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =	Yes

FAKE_FLAGS=	schemadir=${PREFIX}/share/schemas/nautilus-sendto

# Remove these files as they are provided by nautilus itself now.
post-install:
	rm ${PREFIX}/lib/nautilus/extensions-3.0/libnautilus-sendto.*

.include <bsd.port.mk>
