# $OpenBSD: Makefile,v 1.20 2017/07/26 22:45:20 sthen Exp $

COMMENT=	OpenGL game based on SNES classic Tetris Attack

DISTNAME=	crack-attack-1.1.14
REVISION=	10
CATEGORIES=	games

MAINTAINER=	Mattieu Baptiste <mattieu.b@free.fr>

HOMEPAGE=	http://www.nongnu.org/crack-attack/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB = GL GLU ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes \
	Xi Xinerama Xmu Xrandr Xrender atk-1.0 c cairo expat fontconfig \
	freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glut>=4 \
	gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
	pixman-1 png pthread pthread-stubs ${COMPILER_LIBCXX} xcb xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=crack-attack/}

MODULES=	devel/gettext

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	x11/gtk+2 \
		graphics/freeglut

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications ${PREFIX}/share/pixmaps
	cd ${WRKSRC}/data; \
	    ${INSTALL_DATA} crack-attack.desktop ${PREFIX}/share/applications; \
	    ${INSTALL_DATA} crack-attack.xpm ${PREFIX}/share/pixmaps

.include <bsd.port.mk>
