# $OpenBSD: Makefile,v 1.58 2011/09/20 21:10:01 jasper Exp $

COMMENT=		GNOME encryption interface

GNOME_PROJECT=		seahorse
GNOME_VERSION=		3.1.92

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
WANTLIB += com_err crypto dbus-1 drm expat fontconfig freetype
WANTLIB += gck-1 gcr-3 gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-keyring gobject-2.0 gpg-error gpgme
WANTLIB += gssapi gthread-2.0 gtk-3 krb5 lber-2.4 ldap-2.4 m p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs sasl2 soup-2.4 ssl tasn1
WANTLIB += xcb xcb-render xcb-shm xml2 z

LIB_DEPENDS=		databases/openldap \
			x11/gnome/libgnome-keyring>=3.1.92 \
			x11/gnome/keyring>=3.1.92 \
			devel/libsoup \
			security/gpgme \
			net/avahi

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=		Yes

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=		--enable-hkp \
			--enable-ldap \
			--enable-pkcs11 \
			--enable-pgp \
			--enable-sharing \
			--enable-ssh \
			--disable-update-mime-database

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/seahorse

.include <bsd.port.mk>
