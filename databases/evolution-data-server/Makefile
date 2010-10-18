# $OpenBSD: Makefile,v 1.72 2010/10/18 13:29:56 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		data backends for the Evolution mail/PIM suite

GNOME_PROJECT=		evolution-data-server
GNOME_VERSION=		2.32.0
REVISION=		0

CATEGORIES=		databases

SHARED_LIBS +=  edataserver-1.2      11.0     # .14.0
SHARED_LIBS +=  ebackend-1.2         1.0      # .0.1
SHARED_LIBS +=  egroupwise-1.2       14.0     # .13.1
SHARED_LIBS +=  camel-1.2            15.0     # .19.0
SHARED_LIBS +=  camel-provider-1.2   15.0     # .19.0
SHARED_LIBS +=  ebook-1.2            13.0     # .13.1
SHARED_LIBS +=  edata-book-1.2       7.0      # .8.0
SHARED_LIBS +=  ecal-1.2             10.0     # .10.2
SHARED_LIBS +=  edata-cal-1.2        7.0      # .10.0
SHARED_LIBS +=  edataserverui-1.2    10.0     # .11.0

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
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssapi
WANTLIB += gthread-2.0 gtk-x11-2.0 krb5 m nspr4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png proxy pthread
WANTLIB += pthread-stubs sasl2 soup-2.4 soup-gnome-2.4 sqlite3
WANTLIB += ssl tasn1 xcb xcb-render xcb-render-util xml2 z
WANTLIB += db ldap lber gpg-error gnutls nss3.>=19 smime3 ssl3 ical
WANTLIB += icalss icalvcal gnome-keyring.>=6 gweather gdata

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		:bison-*:devel/bison \
			:gperf-*:devel/gperf
LIB_DEPENDS= 		:db->=4,<5:databases/db/v4 \
			::databases/openldap \
			:nss->=3.11.4p1:security/nss \
			::textproc/libical \
			::x11/gnome/libgweather \
			::devel/libgdata \
			::devel/eggdbus

# XXX Use of uninitialized value $filename in concatenation (.) or string at /usr/ports/infrastructure/bin/libtool line 1112.
# objdump: 'a.out': No such file
USE_LIBTOOL=		gnu

YACC=			bison
AUTOCONF_VERSION=	2.64
CONFIGURE_STYLE= 	autoconf gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-gnome-keyring=yes \
			--enable-smime=yes \
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
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

# Only get the first x.y which is needed in the PLIST.
R=			${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=		R

post-extract:
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},' \
		${WRKSRC}/addressbook/libebook/gen-western-table.py

.include <bsd.port.mk>
