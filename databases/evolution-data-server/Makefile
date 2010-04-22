# $OpenBSD: Makefile,v 1.59 2010/04/22 09:17:50 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		data backends for the Evolution mail/PIM suite

GNOME_PROJECT=		evolution-data-server
GNOME_VERSION=		2.30.0

CATEGORIES=		databases

SHARED_LIBS +=	edataserver-1.2      10.1     # .11.0
SHARED_LIBS +=	ebackend-1.2         0.1      # .0.0
SHARED_LIBS +=	egroupwise-1.2       13.1     # .13.1
SHARED_LIBS +=	gdata-1.2            1.0      # .1.0
SHARED_LIBS +=	gdata-google-1.2     1.0      # .1.0
SHARED_LIBS +=	camel-1.2            14.1     # .14.1
SHARED_LIBS +=	camel-provider-1.2   14.1     # .14.1
SHARED_LIBS +=	ebook-1.2            12.1     # .12.1
SHARED_LIBS +=	edata-book-1.2       6.1      # .6.1
SHARED_LIBS +=	ecal-1.2             9.1      # .9.1
SHARED_LIBS +=	edata-cal-1.2        6.2      # .6.2
SHARED_LIBS +=	edataserverui-1.2    9.1      # .9.1

HOMEPAGE=	http://www.gnome.org/projects/evolution/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender asn1 atk-1.0 c cairo
WANTLIB += com_err crypto dbus-1 dbus-glib-1 eggdbus-1 expat fontconfig
WANTLIB += freetype gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gssapi
WANTLIB += gthread-2.0 gtk-x11-2.0 krb5 m nspr4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png proxy pthread
WANTLIB += pthread-stubs sasl2 soup-2.4 soup-gnome-2.4 sqlite3
WANTLIB += ssl tasn1 xcb xcb-render xcb-render-util xml2 z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		:bison-*:devel/bison
LIB_DEPENDS= 		db:db->=4,<5:databases/db/v4 \
			ldap,lber::databases/openldap \
			gpg-error::security/libgpg-error \
			gnutls::security/gnutls \
			nss3.>=19,smime3.>=19,ssl3.>=19:nss->=3.11.4p1:security/nss \
			ical,icalss,icalvcal::textproc/libical \
			gnome-keyring.>=6:libgnome-keyring-*:x11/gnome/libgnome-keyring \
			gweather::x11/gnome/libgweather

USE_X11=		Yes
YACC=			bison
AUTOCONF_VERSION=	2.63
CONFIGURE_STYLE= 	autoconf gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-gnome-keyring=yes \
			--enable-smime=yes \
			--with-broken-spool=no \
			--with-nss-libs="${LOCALBASE}/lib" \
			--with-nss-includes="${LOCALBASE}/include/nss" \
			--with-nspr-libs=${LOCALBASE}/lib \
			--with-nspr-includes=${LOCALBASE}/include/nspr \
			--with-krb5 \
			--with-krb5-libs=/usr/lib \
			--with-krb5-includes=/usr/include/kerberosV \
			--with-libdb="${PREFIX}/lib" \
			--with-openldap=${LOCALBASE}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4" \
			LDFLAGS="-L${LOCALBASE}/lib"

# Only get the first x.y which is needed in the PLIST.
R=			${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=		R

post-extract:
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},' \
		${WRKSRC}/addressbook/libebook/gen-western-table.py

.include <bsd.port.mk>

# XXX:
# No NTLM support in OpenLDAP; Plaintext password authentication will be
# used when connecting to the Exchange Global Catalog server. Consider 
# installing the evo-openldap package, or building OpenLDAP with the 
# patch in servers/exchange/docs/openldap-ntlm.diff
