COMMENT =	main plugins for compiz

V =		0.8.8
DISTNAME =	compiz-plugins-main-${V}
REVISION =	5

MASTER_SITES =	http://releases.compiz.org/${V}/

WANTLIB =  GL GLU ICE SM X11 X11-xcb Xcomposite Xdamage Xext Xfixes
WANTLIB += Xinerama Xrandr Xrender Xxf86vm cairo drm expat ffi
WANTLIB += fontconfig freetype glapi glib-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 harfbuzz iconv intl jpeg lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += startup-notification-1 xcb xcb-dri2 xcb-glx xcb-render
WANTLIB += xcb-shm xcb-util xml2 xslt z

MODULES =	textproc/intltool

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
