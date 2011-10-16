# $OpenBSD: Makefile,v 1.30 2011/10/16 19:03:57 ajacoutot Exp $

# No NTLM support in OpenLDAP; Plaintext password authentication will be
# used when connecting to the Global Catalog server. Consider installing
# the evo-openldap package, or building OpenLDAP with the patch in
# docs/openldap-ntlm.diff

SHARED_ONLY=	Yes

COMMENT=	evolution connector for MS Exchange

GNOME_PROJECT=	evolution-exchange
GNOME_VERSION=	3.2.1
REVISION=	1

SHARED_LIBS +=  exchange                  0.0 # 0.0
SHARED_LIBS +=  xntlm                     0.0 # 0.0

CATEGORIES=	mail

EVO_VERSION=	3.2
SUBST_VARS=	EVO_VERSION

HOMEPAGE=	http://projects.gnome.org/evolution/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += asn1 atk-1.0 c cairo cairo-gobject camel-1.2 camel-provider-1.2
WANTLIB += canberra canberra-gtk3 com_err crypto db dbus-1 drm
WANTLIB += ebackend-1.2 ebook-1.2 ecal-1.2 edata-book-1.2 edata-cal-1.2
WANTLIB += edataserver-1.2 edataserverui-3.0 enchant expat ffi
WANTLIB += fontconfig freetype gailutil-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3 gnome-keyring
WANTLIB += gobject-2.0 gpg-error gssapi gthread-2.0 gtk-3 gtkhtml-4.0
WANTLIB += gtkhtml-editor-4.0 ical icalss icalvcal krb5 lber-2.4
WANTLIB += ldap-2.4 ltdl m nspr4 nss3 nssutil3 ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += sasl2 smime3 softokn3 soup-2.4 sqlite3 ssl ssl3 stdc++
WANTLIB += vorbis vorbisfile xcb xcb-render xcb-shm xml2 z
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

LIB_DEPENDS=	mail/evolution,-main>=3.2.1

LIBTOOL_FLAGS=	--tag=disable-static

MODGCONF2_SCHEMAS_DIR= evolution-exchange

AUTOCONF_VERSION=2.68
AUTOMAKE_VERSION=1.9

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--disable-static \
		--with-krb5=/usr \
		--with-krb5-includes=/usr/include/kerberosV \
		--with-static-ldap=no \
		--with-openldap=${LOCALBASE} \
		--with-libdb=${LOCALBASE}
MODGNOME_CPPFLAGS=-I${LOCALBASE}/include/db4
MODGNOME_LDFLAGS=-Wl,-rpath,${TRUEPREFIX}/lib/evolution-exchange/${EVO_VERSION}:${TRUEPREFIX}/lib

.include <bsd.port.mk>
