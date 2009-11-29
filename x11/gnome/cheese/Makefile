# $OpenBSD: Makefile,v 1.27 2009/11/29 09:19:45 ajacoutot Exp $

COMMENT=	PhotoBooth inspired application

GNOME_PROJECT=	cheese
GNOME_VERSION=	2.28.1
PKGNAME=	${DISTNAME}p0

CATEGORIES=	multimedia

HOMEPAGE=	http://projects.gnome.org/cheese/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender asn1 atk-1.0 bonobo-2 bonobo-activation bz2
WANTLIB += c cairo com_err croco-0.6 crypto dbus-1 dbus-glib-1
WANTLIB += execinfo expat fontconfig freetype gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gnutls
WANTLIB += gobject-2.0 gpg-error gsf-1 gssapi gthread-2.0 gtk-x11-2.0
WANTLIB += krb5 m nspr4 nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 ssl3 startup-notification-1 tasn1
WANTLIB += xcb xcb-atom xcb-aux xcb-event xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	camel-1.2.>=11,ebook-1.2,edataserver-1.2,smime3,softokn3::databases/evolution-data-server \
		rsvg-2.>=20::x11/gnome/librsvg \
		gstinterfaces-0.10,gstreamer-0.10:gstreamer-plugins-base->=0.10.25:multimedia/gstreamer-0.10/plugins-base \
		gnome-desktop-2.>=7::x11/gnome/desktop
RUN_DEPENDS=	::multimedia/gstreamer-0.10/plugins-base \
		::multimedia/gstreamer-0.10/plugins-good

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES=Yes
MODGCONF2_SCHEMAS_DIR= cheese

FAKE_FLAGS=	schemadir=${LOCALBASE}/share/schemas/cheese

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-scrollkeeper

.include <bsd.port.mk>
