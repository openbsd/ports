COMMENT =	circuit simulator, based on Berkeley SPICE

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xau Xaw Xdmcp Xext Xft
WANTLIB += Xmu Xpm Xrender Xt c curses expat fontconfig freetype
WANTLIB += m readline xcb z

CONFIGURE_ARGS +=	--with-x

.include <bsd.port.mk>
