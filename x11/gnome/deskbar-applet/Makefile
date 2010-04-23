# $OpenBSD: Makefile,v 1.28 2010/04/23 23:45:29 jasper Exp $

COMMENT=	universal search and navigation for GNOME

GNOME_PROJECT=	deskbar-applet
GNOME_VERSION=	2.30.0

CATEGORIES=	sysutils

HOMEPAGE=	http://projects.gnome.org/deskbar-applet/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender asn1 atk-1.0
WANTLIB += cairo com_err crypto dbus-1 dbus-glib-1 execinfo expat
WANTLIB += fontconfig freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gnutls gobject-2.0
WANTLIB += gpg-error gssapi gthread-2.0 gtk-x11-2.0 krb5 m nspr4
WANTLIB += nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png pthread-stubs smime3 soup-2.4 sqlite3
WANTLIB += ssl3 startup-notification-1 tasn1 xcb xcb-atom xcb-aux
WANTLIB += xcb-event xcb-render xcb-render-util xml2 z

MODULES=	devel/gettext \
		lang/python \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	::x11/dbus-python \
		::x11/gnome/py-gnome-desktop
RUN_DEPENDS=	::x11/dbus-python \
		::x11/gnome/py-gnome-desktop \
		::devel/py-simplejson
LIB_DEPENDS=	camel-1.2,ebook-1.2,edataserver-1.2::databases/evolution-data-server \
		ffi::devel/libffi \
		gnome-desktop-2.>=7::x11/gnome/desktop

MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	deskbar-applet

CONFIGURE_ARGS= --enable-evolution
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/deskbar/deskbar-applet.py

.include <bsd.port.mk>
