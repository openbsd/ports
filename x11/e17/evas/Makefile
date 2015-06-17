# $OpenBSD: Makefile,v 1.45 2015/06/17 20:03:11 sthen Exp $

COMMENT =		canvas API for X

VERSION =		1.7.10
DISTNAME =		evas-${VERSION}
EPOCH =			2
REVISION =		0

SHARED_LIBS +=	evas                 4.0      # 8.10

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL X11 X11-xcb Xau Xdamage Xdmcp Xext Xfixes Xrender
WANTLIB += Xxf86vm c crypto drm eet eina expat fontconfig freetype
WANTLIB += fribidi gif glapi glib-2.0 graphite2 harfbuzz jpeg
WANTLIB += m pcre png pthread pthread-stubs ssl stdc++ tiff xcb
WANTLIB += xcb-dri2 xcb-glx z

MODULES=		devel/gettext \
			x11/e17

MODE17_PURGE_LA =	lib/evas/modules

LIB_DEPENDS =		x11/e17/eet>=1.7.10v2 \
			graphics/giflib \
			graphics/png \
			graphics/tiff \
			graphics/jpeg \
			devel/harfbuzz \
			devel/glib2 \
			devel/fribidi

CONFIGURE_ARGS +=	--disable-doc \
			--enable-no-dither-mask \
			--enable-small-dither-mask \
			--enable-line-dither-mask \
			--disable-wayland-shm \
			--disable-wayland-egl

CONFIGURE_ENV +=	CXXFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
