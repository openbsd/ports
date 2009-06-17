# $OpenBSD: Makefile,v 1.6 2009/06/17 01:53:32 sthen Exp $

COMMENT=	OpenGL game based on SNES classic Tetris Attack

DISTNAME=	crack-attack-1.1.14
PKGNAME=	${DISTNAME}p3
CATEGORIES=	games

MAINTAINER=	Mattieu Baptiste <mattieu.b@free.fr>

HOMEPAGE=	http://www.nongnu.org/crack-attack/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	GL GLU ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xcomposite \
		Xdamage Xinerama Xrandr Xrender Xi Xmu c expat fontconfig \
		freetype m stdc++ z atk-1.0 cairo gio-2.0 gobject-2.0 \
		glib-2.0 gmodule-2.0 glitz png pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=crack-attack/}

MODULES=	devel/gettext

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		glut.>=4::graphics/freeglut

USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
