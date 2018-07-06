# $OpenBSD: Makefile,v 1.243 2018/07/06 06:04:42 espie Exp $

# XXX add libphonenumber support when a cpp release is out

COMMENT=		unified backend for PIM programs

GNOME_PROJECT=		evolution-data-server
GNOME_VERSION=		3.28.3
REVISION=		0

CATEGORIES=		databases productivity

SHARED_LIBS +=  camel-1.2            40.0
SHARED_LIBS +=  edataserver-1.2      21.0
SHARED_LIBS +=  ebackend-1.2         7.0
SHARED_LIBS +=  edataserverui-1.2    3.0
SHARED_LIBS +=  ebook-contacts-1.2   4.0
SHARED_LIBS +=  edata-book-1.2       18.0
SHARED_LIBS +=  ebook-1.2            21.0
SHARED_LIBS +=  ecal-1.2             18.0
SHARED_LIBS +=  edata-cal-1.2        21.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} atk-1.0 c cairo cairo-gobject db
WANTLIB += fribidi gck-1 gcr-base-3 gcr-ui-3 gdata gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 goa-1.0 gobject-2.0 gtk-3
WANTLIB += gweather-3 ical icalss icalvcal icudata icui18n icuuc
WANTLIB += intl javascriptcoregtk-4.0 json-glib-1.0 lber ldap
WANTLIB += m nspr4 nss3 nssutil3 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += plc4 plds4 secret-1 smime3 soup-2.4 sqlite3 ssl3 webkit2gtk-4.0
WANTLIB += xml2 z

MODULES=		devel/cmake \
			devel/dconf \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/gperf

LIB_DEPENDS= 		databases/db/v4 \
			databases/openldap \
			devel/libgdata \
			textproc/libical \
			www/webkitgtk4 \
			x11/gnome/gcr \
			x11/gnome/libgweather \
			x11/gnome/online-accounts

MODPY_RUNDEP=		No
MODGNOME_TOOLS=		gobject-introspection vala

MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_ARGS=		-DWITH_KRB5=OFF \
			-DWITH_LIBDB_CFLAGS="-I${LOCALBASE}/include/db4" \
			-DWITH_LIBDB_LIBS="-L${LOCALBASE}/lib -ldb" \
			-DWITH_OPENLDAP=${LOCALBASE} \
			-DCMAKE_C_FLAGS="-I${LOCALBASE}/include"


# needs signond, libsignon-glib -- Ubuntu/Meego
CONFIGURE_ARGS +=	-DENABLE_UOA=OFF

pre-configure:
	sed -i 's,/usr/sbin/imapd,${LOCALBASE}/libexec/imapd,g' \
		${WRKSRC}/src/camel/providers/imapx/camel-imapx-settings.c

.include <bsd.port.mk>
