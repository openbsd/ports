# $OpenBSD: Makefile,v 1.13 2015/08/19 20:13:59 sthen Exp $

COMMENT =	python bindings for pigment

CATEGORIES =	graphics

V=		0.3.12
DISTNAME =	pigment-python-$V
PKGNAME =	py-pigment-$V
REVISION=	6
MASTER_SITES =	http://elisa.fluendo.com/static/download/pigment/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE =	https://code.fluendo.com/pigment/trac

MODULES =	lang/python \
		devel/gettext

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			CPPFLAGS="-I${X11BASE}/include  -L${LOCALBASE}/include"

USE_GMAKE =	Yes

RUN_DEPENDS =	multimedia/gstreamer-0.10/py-gstreamer
BUILD_DEPENDS +=	${RUN_DEPENDS}

LIB_DEPENDS =	graphics/pigment

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat ffi fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb z xml2
WANTLIB += gstvideo-0.10 gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0 
WANTLIB += gstbase-0.10 gstreamer-0.10
WANTLIB += pigment-0.3 pigment-gtk-0.3 pigment-imaging-0.3
WANTLIB += xcb-render xcb-shm
WANTLIB += graphite2 harfbuzz lzma orc-0.4 pthread

.include <bsd.port.mk>
