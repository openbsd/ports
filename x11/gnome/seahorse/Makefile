# $OpenBSD: Makefile,v 1.44 2010/10/26 14:53:05 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		manage encryption keys

GNOME_PROJECT=		seahorse
GNOME_VERSION=		2.32.0
REVISION=		1

SHARED_LIBS +=	cryptui              1.0      # .0.0

CATEGORIES=		security

HOMEPAGE=		http://projects.gnome.org/seahorse/

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender asn1 atk-1.0
WANTLIB += c cairo com_err crypto dbus-1 dbus-glib-1 expat fontconfig
WANTLIB += freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnutls gobject-2.0 gpg-error
WANTLIB += gssapi gthread-2.0 gtk-x11-2.0 krb5 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sasl2 ssl tasn1 xcb xml2 z xcb-render xcb-render-util
WANTLIB += lber-2.3 ldap-2.3 notify soup-2.4 gpgme gnome-keyring.>=6 gcr.>=1
WANTLIB += gp11 avahi-client avahi-common avahi-glib

LIB_DEPENDS=		::databases/openldap \
			::devel/libnotify \
			::devel/libsoup \
			::security/gpgme \
			:libgnome-keyring-*:x11/gnome/libgnome-keyring \
			:gnome-keyring->=2.30.0:x11/gnome/keyring \
			::net/avahi

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	seahorse

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--disable-introspection \
			--enable-hkp \
			--enable-ldap \
			--enable-pgp \
			--enable-sharing \
			--disable-update-mime-database
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =	Yes

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/seahorse

.include <bsd.port.mk>
