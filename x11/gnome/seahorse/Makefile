# $OpenBSD: Makefile,v 1.60 2011/09/26 06:44:12 ajacoutot Exp $

COMMENT=		GNOME encryption interface

GNOME_PROJECT=		seahorse
GNOME_VERSION=		3.2.0

CATEGORIES=		security

HOMEPAGE=		http://projects.gnome.org/seahorse/

# GPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm asn1 assuan atk-1.0
WANTLIB += c cairo cairo-gobject com_err crypto dbus-1 drm expat
WANTLIB += ffi fontconfig freetype gck-1 gcr-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring gobject-2.0
WANTLIB += gpg-error gpgme gssapi gthread-2.0 gtk-3 krb5 kvm lber-2.4
WANTLIB += ldap-2.4 m p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs sasl2 soup-2.4
WANTLIB += ssl tasn1 xcb xcb-render xcb-shm xml2 z

LIB_DEPENDS=		databases/openldap \
			x11/gnome/libgnome-keyring>=3.1.92 \
			x11/gnome/keyring>=3.2.0 \
			devel/libsoup \
			security/gpgme

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
			--enable-ssh \
			--disable-update-mime-database

# moved to seahorse-sharing
CONFIGURE_ARGS +=	--disable-sharing

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/seahorse

.include <bsd.port.mk>
