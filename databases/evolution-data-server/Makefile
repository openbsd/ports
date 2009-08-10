# $OpenBSD: Makefile,v 1.47 2009/08/10 06:31:07 kili Exp $

SHARED_ONLY=		Yes

COMMENT=		data backends for the Evolution mail/PIM suite

GNOME_PROJECT=		evolution-data-server
GNOME_VERSION=		2.24.5
PKGNAME=		${DISTNAME}p2

CATEGORIES=		databases

SHARED_LIBS +=	edataserver-1.2      10.0     # .11.0
SHARED_LIBS +=	ebackend-1.2         0.0      # .0.0
SHARED_LIBS +=	egroupwise-1.2       13.1     # .13.1
SHARED_LIBS +=	exchange-storage-1.2 3.0      # .3.0
SHARED_LIBS +=	gdata-1.2            0.0      # .1.0
SHARED_LIBS +=	gdata-google-1.2     0.0      # .1.0
SHARED_LIBS +=	camel-1.2            14.0     # .14.0
SHARED_LIBS +=	camel-provider-1.2   14.0     # .14.0
SHARED_LIBS +=	ebook-1.2            12.0     # .12.0
SHARED_LIBS +=	edata-book-1.2       6.1      # .6.1
SHARED_LIBS +=	ecal-1.2             9.1      # .9.1
SHARED_LIBS +=	edata-cal-1.2        6.2      # .6.2
SHARED_LIBS +=	edataserverui-1.2    9.0      # .9.0

HOMEPAGE=		http://www.gnome.org/projects/evolution/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite Xcursor \
		Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		asn1 atk-1.0 avahi-client avahi-common avahi-glib \
		bonobo-2 bonobo-activation c \
		cairo com_err crypto dbus-1 dbus-glib-1 expat fontconfig \
		freetype gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glib-2.0 glitz gmodule-2.0 gnomevfs-2 gnutls gobject-2.0 gpg-error gssapi \
		gthread-2.0 gtk-x11-2.0 krb5 m nspr4 pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 plc4 plds4 png popt pthread \
		sasl2 sqlite3 ssl tasn1 util xml2 z \
		pthread-stubs xcb

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		:autoconf-${AUTOCONF_VERSION}:devel/autoconf/${AUTOCONF_VERSION} \
			:bison-*:devel/bison \
			:libgnomeui-*:x11/gnome/libgnomeui
LIB_DEPENDS= 		db:db->=4,<5:databases/db/v4 \
			ldap,lber::databases/openldap \
			glade-2.0::devel/libglade2 \
			soup-2.4::devel/libsoup \
			nss3.>=19,smime3.>=19,softokn3.>=19,ssl3.>=19:nss->=3.11.4p1:security/nss \
			gnome-2::x11/gnome/libgnome \
			gnome-keyring.>=3::x11/gnome/keyring
			
USE_X11=		Yes
YACC=			bison
AUTOCONF_VERSION=	2.62
CONFIGURE_STYLE= 	autoconf gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/evolution-data-server \
			--enable-gnome-keyring=yes \
			--enable-nss=yes \
			--enable-smime=yes \
			--with-broken-spool=no \
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
