# $OpenBSD: Makefile,v 1.166 2014/03/27 10:08:21 ajacoutot Exp $

# XXX add libphonenumber support when a cpp release is out

SHARED_ONLY=		Yes

COMMENT=		unified backend for PIM programs

GNOME_PROJECT=		evolution-data-server
GNOME_VERSION=		3.12.0

CATEGORIES=		databases productivity

SHARED_LIBS +=  camel-1.2            37.0     # 49.0
SHARED_LIBS +=  edataserver-1.2      18.0     # 18.0
SHARED_LIBS +=  ebackend-1.2         5.0      # 7.0
SHARED_LIBS +=  ebook-contacts-1.2   1.0      # 0.0
SHARED_LIBS +=  edata-book-1.2       16.0     # 20.0
SHARED_LIBS +=  ebook-1.2            19.0     # 17.1
SHARED_LIBS +=  ecal-1.2             15.0     # 16.0
SHARED_LIBS +=  edata-cal-1.2        18.0     # 23.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender asn1 atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject com_err crypto curl db
WANTLIB += dbus-1 expat ffi fontconfig freetype gck-1 gcr-base-3
WANTLIB += gcrypt gdata gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 goa-1.0 gobject-2.0 gpg-error graphite2
WANTLIB += gssapi gthread-2.0 gtk-3 gweather-3 harfbuzz heimbase
WANTLIB += ical icalss icalvcal idn krb5 lber-2.4 ldap-2.4 m nspr4
WANTLIB += nss3 nssutil3 oauth p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += roken sasl2 secret-1 smime3 softokn3 soup-2.4 sqlite3
WANTLIB += ssl ssl3 wind xcb xcb-render xcb-shm xml2 z
WANTLIB += Xau Xdmcp gcr-3 icudata icui18n icuuc stdc++

MODULES=		devel/gettext \
			devel/dconf \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/gperf

LIB_DEPENDS= 		databases/db/v4 \
			databases/openldap \
			devel/libgdata \
			net/liboauth \
			textproc/libical \
			x11/gnome/gcr \
			x11/gnome/libgweather \
			x11/gnome/online-accounts

MODPY_RUNDEP=		No
MODGNOME_TOOLS= 	gi vala
MODGNOME_CPPFLAGS=	$$(krb5-config --cflags)

CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		DB_CFLAGS="-I${LOCALBASE}/include/db4" DB_LIBS="-ldb"
CONFIGURE_ARGS=		--with-krb5 \
			--with-openldap=${LOCALBASE}

# needs signond, libsignon-glib -- Ubuntu/Meego
CONFIGURE_ARGS +=	--disable-uoa

pre-configure:
	perl -pi -e 's,/usr/sbin/imapd,${LOCALBASE}/libexec/imapd,g' \
		${WRKSRC}/camel/providers/imapx/camel-imapx-settings.c \
		${WRKSRC}/docs/reference/camel/html/CamelIMAPXSettings.html
# XXX cc1plus: error: unrecognized command line option "-Wnoexcept"
	perl -pi -e 's,-Wnoexcept,,' ${WRKSRC}/configure

post-install:
	rm ${PREFIX}/lib/evolution-data-server/*/*.{a,la}

.include <bsd.port.mk>
