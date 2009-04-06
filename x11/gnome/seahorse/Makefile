# $OpenBSD: Makefile,v 1.22 2009/04/06 10:05:21 ajacoutot Exp $

COMMENT=		manage encryption keys

GNOME_PROJECT=		seahorse
GNOME_VERSION=		2.24.1
PKGNAME=		${DISTNAME}p6
SHARED_LIBS +=	cryptui              0.0      # .0.0
CATEGORIES=		security

HOMEPAGE=		http://www.gnome.org/projects/seahorse/

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender asn1 atk-1.0 c cairo \
		com_err crypto dbus-1 dbus-glib-1 expat fontconfig \
		freetype gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-keyring gnutls \
		gobject-2.0 gp11 gpg-error gssapi gthread-2.0 gtk-x11-2.0 \
		krb5 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png pthread sasl2 ssl tasn1 xml2 z

BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		lber,ldap::databases/openldap \
			notify::devel/libnotify \
			soup-2.4::devel/libsoup \
			gpgme::security/gpgme

MODULES=		devel/gettext \
			x11/gnome

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/seahorse \
			--with-gecko=xulrunner \
			--enable-applet \
			--enable-epiphany \
			--enable-gedit \
			--enable-hkp \
			--enable-ldap \
			--enable-nautilus \
			--disable-schemas-install \
			--disable-scrollkeeper \
			--disable-sharing
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
