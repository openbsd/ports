# $OpenBSD: Makefile,v 1.25 2010/03/23 21:18:59 ajacoutot Exp $

COMMENT=	SIP and H.323 compatible conferencing application

GNOME_PROJECT=	ekiga
GNOME_VERSION=	3.2.6

CATEGORIES=	net multimedia

HOMEPAGE=	http://www.ekiga.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xv asn1 atk-1.0 bonobo-2 bonobo-activation c cairo
WANTLIB += com_err crypto dbus-1 dbus-glib-1 expat fontconfig
WANTLIB += freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gnutls gobject-2.0 gpg-error
WANTLIB += gssapi gthread-2.0 gtk-x11-2.0 krb5 lber ldap ldap_r
WANTLIB += m nspr4 nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pt pthread pthread-stubs
WANTLIB += sasl2 smime3 sndio softokn3 soup-2.4 speexdsp sqlite3
WANTLIB += ssl ssl3 stdc++ tasn1 usbhid xcb xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	::devel/boost
LIB_DEPENDS=	avahi-client,avahi-common,avahi-glib::net/avahi,no_gtk,no_mono,no_qt3,no_qt4 \
		opal::net/opal \
		SDL.>=8::devel/sdl \
		camel-1.2.>=10,ebook-1.2,edataserver-1.2::databases/evolution-data-server \
		sigc-2.0.>=1::devel/libsigc++-2 \
		notify.>=2::devel/libnotify

# include/boost/detail/shared_count.hpp:117
# error: exception handling disabled
CFLAGS+=	-fexceptions

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES=Yes
MODGCONF2_SCHEMAS_DIR= ekiga

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-avahi \
		--disable-gnome \
		--disable-scrollkeeper \
		--with-ldap-dir=${LOCALBASE} \
		--with-libsasl2-dir=${LOCALBASE}

.include <bsd.port.mk>
