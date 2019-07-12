# $OpenBSD: Makefile,v 1.28 2019/07/12 20:46:25 sthen Exp $

COMMENT=		drawing program for children

DISTNAME=		tuxpaint-0.9.23
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
			devel/gperf

LIB_DEPENDS=		devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf \
			devel/sdl-pango \
			print/libpaper \
			x11/gnome/librsvg

RUN_DEPENDS=		devel/desktop-file-utils \
			graphics/netpbm

USE_GMAKE=		Yes

MAKE_ENV=		linux_ARCH_CFLAGS="${CFLAGS} -DHAVE_STRCASESTR \
			-I${LOCALBASE}/include"

NO_TEST=		Yes

pre-configure:
	ln -sf /usr/bin/true ${WRKDIR}/bin/kbuildsycoca4
	sed -i 's,@\$$\(CC\),\$$\(CC\),g' ${WRKSRC}/Makefile
	${SUBST_CMD} ${WRKSRC}/Makefile ${WRKSRC}/src/manpage/tuxpaint.1

.include <bsd.port.mk>
