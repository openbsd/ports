# $OpenBSD: Makefile,v 1.65 2020/04/05 15:44:53 naddy Exp $

COMMENT =		canvas API for X

VERSION =		1.7.10
DISTNAME =		evas-${VERSION}
EPOCH =			2
REVISION =		15

SHARED_LIBS +=	evas                 4.0      # 8.10

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += GL X11 X11-xcb Xau Xdamage Xdmcp Xext Xfixes Xrender
WANTLIB += Xxf86vm c crypto drm eet eina expat fontconfig freetype
WANTLIB += fribidi gif glapi glib-2.0 graphite2 harfbuzz iconv intl jpeg
WANTLIB += m pcre png pthread ssl ${COMPILER_LIBCXX} tiff xcb
WANTLIB += xcb-dri2 xcb-glx z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		x11/e17

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
			--disable-wayland-egl \
			--disable-cpu-neon

CONFIGURE_ENV +=	CXXFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
