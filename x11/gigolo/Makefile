# $OpenBSD: Makefile,v 1.18 2014/01/02 13:28:22 landry Exp $

COMMENT =	GVfs mountpoint manager

XFCE_VERSION =	0.4.1
XFCE_GOODIE =	gigolo
REVISION=	5

CATEGORIES =	x11

MAINTAINER =	Landry Breuil <landry@openbsd.org>

HOMEPAGE =	http://www.uvena.de/gigolo/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	x11/xfce4
NO_TEST =	Yes
MODXFCE_DESKTOP_FILE =	Yes
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11
CONFIGURE_STYLE =	gnu
RUN_DEPENDS +=	x11/gnome/gvfs
LIB_DEPENDS =	x11/gtk+2

pre-configure:
	# remove waf wrapper
	rm -f ${WRKSRC}/configure
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread
WANTLIB += z gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0

.include <bsd.port.mk>
