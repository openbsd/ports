# $OpenBSD: Makefile,v 1.18 2010/11/26 07:20:12 espie Exp $

COMMENT=	drawing program for children

DISTNAME=	tuxpaint-0.9.21
REVISION=	3
CATEGORIES=	games graphics

HOMEPAGE=	http://www.tuxpaint.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tuxpaint/}

WANTLIB += SDL X11 Xau Xdmcp Xrender c cairo expat fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 m pixman-1 png pthread pthread-stubs xcb
WANTLIB += z gio-2.0 gthread-2.0 xcb-render xcb-render-util
WANTLIB += SDL_image>=2 SDL_mixer>=3 SDL_ttf>=7 rsvg-2>=18
WANTLIB += paper utf8>=1 SDL_Pango fribidi

MODULES=	devel/gettext
LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-ttf>=2.0.8 \
		x11/gnome/librsvg \
		print/libpaper \
		misc/libutf8 \
		devel/sdl-pango \
		devel/fribidi
RUN_DEPENDS=	graphics/netpbm \
		devel/desktop-file-utils

USE_GMAKE=	Yes
USE_GROFF =	Yes

MAKE_ENV+=	SYSCONFDIR=${SYSCONFDIR} OPTFLAGS="${CFLAGS}"
CFLAGS+=	-DHAVE_STRCASESTR

NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e 's,@\$$\(CC\),\$$\(CC\),g' ${WRKSRC}/Makefile
	${SUBST_CMD} ${WRKSRC}/src/manpage/tuxpaint.1

.include <bsd.port.mk>
