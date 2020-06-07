# $OpenBSD: Makefile,v 1.30 2020/06/07 11:41:05 ajacoutot Exp $

COMMENT=		drawing program for children

DISTNAME=		tuxpaint-0.9.24
REVISION=		0

CATEGORIES=		games graphics

HOMEPAGE=		http://www.tuxpaint.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += SDL SDL_Pango SDL_image SDL_mixer SDL_ttf c cairo fribidi
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 intl m
WANTLIB += paper png pthread rsvg-2 z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=tuxpaint/}


BUILD_DEPENDS=		devel/gettext,-tools \
			devel/gperf \
			graphics/ImageMagick

LIB_DEPENDS=		devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf \
			devel/sdl-pango \
			print/libpaper \
			x11/gnome/librsvg

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic

USE_GMAKE=		Yes

MAKE_ENV=		linux_ARCH_CFLAGS="${CFLAGS} -DHAVE_STRCASESTR \
			-I${LOCALBASE}/include"

NO_TEST=		Yes

DEBUG_PACKAGES=		${BUILD_PACKAGES}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile ${WRKSRC}/src/manpage/tuxpaint.1

.include <bsd.port.mk>
