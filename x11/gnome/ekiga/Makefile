# $OpenBSD: Makefile,v 1.50 2011/10/29 08:37:40 ajacoutot Exp $

BROKEN=		WIP (see ajacoutot@)

SHARED_ONLY=	Yes

COMMENT=	SIP and H.323 compatible conferencing application

GNOME_PROJECT=	ekiga
GNOME_VERSION=	3.3.2
REVISION=	0

CATEGORIES=	net multimedia

HOMEPAGE=	http://www.ekiga.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL SDL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xv Xxf86vm asn1 atk-1.0
WANTLIB += avahi-client avahi-common avahi-glib boost_signals-mt
WANTLIB += c cairo camel-1.2 com_err crypto dbus-1 dbus-glib-1
WANTLIB += drm ebook-1.2 edataserver-1.2 expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gssapi gthread-2.0 gtk-x11-2.0
WANTLIB += krb5 lber-2.4 ldap-2.4 ldap_r-2.4 m notify nspr4 nss3
WANTLIB += nssutil3 opal pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pt pthread pthread-stubs
WANTLIB += sasl2 smime3 sndio softokn3 soup-2.4 speexdsp sqlite3
WANTLIB += ssl ssl3 stdc++ usbhid xcb xcb-render xcb-shm xml2
WANTLIB += z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	net/avahi \
		net/opal>=3.10.3 \
		devel/sdl \
		databases/evolution-data-server \
		devel/libnotify>=0.7.2 \
		devel/boost

# /usr/local/include/boost/throw_exception.hpp:65: \
# error: exception handling disabled, use -fexceptions to enable
CFLAGS +=	-fexceptions

MODGCONF2_SCHEMAS_DIR= ekiga

MODGNOME_DESKTOP_FILE=	Yes
#MODGNOME_TOOLS=	yelp
MODGNOME_LDFLAGS=-L${X11BASE}/lib -pthread

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static \
		--enable-h323 \
		--with-ldap-dir=${LOCALBASE} \
		--with-libsasl2-dir=${LOCALBASE}

.include <bsd.port.mk>
