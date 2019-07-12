# $OpenBSD: Makefile,v 1.61 2019/07/12 20:47:41 sthen Exp $

COMMENT=	GTK-based scientific calculator

GH_ACCOUNT=	galculator
GH_PROJECT=	galculator
GH_TAGNAME=	v2.1.4
REVISION=	4

CATEGORIES=	math
HOMEPAGE=	http://galculator.mnim.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB+= Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c cairo
WANTLIB+= cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB+= fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB+= gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl m
WANTLIB+= pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB+= pthread xcb xcb-render xcb-shm z

MODULES=	textproc/intltool

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS=	devel/gettext,-runtime \
		x11/gtk+3

AUTOCONF_VERSION=2.69
AUTOMAKE_VERSION=1.15
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-quadmath
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}
CONFIGURE_SCRIPT=autogen.sh

.include <bsd.port.mk>
