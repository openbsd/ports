# $OpenBSD: Makefile,v 1.209 2016/10/31 10:18:31 ajacoutot Exp $

# XXX add libphonenumber support when a cpp release is out

COMMENT=		unified backend for PIM programs

GNOME_PROJECT=		evolution-data-server
GNOME_VERSION=		3.22.1

CATEGORIES=		databases productivity

SHARED_LIBS +=  camel-1.2            39.0     # 59.0
SHARED_LIBS +=  edbus-private        0.0      # unknown
SHARED_LIBS +=  edataserver-1.2      20.1     # 22.0
SHARED_LIBS +=  ebackend-1.2         6.0      # 10.0
SHARED_LIBS +=  edataserverui-1.2    2.0      # 1.0
SHARED_LIBS +=  ebook-contacts-1.2   3.0      # 2.0
SHARED_LIBS +=  edata-book-1.2       17.0     # 25.0
SHARED_LIBS +=  ebook-1.2            20.0     # 19.1
SHARED_LIBS +=  ecal-1.2             17.0     # 19.0
SHARED_LIBS +=  edata-cal-1.2        20.0     # 28.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject crypto curl
WANTLIB += db dbus-1 drm enchant epoxy estdc++ expat ffi fontconfig
WANTLIB += freetype gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt gdata
WANTLIB += gdk-3 gdk_pixbuf-2.0 geocode-glib gio-2.0 glapi glib-2.0
WANTLIB += gmodule-2.0 gmp gnutls goa-1.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 gweather-3 harfbuzz harfbuzz-icu
WANTLIB += hogweed hyphen ical icalss icalvcal iconv icudata icui18n
WANTLIB += icuuc idn intl javascriptcoregtk-4.0 jpeg json-glib-1.0
WANTLIB += lber-2.4 ldap-2.4 lzma m nettle nghttp2 notify nspr4
WANTLIB += nss3 nssutil3 oauth orc-0.4 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += sasl2 secret-1 smime3 softokn3 soup-2.4 sqlite3 ssl
WANTLIB += ssl3 stdc++ tasn1 webkit2gtk-4.0 webp xcb xcb-dri2
WANTLIB += xcb-glx xcb-render xcb-shm xcb-xfixes xml2 xslt z

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/gperf

LIB_DEPENDS= 		databases/db/v4 \
			databases/openldap \
			devel/libgdata \
			net/liboauth \
			textproc/libical \
			www/webkitgtk4 \
			x11/gnome/gcr \
			x11/gnome/libgweather \
			x11/gnome/online-accounts

MODPY_RUNDEP=		No
MODGNOME_TOOLS=		gobject-introspection vala

CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		DB_CFLAGS="-I${LOCALBASE}/include/db4" \
			DB_LIBS="-ldb" \
			ac_cv_path_DB_LOAD=${LOCALBASE}/bin/db4_load
CONFIGURE_ARGS=		--with-openldap=${LOCALBASE}

# needs signond, libsignon-glib -- Ubuntu/Meego
CONFIGURE_ARGS +=	--disable-uoa

pre-configure:
	sed -i 's,/usr/sbin/imapd,${LOCALBASE}/libexec/imapd,g' \
		${WRKSRC}/camel/providers/imapx/camel-imapx-settings.c \
		${WRKSRC}/docs/reference/camel/html/CamelIMAPXSettings.html
# XXX cc1plus: error: unrecognized command line option "-Wnoexcept"
	sed -i 's,-Wnoexcept,,' ${WRKSRC}/configure

post-install:
	rm ${PREFIX}/lib/evolution-data-server/*/*.{a,la}

.include <bsd.port.mk>
