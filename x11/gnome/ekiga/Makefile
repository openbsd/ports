# $OpenBSD: Makefile,v 1.32 2010/10/11 08:19:19 jasper Exp $

COMMENT=	SIP and H.323 compatible conferencing application

GNOME_PROJECT=	ekiga
GNOME_VERSION=	3.2.7

REVISION=	2

CATEGORIES=	net multimedia

HOMEPAGE=	http://www.ekiga.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor avahi-client camel-1.2
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender opal
WANTLIB += Xv asn1 atk-1.0 c cairo xcb-render xcb-render-util
WANTLIB += com_err crypto dbus-1 dbus-glib-1 expat fontconfig notify
WANTLIB += freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 sigc-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnutls gobject-2.0 gpg-error
WANTLIB += gssapi gthread-2.0 gtk-x11-2.0 krb5 lber ldap ldap_r SDL
WANTLIB += m nspr4 nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pt pthread pthread-stubs
WANTLIB += sasl2 smime3 sndio soup-2.4 speexdsp sqlite3 avahi-common
WANTLIB += ssl ssl3 stdc++ tasn1 usbhid xcb xml2 z avahi-glib ebook-1.2
WANTLIB += edataserver-1.2

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	::net/avahi,no_gtk,no_mono,no_qt3,no_qt4 \
		::net/opal \
		::devel/sdl \
		::databases/evolution-data-server \
		::devel/libsigc++-2 \
		::devel/libnotify

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES=Yes
MODGCONF2_SCHEMAS_DIR= ekiga
USE_LIBTOOL=	Yes

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-avahi \
		--disable-gnome \
		--disable-scrollkeeper \
		--with-ldap-dir=${LOCALBASE} \
		--with-libsasl2-dir=${LOCALBASE}

.include <bsd.port.mk>
