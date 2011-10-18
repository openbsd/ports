# $OpenBSD: Makefile,v 1.64 2011/10/18 06:22:04 ajacoutot Exp $

COMMENT=		GNOME encryption interface

GNOME_PROJECT=		seahorse
GNOME_VERSION=		3.2.1

CATEGORIES=		security

HOMEPAGE=		http://projects.gnome.org/seahorse/

# GPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm asn1 assuan atk-1.0
WANTLIB += avahi-client avahi-common avahi-glib c cairo cairo-gobject
WANTLIB += com_err crypto dbus-1 drm expat ffi fontconfig freetype
WANTLIB += gck-1 gcr-3 gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-keyring gobject-2.0 gpg-error gpgme
WANTLIB += gssapi gthread-2.0 gtk-3 krb5 lber-2.4 ldap-2.4
WANTLIB += m p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs sasl2 soup-2.4 ssl
WANTLIB += tasn1 xcb xcb-render xcb-shm xml2 z

LIB_DEPENDS=		databases/openldap \
			x11/gnome/libgnome-keyring>=3.1.92 \
			x11/gnome/keyring>=3.2.0 \
			devel/libsoup \
			security/gpgme \
			net/avahi

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes

CONFIGURE_ARGS=		--enable-hkp \
			--enable-ldap \
			--enable-pkcs11 \
			--enable-pgp \
			--enable-ssh \
			--enable-sharing \
			--disable-update-mime-database

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/seahorse

.include <bsd.port.mk>
