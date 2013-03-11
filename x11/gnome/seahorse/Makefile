# $OpenBSD: Makefile,v 1.79 2013/03/11 11:46:12 espie Exp $

COMMENT=		GNOME encryption interface

GNOME_PROJECT=		seahorse
GNOME_VERSION=		3.6.3

CATEGORIES=		security

HOMEPAGE=		http://projects.gnome.org/seahorse/

# GPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm asn1 assuan atk-1.0
WANTLIB += avahi-client avahi-common avahi-glib c cairo cairo-gobject
WANTLIB += com_err crypto dbus-1 drm expat ffi fontconfig freetype
WANTLIB += gck-1 gcr-3 gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error gpgme icuuc secret-1
WANTLIB += gssapi gthread-2.0 gtk-3 krb5 lber-2.4 ldap-2.4
WANTLIB += m p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs sasl2 soup-2.4 ssl
WANTLIB += xcb xcb-render xcb-shm xml2 z stdc++ gcr-base-3
WANTLIB += ICE SM atk-bridge-2.0 atspi harfbuzz icudata icule

LIB_DEPENDS=		databases/openldap \
			x11/gnome/gcr>=3.6.0 \
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

.include <bsd.port.mk>
