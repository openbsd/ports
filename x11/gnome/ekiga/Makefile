# $OpenBSD: Makefile,v 1.66 2013/04/02 16:16:47 ajacoutot Exp $

# if ekiga ever moves to gstreamer, detect_sndiosink_devices() will need
# to be implemented in:
# plugins/gstreamer/gst-audiooutput.{cpp,h}

SHARED_ONLY=	Yes

COMMENT=	SIP and H.323 compatible conferencing application

GNOME_PROJECT=	ekiga
GNOME_VERSION=	4.0.1
REVISION=	0

# pkg/PLIST
SUBST_VARS +=	GNOME_VERSION

CATEGORIES=	net multimedia

HOMEPAGE=	http://www.ekiga.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += SDL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xv asn1 atk-1.0 boost_signals-mt c cairo
WANTLIB += camel-1.2 com_err crypto dbus-1 dbus-glib-1 ebook-1.2
WANTLIB += edataserver-1.2 expat ffi fontconfig freetype gck-1
WANTLIB += gcr-base-3 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-keyring gobject-2.0 gpg-error
WANTLIB += gssapi gthread-2.0 gtk-x11-2.0 harfbuzz icudata icule
WANTLIB += icuuc krb5 lber-2.4 ldap-2.4 ldap_r-2.4 m notify nspr4
WANTLIB += nss3 nssutil3 opal p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png pt pthread
WANTLIB += pthread-stubs sasl2 smime3 sndio softokn3 soup-2.4
WANTLIB += speexdsp sqlite3 ssl ssl3 stdc++ usbhid xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	net/opal>=3.10.10 \
		devel/sdl \
		databases/evolution-data-server \
		devel/libnotify \
		devel/boost \
		x11/gtk+2

# /usr/local/include/boost/throw_exception.hpp:65: \
# error: exception handling disabled, use -fexceptions to enable
CFLAGS +=	-fexceptions

MODGCONF2_SCHEMAS_DIR= ekiga

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS=		yelp
MODGNOME_LDFLAGS=-L${X11BASE}/lib

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static \
		--enable-h323 \
		--with-ldap-dir=${LOCALBASE} \
		--with-libsasl2-dir=${LOCALBASE}

post-install:
	rm ${PREFIX}/lib/ekiga/${GNOME_VERSION}/{,plugins}/*.la

.include <bsd.port.mk>
