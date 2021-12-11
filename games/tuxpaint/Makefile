# $OpenBSD: Makefile,v 1.33 2021/12/11 11:35:37 ajacoutot Exp $

COMMENT=		drawing program for children

DISTNAME=		tuxpaint-0.9.27

CATEGORIES=		games graphics

HOMEPAGE=		http://www.tuxpaint.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += SDL SDL_Pango SDL_gfx SDL_image SDL_mixer SDL_ttf c
WANTLIB += cairo fribidi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += harfbuzz imagequant intl m pango-1.0 paper png pthread
WANTLIB += rsvg-2 z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=tuxpaint/}

BUILD_DEPENDS=		devel/gettext,-tools \
			devel/gperf \
			graphics/ImageMagick

LIB_DEPENDS=		devel/sdl-gfx \
			devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf \
			devel/sdl-pango \
			graphics/libimagequant \
			print/libpaper \
			x11/gnome/librsvg

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic

USE_GMAKE=		Yes

MAKE_ENV=		linux_ARCH_CFLAGS="${CFLAGS} -DHAVE_STRCASESTR \
			-I${LOCALBASE}/include"

NO_TEST=		Yes

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
