# $OpenBSD: Makefile,v 1.261 2020/03/13 13:15:58 jasper Exp $

# XXX add libphonenumber support when a cpp release is out

COMMENT=		unified backend for PIM programs

GNOME_PROJECT=		evolution-data-server
GNOME_VERSION=		3.34.4
REVISION=		0

CATEGORIES=		databases productivity

SHARED_LIBS +=  camel-1.2            41.2
SHARED_LIBS +=  edataserver-1.2      22.2
SHARED_LIBS +=  ebackend-1.2         8.2
SHARED_LIBS +=  edataserverui-1.2    4.2
SHARED_LIBS +=  ebook-contacts-1.2   5.2
SHARED_LIBS +=  edata-book-1.2       20.0
SHARED_LIBS +=  ebook-1.2            23.0
SHARED_LIBS +=  ecal-2.0             0.0
SHARED_LIBS +=  edata-cal-2.0        0.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} X11 atk-1.0 c cairo cairo-gobject
WANTLIB += canberra canberra-gtk3 db gck-1 gcr-base-3 gcr-ui-3
WANTLIB += gdata gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += goa-1.0 gobject-2.0 gtk-3 gweather-3 harfbuzz ical
WANTLIB += ical-glib icalss icalvcal icudata icui18n icuuc intl
WANTLIB += javascriptcoregtk-4.0 json-glib-1.0 lber ldap m nspr4
WANTLIB += nss3 nssutil3 p11-kit pango-1.0 pangocairo-1.0 plc4
WANTLIB += plds4 secret-1 smime3 soup-2.4 sqlite3 ssl3 webkit2gtk-4.0
WANTLIB += xml2 z

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/cmake \
			devel/dconf \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/gperf

LIB_DEPENDS= 		audio/libcanberra,-gtk3 \
			databases/db/v4 \
			databases/openldap \
			devel/libgdata \
			security/nss \
			textproc/libical,-glib \
			www/webkitgtk4 \
			x11/gnome/gcr \
			x11/gnome/libgweather \
			x11/gnome/online-accounts

MODPY_RUNDEP=		No
MODGNOME_TOOLS=		desktop-file-utils gobject-introspection vala

MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_ARGS=		-DWITH_KRB5=OFF \
			-DWITH_LIBDB_CFLAGS="-I${LOCALBASE}/include/db4" \
			-DWITH_LIBDB_LIBS="-L${LOCALBASE}/lib -ldb" \
			-DWITH_OPENLDAP=${LOCALBASE} \
			-DCMAKE_C_FLAGS="${CFLAGS} -I${LOCALBASE}/include"

DEBUG_PACKAGES=		${BUILD_PACKAGES}

pre-configure:
	sed -i 's,/usr/sbin/imapd,${LOCALBASE}/libexec/imapd,g' \
		${WRKSRC}/src/camel/providers/imapx/camel-imapx-settings.c
# don't pick up db_load from databases/db/v3
	ln -sf ${LOCALBASE}/bin/db4_load ${WRKDIR}/bin/db_load

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${WRKINST}${SYSCONFDIR}/xdg \
		${PREFIX}/share/examples/evolution-data-server

.include <bsd.port.mk>
