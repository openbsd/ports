# $OpenBSD: Makefile,v 1.92 2014/02/20 10:12:32 ajacoutot Exp $

COMMENT=		GNOME encryption interface

GNOME_PROJECT=		seahorse
GNOME_VERSION=		3.10.2
REVISION=		0

CATEGORIES=		security

# GPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender asn1 assuan atk-1.0
WANTLIB += atk-bridge-2.0 atspi avahi-client avahi-common avahi-glib
WANTLIB += c cairo cairo-gobject com_err crypto dbus-1 expat ffi
WANTLIB += fontconfig freetype gck-1 gcr-3 gcr-base-3 gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error gpgme graphite2 gssapi gthread-2.0 gtk-3
WANTLIB += harfbuzz heimbase krb5 lber-2.4 ldap-2.4 m p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs roken sasl2 secret-1 soup-2.4
WANTLIB += sqlite3 ssl stdc++ wind xcb xcb-render xcb-shm xml2
WANTLIB += z

LIB_DEPENDS=		databases/openldap \
			x11/gnome/gcr \
			x11/gnome/libsecret \
			devel/libsoup \
			security/gpgme \
			net/avahi

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

MODGNOME_TOOLS= 	yelp
MODGNOME_ICON_CACHE=	Yes
MODGNOME_DESKTOP_FILE=	Yes

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/seahorse

### patch-common_config_vapi
MODGNOME_TOOLS +=	vala
pre-configure:
	rm ${WRKSRC}/common/*.c

.include <bsd.port.mk>
