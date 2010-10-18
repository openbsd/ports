# $OpenBSD: Makefile,v 1.10 2010/10/18 18:00:17 espie Exp $

COMMENT=	OpenGL game based on SNES classic Tetris Attack

DISTNAME=	crack-attack-1.1.14
CATEGORIES=	games

MAINTAINER=	Mattieu Baptiste <mattieu.b@free.fr>

HOMEPAGE=	http://www.nongnu.org/crack-attack/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REVISION = 6
WANTLIB = GL GLU ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
	Xi Xinerama Xmu Xrandr Xrender atk-1.0 c cairo expat fontconfig \
	freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glut.>=4 \
	gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 \
	pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread pthread-stubs \
	stdc++ xcb xcb-render xcb-render-util z

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=crack-attack/}

MODULES=	devel/gettext

LIB_DEPENDS=	::x11/gtk+2 \
		::graphics/freeglut

USE_X11=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
