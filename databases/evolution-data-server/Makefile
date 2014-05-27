# $OpenBSD: Makefile,v 1.175 2014/05/27 10:02:41 ajacoutot Exp $

# XXX add libphonenumber support when a cpp release is out

SHARED_ONLY=		Yes

COMMENT=		unified backend for PIM programs

GNOME_PROJECT=		evolution-data-server
GNOME_VERSION=		3.12.2
REVISION=		0

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


MASTER_SITES0=		https://git.gnome.org/browse/evolution-data-server/patch/?id=
PATCH_DIST_STRIP=	-p1
IDS=			1479f265181b544e6185805a9e206f8340b76730 \
			ce42fea421227c818e284f59f1e395224da85f21 \
			5e3933e92ee2c5c2a388fb6d8e026a451ddbe20b \
			52cc3a14423eb70aed14eadc3d015eafc93a463a \
			ff2b1de0827bf6810c31c9593fbd82efa8ef3618 \
			95adf1f9ad1388ef0d21d23e8c17ef06ecdb1f51 \
			927d3ca66ce85347bc4ef504034e70488ec9ddd2 \
			b8922e47a8cff3ff0855a3a8ff873e963f93e72c \
			525839abfc93a4a1614c24a8e0137f09c7000d99 \
			d8685b13c7c6be9cb92ee710d945dcb8745a2d85 \
			5accb2bc3a35406201da89ddd4666e715a3c034a \
			ac33832d266869232ced77f8db61ae1625d773d8 \
			03bfcb7b667348cda13f9655b39c0a9dd60f885b \
			d1308feb1719e4a0eb056262f97c3a5ee078207a \
			683bd3e09e3831385056de0acf13eea72ecaa6d3 \
			a884ee3e4cfb09f605065f29296edf313ee66d35 \
			1f5926b67207a3e683e5b458b4be939cb5e8eaf5 \
			7ad4b8f30b1a6d8b7cd1f3d8c87b4436b42dd7b9 \
			10a21fa5372e14eb9e64ec74b93e349f0ce183e3 \
			920750e8935af20bb9d94f715a590da598a1d882
.for i in ${IDS}
PATCHFILES +=		$i:0
.endfor

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject crypto curl db dbus-1 expat
WANTLIB += ffi fontconfig freetype gck-1 gcr-3 gcr-base-3 gcrypt
WANTLIB += gdata gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += goa-1.0 gobject-2.0 gpg-error graphite2 gthread-2.0
WANTLIB += gtk-3 gweather-3 harfbuzz ical icalss icalvcal icudata
WANTLIB += icui18n icuuc idn lber-2.4 ldap-2.4 m nspr4 nss3 nssutil3
WANTLIB += oauth p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += sasl2 secret-1 smime3 softokn3 soup-2.4 sqlite3 ssl
WANTLIB += ssl3 stdc++ xcb xcb-render xcb-shm xml2 z

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
MODGNOME_TOOLS += gobject-introspection vala

CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		DB_CFLAGS="-I${LOCALBASE}/include/db4" \
			DB_LIBS="-ldb" \
			ac_cv_path_DB_LOAD=${LOCALBASE}/bin/db4_load
CONFIGURE_ARGS=		--with-openldap=${LOCALBASE}

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
