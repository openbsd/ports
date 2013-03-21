# $OpenBSD: Makefile,v 1.14 2013/03/21 08:45:15 ajacoutot Exp $

COMMENT =	Gtk debugging tool

DISTNAME =	gtkparasite-0.0.1
REVISION=	7
CATEGORIES =	devel

HOMEPAGE =	http://chipx86.github.com/gtkparasite/

# unreleased, so host a git snapshot labelled 0.0.1
MASTER_SITES =	http://rhaalovely.net/stuff/

SHARED_ONLY =	Yes

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/gettext \
		lang/python

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		x11/gtk+2

RUN_DEPENDS =	x11/py-gtk2
BUILD_DEPENDS+=	${RUN_DEPENDS}

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat ffi fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 xcb-shm
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 gthread-2.0
WANTLIB += pcre pixman-1 png pthread-stubs util xcb z gdk_pixbuf-2.0
WANTLIB += ${MODPY_WANTLIB} gtk-x11-2.0 gdk-x11-2.0 drm xcb-render
WANTLIB += GL Xxf86vm stdc++

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
