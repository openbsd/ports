REVISION =	0

COMMENT =	circuit simulator, based on Berkeley SPICE

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xau Xaw Xdmcp Xext Xft
WANTLIB += Xmu Xpm Xrender Xt c curses expat fftw3 fontconfig
WANTLIB += freetype m readline xcb z

CONFIGURE_ARGS +=	--with-x

LIB_DEPENDS =	math/fftw3

.include <bsd.port.mk>
