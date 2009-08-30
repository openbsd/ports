# $OpenBSD: Makefile,v 1.26 2009/08/30 11:29:53 ajacoutot Exp $

COMMENT=		universal search and navigation for GNOME

GNOME_VERSION=		2.24.3
GNOME_PROJECT=		deskbar-applet
PKGNAME=		${DISTNAME}p11

CATEGORIES=		sysutils

HOMEPAGE=		http://projects.gnome.org/deskbar-applet/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			lang/python \
			x11/gnome \
			devel/gconf2

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 asn1 atk-1.0 avahi-client \
		avahi-common avahi-glib bonobo-2 \
		bonobo-activation bonoboui-2 cairo com_err crypto dbus-1 \
		dbus-glib-1 expat fontconfig freetype gailutil \
		gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gnome-2 gnome-desktop-2 gnome-keyring \
		gnomecanvas-2 gnomeui-2 gnomevfs-2 gnutls gobject-2.0 \
		gpg-error gssapi pthread-stubs xcb \
		gthread-2.0 gtk-x11-2.0 krb5 m nspr4 nss3 pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4 \
		png popt smime3 softokn3 soup-2.4 sqlite3 ssl ssl3 \
		startup-notification-1 tasn1 util xml2 z

BUILD_DEPENDS=		::x11/dbus-python \
			::x11/gnome/py-gnome-desktop
RUN_DEPENDS=		::mail/evolution \
			::x11/dbus-python \
			::x11/gnome/py-gnome-desktop \
			::devel/py-simplejson
LIB_DEPENDS=		camel-1.2,ebook-1.2,edataserver-1.2::databases/evolution-data-server

MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	deskbar-applet

CONFIGURE_ARGS+=	--enable-evolution
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/deskbar/deskbar-applet.py

.include <bsd.port.mk>
