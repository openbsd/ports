COMMENT=		SDL2 wrapper around the Pango library

V=			2.1.5
GH_ACCOUNT=		markuskimius
GH_PROJECT=		SDL2_Pango
GH_TAGNAME=		v${V}
DISTNAME=		sdl2-pango-${V}

SHARED_LIBS +=	SDL2_Pango                0.0 # 5.0

CATEGORIES=		devel graphics

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 X11 Xcursor Xext Xfixes Xi
WANTLIB += Xrandr Xrender Xss expat ffi fontconfig freetype fribidi
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += harfbuzz iconv intl m pango-1.0 pangoft2-1.0 pcre2-8
WANTLIB += samplerate sndio usbhid xcb z

LIB_DEPENDS=		devel/pango \
			devel/sdl2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
