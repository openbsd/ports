# $OpenBSD: Makefile,v 1.31 2009/10/18 17:43:55 ajacoutot Exp $

COMMENT=		manage encryption keys

GNOME_PROJECT=		seahorse
GNOME_VERSION=		2.28.1

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
WANTLIB += glib-2.0 glitz gmodule-2.0 gnutls gobject-2.0 gpg-error
WANTLIB += gssapi gthread-2.0 gtk-x11-2.0 krb5 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sasl2 ssl tasn1 xcb xml2 z

LIB_DEPENDS=		lber,ldap::databases/openldap \
			notify::devel/libnotify \
			soup-2.4::devel/libsoup \
			gpgme::security/gpgme \
			gcr,gnome-keyring.>=5,gp11::x11/gnome/keyring \
			avahi-client,avahi-common,avahi-glib::net/avahi

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	seahorse

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-hkp \
			--enable-ldap \
			--enable-sharing \
			--disable-scrollkeeper \
			--disable-update-mime-database
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/seahorse

.include <bsd.port.mk>
