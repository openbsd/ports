# $OpenBSD: Makefile,v 1.42 2014/07/16 13:13:49 espie Exp $

COMMENT =		canvas API for X

VERSION = 		1.7.9
DISTNAME =		evas-${VERSION}
REVISION =		1
EPOCH =			2

SHARED_LIBS +=	evas                 3.0      # 8.6

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL X11 X11-xcb Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm
WANTLIB += crypto drm
WANTLIB += eet eina expat fontconfig freetype fribidi gif glapi
WANTLIB += glib-2.0 graphite2 harfbuzz
WANTLIB += jpeg m pcre png pthread pthread-stubs ssl stdc++
WANTLIB += tiff xcb xcb-dri2 xcb-glx

MODULES=		devel/gettext \
			x11/e17

MODE17_PURGE_LA =	lib/evas/modules

LIB_DEPENDS =		x11/e17/eet>=1.7.9v2 \
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
