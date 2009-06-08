# $OpenBSD: Makefile,v 1.24 2009/06/08 17:59:14 ajacoutot Exp $

# XXX
# (empathy:10245): Gtk-WARNING **: could not load image: Icon 'im-xmpp' not present in theme

COMMENT= 		telepathy based messenger for GNOME

GNOME_PROJECT=		empathy
GNOME_VERSION=		2.24.1
PKGNAME=		${DISTNAME}p11

SHARED_LIBS +=	empathy              1.0      # .16.4
SHARED_LIBS +=	empathy-gtk          1.0      # .15.6
CATEGORIES=		net

HOMEPAGE=		http://live.gnome.org/Empathy

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite Xcursor \
		Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		art_lgpl_2 asn1 atk-1.0 bonobo-2 bonobo-activation stdc++ \
		bonoboui-2 c cairo com_err crypto dbus-1 dbus-glib-1 \
		expat fontconfig freetype gailutil gcrypt gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 \
		gnome-2 gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 \
		gnutls gobject-2.0 gpg-error gssapi gthread-2.0 gtk-x11-2.0 \
		krb5 m nspr4 nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 plc4 plds4 png popt pthread smime3 softokn3 \
		soup-2.4 sqlite3 ssl ssl3 tasn1 telepathy telepathy-glib \
		util xml2 z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		::devel/iso-codes \
			::x11/py-gtk2
LIB_DEPENDS=		camel-1.2,ebook-1.2,edataserver-1.2::databases/evolution-data-server \
			missioncontrol-client::net/telepathy/telepathy-mission-control \
			panel-applet-2::x11/gnome/panel \
			enchant.>=5::textproc/enchant
RUN_DEPENDS=		::net/telepathy/telepathy-butterfly \
			::net/telepathy/telepathy-gabble \
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
