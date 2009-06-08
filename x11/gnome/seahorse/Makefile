# $OpenBSD: Makefile,v 1.26 2009/06/08 17:59:15 ajacoutot Exp $

COMMENT=		manage encryption keys

GNOME_PROJECT=		seahorse
GNOME_VERSION=		2.24.1
PKGNAME=		${DISTNAME}p9
SHARED_LIBS +=	cryptui              0.0      # .0.0
CATEGORIES=		security

HOMEPAGE=		http://www.gnome.org/projects/seahorse/

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender asn1 atk-1.0 avahi-client
WANTLIB += avahi-common avahi-glib c cairo com_err crypto dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gcrypt
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnome-keyring gnutls gobject-2.0
WANTLIB += gp11 gpg-error gssapi gthread-2.0 gtk-x11-2.0 krb5
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread sasl2 ssl tasn1 xml2 z

BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		lber,ldap::databases/openldap \
			notify::devel/libnotify \
			soup-2.4::devel/libsoup \
			gpgme::security/gpgme

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	seahorse

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gecko=xulrunner \
			--enable-applet \
			--enable-epiphany \
			--enable-gedit \
			--enable-hkp \
			--enable-ldap \
			--enable-nautilus \
			--enable-sharing \
			--disable-scrollkeeper
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
