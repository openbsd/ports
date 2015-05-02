# $OpenBSD: Makefile,v 1.16 2015/05/02 11:02:45 sthen Exp $

COMMENT =	Gtk debugging tool

GH_ACCOUNT =	chipx86
GH_PROJECT =	gtkparasite
GH_COMMIT =	58e57ddaf6666753bd403c40da14bc919bec9589
DISTNAME =	${GH_PROJECT}-0.2.0
CATEGORIES =	devel

HOMEPAGE =	http://chipx86.github.com/gtkparasite/

SHARED_ONLY =	Yes

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/gettext \
		lang/python

AUTOCONF_VERSION =	2.65
AUTOMAKE_VERSION =	1.11
LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		x11/gtk+2

RUN_DEPENDS =	x11/py-gtk2
BUILD_DEPENDS+=	${RUN_DEPENDS} \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool \
		x11/gnome/common

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat ffi fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 xcb-shm
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 gthread-2.0
WANTLIB += pcre pixman-1 png pthread-stubs util xcb z gdk_pixbuf-2.0
WANTLIB += ${MODPY_WANTLIB} gtk-x11-2.0 gdk-x11-2.0 xcb-render
WANTLIB += graphite2 harfbuzz pthread

CONFIGURE_STYLE =	gnu

pre-configure:
	cd ${WRKSRC} && env AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} sh ./autogen.sh

.include <bsd.port.mk>
