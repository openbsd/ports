COMMENT=	SDL wrapper around the Pango library

V=		0.1.2
DISTNAME=	SDL_Pango-${V}
PKGNAME=	sdl-pango-${V}
REVISION=	16

CATEGORIES=	devel x11

SHARED_LIBS +=  SDL_Pango            0.0      # 2.0

HOMEPAGE=	http://sdlpango.sourceforge.net/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

SITES=		${SITE_SOURCEFORGE:=sdlpango/}

WANTLIB += ${COMPILER_LIBCXX} SDL expat ffi fontconfig freetype
WANTLIB += fribidi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += harfbuzz iconv intl m pango-1.0 pangoft2-1.0 pcre2-8 sndio
WANTLIB += usbhid z

FIX_CRLF_FILES=	src/SDL_Pango.h

LIB_DEPENDS=	devel/pango \
		devel/sdl

CONFIGURE_STYLE=gnu

TEST_IS_INTERACTIVE=	x11

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdl-pango
	${INSTALL_DATA} ${WRKSRC}/docs/html/{*.html,*.css,*.png} \
		${PREFIX}/share/doc/sdl-pango

do-test:
	cd ${WRKSRC}/test && \
	${CXX} -o testbench testbench.c \
		-I../src `sdl-config --cflags` \
		`sdl-config --libs` -L../src/.libs -lSDL_Pango && \
	${SETENV} ${ALL_TEST_FLAGS} LD_LIBRARY_PATH=${WRKBUILD}/src/.libs ./testbench markup.txt

.include <bsd.port.mk>
