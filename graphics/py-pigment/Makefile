# $OpenBSD: Makefile,v 1.11 2013/03/11 11:10:55 espie Exp $

COMMENT =	python bindings for pigment

CATEGORIES =	graphics

V=		0.3.12
DISTNAME =	pigment-python-$V
PKGNAME =	py-pigment-$V
REVISION=	5
MASTER_SITES =	http://elisa.fluendo.com/static/download/pigment/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE =	https://code.fluendo.com/pigment/trac

MODULES =	lang/python \
		devel/gettext

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			CPPFLAGS="-I${X11BASE}/include  -L${LOCALBASE}/include"

USE_LIBTOOL =	Yes
USE_GMAKE =	Yes

RUN_DEPENDS =	multimedia/gstreamer-0.10/py-gstreamer
BUILD_DEPENDS +=	${RUN_DEPENDS}

LIB_DEPENDS =	graphics/pigment

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat ffi fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb z xml2
WANTLIB += gstvideo-0.10 gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0 
WANTLIB += gstbase-0.10 gstreamer-0.10
WANTLIB += pigment-0.3 pigment-gtk-0.3 pigment-imaging-0.3
WANTLIB += GL Xxf86vm drm stdc++ xcb-render xcb-shm

.include <bsd.port.mk>
