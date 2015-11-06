# $OpenBSD: Makefile,v 1.14 2015/11/06 15:00:38 ajacoutot Exp $

COMMENT =		python bindings for pigment

CATEGORIES =		graphics

V=			0.3.12
DISTNAME =		pigment-python-$V
PKGNAME =		py-pigment-$V
REVISION =		7
MASTER_SITES =		http://elisa.fluendo.com/static/download/pigment/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gstbase-0.10 gstreamer-0.10 gstvideo-0.10
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz lzma m orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pigment-0.3 pigment-gtk-0.3
WANTLIB += pigment-imaging-0.3 pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm xml2 z

HOMEPAGE =		https://code.fluendo.com/pigment/trac

MODULES =		lang/python \
			devel/gettext

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			CPPFLAGS="-I${X11BASE}/include  -L${LOCALBASE}/include"

USE_GMAKE =		Yes

RUN_DEPENDS =		multimedia/gstreamer-0.10/py-gstreamer
BUILD_DEPENDS =		multimedia/gstreamer-0.10/py-gstreamer

LIB_DEPENDS =		graphics/pigment


.include <bsd.port.mk>
