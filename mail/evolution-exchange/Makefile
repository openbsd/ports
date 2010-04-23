# $OpenBSD: Makefile,v 1.5 2010/04/23 09:05:06 ajacoutot Exp $

# No NTLM support in OpenLDAP; Plaintext password authentication will be
# used when connecting to the Global Catalog server. Consider installing
# the evo-openldap package, or building OpenLDAP with the patch in
# docs/openldap-ntlm.diff

SHARED_ONLY=	Yes

COMMENT=	Evolution connector for MS Exchange

GNOME_PROJECT=	evolution-exchange
GNOME_VERSION=	2.30.0

CATEGORIES=	mail

EVO_VERSION=	2.30
SUBST_VARS=	EVO_VERSION

HOMEPAGE=	http://projects.gnome.org/evolution/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 asn1
WANTLIB += atk-1.0 c cairo camel-1.2 camel-provider-1.2 canberra
WANTLIB += canberra-gtk com_err crypto db dbus-1 dbus-glib-1 ebackend-1.2
WANTLIB += ebook-1.2 ecal-1.2 edata-book-1.2 edata-cal-1.2 edataserver-1.2
WANTLIB += edataserverui-1.2 eggdbus-1 egroupwise-1.2 enchant
WANTLIB += execinfo expat fontconfig freetype gailutil gcrypt
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gnome-desktop-2 gnome-keyring gnomecanvas-2 gnutls
WANTLIB += gobject-2.0 gpg-error gssapi gthread-2.0 gtk-x11-2.0
WANTLIB += gtkhtml-3.14 gtkhtml-editor ical icalss icalvcal krb5
WANTLIB += lber ldap ltdl m nspr4 nss3 ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += sasl2 smime3 softokn3 soup-2.4 sqlite3 ssl ssl3 startup-notification-1
WANTLIB += stdc++ tasn1 unique-1.0 vorbis vorbisfile xcb xcb-atom
WANTLIB += xcb-aux xcb-event xcb-render xcb-render-util xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	lib/evolution/${EVO_VERSION}/essmime,lib/evolution/${EVO_VERSION}/emformat,lib/evolution/${EVO_VERSION}/evolution-mail,lib/evolution/${EVO_VERSION}/evolution-smime,lib/evolution/${EVO_VERSION}/filter,lib/evolution/${EVO_VERSION}/menus,lib/evolution/${EVO_VERSION}/eabutil,lib/evolution/${EVO_VERSION}/econtacteditor,lib/evolution/${EVO_VERSION}/econtactlisteditor,lib/evolution/${EVO_VERSION}/composer,lib/evolution/${EVO_VERSION}/eshell,lib/evolution/${EVO_VERSION}/etable,lib/evolution/${EVO_VERSION}/etext,lib/evolution/${EVO_VERSION}/evolution-a11y,lib/evolution/${EVO_VERSION}/emiscwidgets,lib/evolution/${EVO_VERSION}/eutil:evolution->=2.30.0.1:mail/evolution,-main

USE_X11=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

MODGCONF2_SCHEMAS_DIR= evolution-exchange

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-gtk-doc \
		--enable-gtk-doc=no \
		--with-krb5=/usr \
		--with-krb5-includes=/usr/include/kerberosV \
		--with-static-ldap=no \
		--with-openldap=${LOCALBASE} \
		--with-libdb=${LOCALBASE}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	perl -pi -e 's,-lpthread,-pthread,g' ${WRKSRC}/configure

.include <bsd.port.mk>
