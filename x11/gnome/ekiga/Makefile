# $OpenBSD: Makefile,v 1.63 2013/02/06 14:23:06 ajacoutot Exp $

# if ekiga ever moves to gstreamer, detect_sndiosink_devices() will need
# to be implemented in:
# plugins/gstreamer/gst-audiooutput.{cpp,h}

SHARED_ONLY=	Yes

COMMENT=	SIP and H.323 compatible conferencing application

GNOME_PROJECT=	ekiga
GNOME_VERSION=	4.0.0
REVISION=	2

SUBST_VARS +=	GNOME_VERSION # pkg/PLIST

CATEGORIES=	net multimedia

HOMEPAGE=	http://www.ekiga.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL SDL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xv Xxf86vm asn1 atk-1.0
WANTLIB += boost_signals-mt c cairo camel-1.2 com_err crypto dbus-1
WANTLIB += dbus-glib-1 drm ebook-1.2 edataserver-1.2 expat ffi
WANTLIB += fontconfig freetype gck-1 gcr-base-3 gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring
WANTLIB += gobject-2.0 gpg-error gssapi gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz icudata icule icuuc krb5 lber-2.4 ldap-2.4
WANTLIB += ldap_r-2.4 m notify nspr4 nss3 nssutil3 opal p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png pt pthread pthread-stubs sasl2 smime3
WANTLIB += sndio softokn3 soup-2.4 speexdsp sqlite3 ssl ssl3 stdc++
WANTLIB += usbhid xcb xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	x11/gnome/icon-theme
RUN_DEPENDS=	x11/gnome/icon-theme

LIB_DEPENDS=	net/opal>=3.10.9 \
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
