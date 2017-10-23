# $OpenBSD: Makefile,v 1.5 2017/10/23 17:11:03 sthen Exp $

COMMENT =	main plugins for compiz

V =		0.8.8
DISTNAME =	compiz-plugins-main-${V}
REVISION =	3

MASTER_SITES =	http://releases.compiz.org/${V}/

WANTLIB += GL GLU ICE SM X11 X11-xcb Xcomposite Xdamage Xext Xfixes
WANTLIB += Xinerama Xrandr Xrender cairo expat ffi fontconfig freetype
WANTLIB += glib-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += harfbuzz jpeg lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread
WANTLIB += startup-notification-1 xcb xcb-render xcb-shm xcb-util xml2
WANTLIB += xslt z Xxf86vm drm glapi xcb-dri2 xcb-glx

MODULES =	devel/gettext \
		textproc/intltool

USE_GMAKE =	Yes

LIBTOOL_FLAGS =	--tag=disable-static

BUILD_DEPENDS = x11/compiz/bcop \
		x11/compiz/core
RUN_DEPENDS =	x11/compiz/core

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@rm -f ${PREFIX}/lib/compiz/*.la

.include <bsd.port.mk>
