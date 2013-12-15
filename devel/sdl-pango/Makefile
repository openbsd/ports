# $OpenBSD: Makefile,v 1.18 2013/12/15 03:10:18 brad Exp $

COMMENT=	SDL wrapper around the Pango library

V=		0.1.2
DISTNAME=	SDL_Pango-${V}
PKGNAME=	sdl-pango-${V}
REVISION=	8
CATEGORIES=	devel x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sdlpango/}
MASTER_SITES0=	http://zarb.org/~gc/t/

PATCHFILES=	SDL_Pango-0.1.2-API-adds.patch:0

SHARED_LIBS=	SDL_Pango	0.0 # .2.0

HOMEPAGE=	http://sdlpango.sourceforge.net/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	SDL expat ffi fontconfig freetype glib-2.0 gmodule-2.0 \
		gobject-2.0 graphite2 gthread-2.0 harfbuzz m pango-1.0 \
		pangoft2-1.0 pcre pthread-stubs pthread sndio usbhid z

MODULES=	devel/gettext
LIB_DEPENDS=	devel/pango \
		devel/sdl

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

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
