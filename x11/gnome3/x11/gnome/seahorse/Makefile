# $OpenBSD: Makefile,v 1.2 2011/07/18 13:45:11 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		GNOME encryption interface

GNOME_PROJECT=		seahorse
GNOME_VERSION=		3.0.2

REVISION=		0

SHARED_LIBS +=	cryptui              1.0      # .0.0

CATEGORIES=		security

HOMEPAGE=		http://projects.gnome.org/seahorse/

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += asn1 atk-1.0 avahi-client avahi-common avahi-glib c
WANTLIB += cairo cairo-gobject com_err crypto dbus-1 dbus-glib-1
WANTLIB += drm expat fontconfig freetype gck gcr-3 gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring
WANTLIB += gobject-2.0 gpg-error gpgme gssapi gthread-2.0 gtk-3
WANTLIB += krb5 lber-2.4 ldap-2.4 m notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sasl2 soup-2.4 ssl tasn1 xcb xcb-render xcb-shm xml2
WANTLIB += z

BUILD_DEPENDS=		devel/gobject-introspection

LIB_DEPENDS=		databases/openldap \
			x11/gnome/libgnome-keyring>=3.0.0 \
			x11/gnome/keyring>=3.0.0 \
			devel/libnotify \
			devel/libsoup \
			security/gpgme \
			net/avahi

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	seahorse

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-introspection \
			--enable-hkp \
			--enable-ldap \
			--enable-libnotify \
			--enable-pkcs11 \
			--enable-pgp \
			--enable-sharing \
			--enable-ssh \
			--disable-update-mime-database \
			--with-gtk=3
USE_GROFF=	Yes

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/seahorse

.include <bsd.port.mk>
