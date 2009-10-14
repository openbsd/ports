# $OpenBSD: Makefile,v 1.30 2009/10/14 16:54:55 jasper Exp $

# XXX
# (empathy:10245): Gtk-WARNING **: could not load image: Icon 'im-xmpp' not present in theme

COMMENT= 		telepathy based messenger for GNOME

GNOME_PROJECT=		empathy
GNOME_VERSION=		2.24.1
PKGNAME=		${DISTNAME}p17

SHARED_LIBS +=	empathy              1.0      # .16.4
SHARED_LIBS +=	empathy-gtk          1.0      # .15.6
CATEGORIES=		net

HOMEPAGE=		http://live.gnome.org/Empathy

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 asn1 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 c
WANTLIB += cairo com_err crypto dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2
WANTLIB += gnomecanvas-2 gnomevfs-2 gnutls gobject-2.0 gpg-error
WANTLIB += gssapi gthread-2.0 gtk-x11-2.0 krb5 m nspr4 nss3 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4 png
WANTLIB += popt pthread pthread-stubs smime3 softokn3 soup-2.4 sqlite3
WANTLIB +=  ssl ssl3 stdc++ tasn1 telepathy telepathy-glib util xcb xml2 z

MODULES=		devel/gconf2 \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		::devel/iso-codes \
			::x11/py-gtk2
LIB_DEPENDS=		camel-1.2,ebook-1.2,edataserver-1.2::databases/evolution-data-server \
			missioncontrol-client::net/telepathy/telepathy-mission-control \
			panel-applet-2::x11/gnome/panel \
			enchant.>=5::textproc/enchant
RUN_DEPENDS=		::net/telepathy/telepathy-gabble \
			::net/telepathy/telepathy-haze \
			::net/telepathy/telepathy-idle \
			::x11/hicolor-icon-theme \
			::x11/py-gtk2

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	empathy

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-scrollkeeper \
			--disable-aspell \
			--disable-voip \
			--enable-nothere \
			--enable-megaphone \
			--enable-python=Yes \
			--enable-tests=no
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	@ln -s ${LOCALBASE}/bin/python${MODPY_VERSION}-config ${WRKDIR}/bin/python-config

.include <bsd.port.mk>
