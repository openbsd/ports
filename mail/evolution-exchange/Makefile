# $OpenBSD: Makefile,v 1.20 2011/09/12 12:07:26 jasper Exp $

# No NTLM support in OpenLDAP; Plaintext password authentication will be
# used when connecting to the Global Catalog server. Consider installing
# the evo-openldap package, or building OpenLDAP with the patch in
# docs/openldap-ntlm.diff

SHARED_ONLY=	Yes

COMMENT=	evolution connector for MS Exchange

GNOME_PROJECT=	evolution-exchange
GNOME_VERSION=	3.0.3

SHARED_LIBS +=  exchange                  0.0 # 0.0
SHARED_LIBS +=  xntlm                     0.0 # 0.0

CATEGORIES=	mail

EVO_VERSION=	3.0
SUBST_VARS=	EVO_VERSION

HOMEPAGE=	http://projects.gnome.org/evolution/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 X11-xcb Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xxf86vm asn1 atk-1.0 c cairo cairo-gobject camel-1.2
WANTLIB += camel-provider-1.2 canberra canberra-gtk3 com_err crypto
WANTLIB += db dbus-1 dbus-glib-1 drm ebackend-1.2 ebook-1.2 ecal-1.2
WANTLIB += edata-book-1.2 edata-cal-1.2 edataserver-1.2 edataserverui-3.0
WANTLIB += egroupwise-1.2 enchant execinfo expat fontconfig freetype
WANTLIB += gailutil-3 gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-desktop-3 gnome-keyring gobject-2.0
WANTLIB += gpg-error gssapi gthread-2.0 gtk-3 gtkhtml-4.0 gtkhtml-editor-4.0
WANTLIB += ical icalss icalvcal krb5 lber-2.4 ldap-2.4 ltdl m
WANTLIB += nspr4 nss3 nssutil3 ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += sasl2 smime3 softokn3 soup-2.4 sqlite3 ssl ssl3 startup-notification-1
WANTLIB += stdc++ unique-3.0 vorbis vorbisfile xcb xcb-aux xcb-render
WANTLIB += xcb-shm xml2 z
WANTLIB += lib/evolution/${EVO_VERSION}/composer
WANTLIB += lib/evolution/${EVO_VERSION}/eabutil
WANTLIB += lib/evolution/${EVO_VERSION}/econtacteditor
WANTLIB += lib/evolution/${EVO_VERSION}/econtactlisteditor
WANTLIB += lib/evolution/${EVO_VERSION}/emformat
WANTLIB += lib/evolution/${EVO_VERSION}/emiscwidgets
WANTLIB += lib/evolution/${EVO_VERSION}/eshell.
WANTLIB += lib/evolution/${EVO_VERSION}/essmime
WANTLIB += lib/evolution/${EVO_VERSION}/etable
WANTLIB += lib/evolution/${EVO_VERSION}/etext
WANTLIB += lib/evolution/${EVO_VERSION}/eutil
WANTLIB += lib/evolution/${EVO_VERSION}/evolution-a11y
WANTLIB += lib/evolution/${EVO_VERSION}/evolution-mail.
WANTLIB += lib/evolution/${EVO_VERSION}/evolution-smime
WANTLIB += lib/evolution/${EVO_VERSION}/filter
WANTLIB += lib/evolution/${EVO_VERSION}/gnomecanvas
WANTLIB += lib/evolution/${EVO_VERSION}/menus

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	mail/evolution,-main>=3.0.2

LIBTOOL_FLAGS=	--tag=disable-static

MODGCONF2_SCHEMAS_DIR= evolution-exchange

AUTOCONF_VERSION=2.68
AUTOMAKE_VERSION=1.9

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-gtk-doc \
		--with-krb5=/usr \
		--with-krb5-includes=/usr/include/kerberosV \
		--with-static-ldap=no \
		--with-openldap=${LOCALBASE} \
		--with-libdb=${LOCALBASE}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4" \
		LDFLAGS="-L${LOCALBASE}/lib \
			-Wl,-rpath,${TRUEPREFIX}/lib/evolution-exchange/${EVO_VERSION}:${TRUEPREFIX}/lib"

.include <bsd.port.mk>
