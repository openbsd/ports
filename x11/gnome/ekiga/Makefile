# $OpenBSD: Makefile,v 1.77 2014/04/01 18:06:31 jasper Exp $

# if ekiga ever moves to gstreamer, detect_sndiosink_devices() will need
# to be implemented in:
# plugins/gstreamer/gst-audiooutput.{cpp,h}

SHARED_ONLY=	Yes

COMMENT=	SIP and H.323 compatible conferencing application

GNOME_PROJECT=	ekiga
GNOME_VERSION=	4.0.1
REVISION=	9

# pkg/PLIST
SUBST_VARS +=	GNOME_VERSION

CATEGORIES=	net multimedia

HOMEPAGE=	http://www.ekiga.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += SDL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xv asn1 atk-1.0 boost_signals-mt c cairo
WANTLIB += camel-1.2 com_err crypto db dbus-1 dbus-glib-1 ebackend-1.2
WANTLIB += ebook-1.2 ebook-contacts-1.2 edata-book-1.2 edataserver-1.2
WANTLIB += expat ffi fontconfig freetype gck-1 gcr-base-3 gcrypt
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error graphite2 gssapi gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz heimbase krb5 lber-2.4 ldap-2.4
WANTLIB += ldap_r-2.4 m notify nspr4 nss3 nssutil3 opal p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png pt pthread pthread-stubs roken sasl2
WANTLIB += secret-1 smime3 sndio softokn3 soup-2.4 speexdsp sqlite3
WANTLIB += ssl ssl3 stdc++ usbhid wind xcb xcb-render xcb-shm
WANTLIB += xml2 z icudata icui18n icuuc

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	net/opal \
		devel/sdl \
		databases/evolution-data-server \
		devel/libnotify \
		devel/boost \
		x11/gtk+2

# /usr/local/include/boost/throw_exception.hpp:65: \
# error: exception handling disabled, use -fexceptions to enable
CFLAGS +=	-fexceptions

MODGCONF2_SCHEMAS_DIR= ekiga

MODGNOME_TOOLS +=  desktop-file-utils  gtk-update-icon-cache yelp
MODGNOME_LDFLAGS=-L${X11BASE}/lib

CONFIGURE_ARGS=	--enable-h323 \
		--with-ldap-dir=${LOCALBASE} \
		--with-libsasl2-dir=${LOCALBASE}

post-install:
	rm ${PREFIX}/lib/ekiga/${GNOME_VERSION}/{,plugins}/*.{a,la}

.include <bsd.port.mk>
