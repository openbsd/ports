# $OpenBSD: Makefile,v 1.21 2019/05/19 19:13:46 naddy Exp $

COMMENT =	Gtk debugging tool

GH_ACCOUNT =	chipx86
GH_PROJECT =	gtkparasite
GH_COMMIT =	58e57ddaf6666753bd403c40da14bc919bec9589
DISTNAME =	${GH_PROJECT}-0.2.0
CATEGORIES =	devel
REVISION =	2

HOMEPAGE =	http://chipx86.github.com/gtkparasite/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 cairo expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread util xcb xcb-render xcb-shm z

MODULES =	lang/python

AUTOCONF_VERSION =	2.65
AUTOMAKE_VERSION =	1.11
LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		x11/gtk+2

RUN_DEPENDS =	x11/py-gtk2

BUILD_DEPENDS =	x11/py-gtk2

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
