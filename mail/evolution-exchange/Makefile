# $OpenBSD: Makefile,v 1.2 2009/11/17 23:23:07 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Evolution connector for MS Exchange

GNOME_PROJECT=	evolution-exchange
GNOME_VERSION=	2.28.1

CATEGORIES=	mail

EVO_VERSION=	2.28
SUBST_VARS=	EVO_VERSION

HOMEPAGE=	http://projects.gnome.org/evolution/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 asn1 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 c
WANTLIB += cairo camel-1.2 camel-provider-1.2 com_err crypto db
WANTLIB += dbus-1 dbus-glib-1 ebackend-1.2 ebook-1.2 ecal-1.2
WANTLIB += edata-book-1.2 edata-cal-1.2 edataserver-1.2 edataserverui-1.2
WANTLIB += enchant exchange-storage-1.2 execinfo expat fontconfig
WANTLIB += freetype gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2
WANTLIB += gnome-desktop-2 gnome-keyring gnomecanvas-2 gnomeui-2
WANTLIB += gnomevfs-2 gnutls gobject-2.0 gpg-error gssapi gthread-2.0
WANTLIB += gtk-x11-2.0 gtkhtml-3.14 gtkhtml-editor ical icalss
WANTLIB += icalvcal krb5 lber ldap m nspr4 nss3 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png popt pthread
WANTLIB += pthread-stubs sasl2 smime3 softokn3 soup-2.4 sqlite3
WANTLIB += ssl ssl3 startup-notification-1 stdc++ tasn1 util xcb
WANTLIB += xcb-atom xcb-aux xcb-event xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	lib/evolution/${EVO_VERSION}/eshell,lib/evolution/${EVO_VERSION}/etable,lib/evolution/${EVO_VERSION}/etext,lib/evolution/${EVO_VERSION}/evolution-a11y,lib/evolution/${EVO_VERSION}/evolution-widgets-a11y,lib/evolution/${EVO_VERSION}/emiscwidgets,lib/evolution/${EVO_VERSION}/eutil::mail/evolution,-main

USE_X11=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

MODGCONF2_SCHEMAS_DIR= evolution-exchange

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-gtk-doc \
		--with-static-ldap=no \
		--with-openldap=${LOCALBASE} \
		--with-libdb=${LOCALBASE}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	perl -pi -e 's,-lpthread,-pthread,g' ${WRKSRC}/configure

.include <bsd.port.mk>
