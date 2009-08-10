# $OpenBSD: Makefile,v 1.10 2009/08/10 06:31:08 kili Exp $

COMMENT=	SDL wrapper around the Pango library

V=		0.1.2
DISTNAME=	SDL_Pango-${V}
PKGNAME=	sdl-pango-${V}p5
SHARED_LIBS=	SDL_Pango 0.0	# .2.0
CATEGORIES=	devel x11

HOMEPAGE=	http://sdlpango.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sdlpango/}
MASTER_SITES0=	http://zarb.org/~gc/t/

PATCHFILES=	SDL_Pango-0.1.2-API-adds.patch:0

WANTLIB=	X11 Xau Xdmcp Xext Xrandr Xrender expat fontconfig freetype \
		iconv m usbhid z pcre glib-2.0 gmodule-2.0 gobject-2.0 sndio \
		pthread-stubs xcb

LIB_DEPENDS=	SDL.>=7::devel/sdl \
		pango-1.0.>=1.3,pangoft2-1.0.>=1.3::devel/pango

MODULES=	devel/gettext gcc4

MODGCC4_ARCHES= powerpc
MODGCC4_LANGS=  c

USE_X11=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

# This regression test wants an X11 display
REGRESS_IS_INTERACTIVE=	Yes
REGRESS_FLAGS=	DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdl-pango
	${INSTALL_DATA} ${WRKSRC}/docs/html/{*.html,*.css,*.png} \
		${PREFIX}/share/doc/sdl-pango

do-regress:
	cd ${WRKSRC}/test && \
	${CXX} -o testbench testbench.c \
		-I../src `sdl-config --cflags` \
		`sdl-config --libs` -L../src/.libs -lSDL_Pango && \
	${SETENV} ${ALL_REGRESS_FLAGS} LD_LIBRARY_PATH=${WRKBUILD}/src/.libs ./testbench markup.txt

.include <bsd.port.mk>
