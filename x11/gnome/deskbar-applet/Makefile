# $OpenBSD: Makefile,v 1.39 2011/04/08 17:02:45 ajacoutot Exp $

COMMENT=	universal search and navigation for GNOME

GNOME_PROJECT=	deskbar-applet
GNOME_VERSION=	2.32.0
REVISION=	3

CATEGORIES=	sysutils

HOMEPAGE=	http://projects.gnome.org/deskbar-applet/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += asn1 atk-1.0 cairo camel-1.2 com_err crypto dbus-1
WANTLIB += drm ebook-1.2 edataserver-1.2 execinfo expat ffi fontconfig
WANTLIB += freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-desktop-2 gnutls gobject-2.0
WANTLIB += gpg-error gssapi gthread-2.0 gtk-x11-2.0 krb5 m nspr4
WANTLIB += nss3 nssutil3 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread-stubs smime3 soup-2.4
WANTLIB += sqlite3 ssl3 startup-notification-1 tasn1 xcb xcb-atom
WANTLIB += xcb-aux xcb-event xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		lang/python \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	x11/dbus-python \
		x11/gnome/py-gnome-desktop
RUN_DEPENDS=	x11/dbus-python \
		x11/gnome/py-gnome-desktop \
		devel/py-simplejson
LIB_DEPENDS=	databases/evolution-data-server \
		devel/libffi \
		x11/gnome/desktop

MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	deskbar-applet

CONFIGURE_ARGS= ${CONFIGURE_SHARED} \
		--enable-evolution
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/deskbar/deskbar-applet.py \
		${WRKSRC}/deskbar/core/Utils.py \
		${WRKSRC}/deskbar/handlers/mozilla.py

.include <bsd.port.mk>
