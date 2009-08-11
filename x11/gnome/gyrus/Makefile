# $OpenBSD: Makefile,v 1.3 2009/08/11 08:39:38 ajacoutot Exp $

COMMENT=	Cyrus imapd administration GUI

GNOME_PROJECT=	gyrus
GNOME_VERSION=	0.3.8
PKGNAME=	${DISTNAME}p1

CATEGORIES=	mail

HOMEPAGE=	http://projects.gnome.org/gyrus/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread xml2 z pthread-stubs xcb

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	gconf-2.>=6::devel/gconf2 \
		gnet-2.0.>=1::net/gnet \
		glade-2.0.>=1::devel/libglade2

USE_X11=	Yes
DESKTOP_FILES=	Yes

# secure connection not fully implemented yet
CONFIGURE_ARGS=	--disable-gnutls
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	echo "Icon=${TRUEPREFIX}/share/gyrus/pixmaps/logo_gyrus.png" \
		>> ${PREFIX}/share/applications/gyrus.desktop

.include <bsd.port.mk>
