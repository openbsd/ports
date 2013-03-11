# $OpenBSD: Makefile,v 1.20 2013/03/11 11:07:41 espie Exp $

COMMENT=	drawing program for children

DISTNAME=	tuxpaint-0.9.21
REVISION=	4
CATEGORIES=	games graphics

HOMEPAGE=	http://www.tuxpaint.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tuxpaint/}

WANTLIB += SDL X11 Xau Xdmcp Xrender c cairo expat fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 m pixman-1 png pthread pthread-stubs xcb
WANTLIB += z gio-2.0 gthread-2.0 xcb-render SDL_image>=2
WANTLIB += SDL_mixer>=3 SDL_ttf>=7 rsvg-2>=18 paper SDL_Pango
WANTLIB += fribidi GL Xdamage Xext Xfixes Xxf86vm drm xcb-shm

MODULES=	devel/gettext
LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-ttf>=2.0.8 \
		x11/gnome/librsvg \
		print/libpaper \
		devel/sdl-pango \
		devel/fribidi
RUN_DEPENDS=	graphics/netpbm \
		devel/desktop-file-utils

USE_GMAKE=	Yes
USE_GROFF=	Yes

MAKE_ENV+=	SYSCONFDIR=${SYSCONFDIR} OPTFLAGS="${CFLAGS}"
CFLAGS+=	-DHAVE_STRCASESTR

NO_TEST=	Yes

pre-configure:
	@perl -pi -e 's,@\$$\(CC\),\$$\(CC\),g' ${WRKSRC}/Makefile
	${SUBST_CMD} ${WRKSRC}/src/manpage/tuxpaint.1

post-install:
	chmod -R og+rX ${PREFIX}/share/doc/tuxpaint/tuxpaint-dev

.include <bsd.port.mk>
