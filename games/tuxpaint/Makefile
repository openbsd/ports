# $OpenBSD: Makefile,v 1.21 2014/09/04 11:56:52 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	drawing program for children

DISTNAME=	tuxpaint-0.9.22
CATEGORIES=	games graphics

HOMEPAGE=	http://www.tuxpaint.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tuxpaint/}

WANTLIB += SDL SDL_Pango SDL_image SDL_mixer SDL_ttf c cairo fribidi
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 m paper
WANTLIB += png pthread rsvg-2 z

MODULES=	devel/gettext

BUILD_DEPENDS=	devel/gperf

LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-ttf \
		x11/gnome/librsvg \
		print/libpaper \
		devel/sdl-pango \
		devel/fribidi

RUN_DEPENDS=	graphics/netpbm \
		devel/desktop-file-utils

USE_GMAKE=	Yes

MAKE_ENV=	SYSCONFDIR=${SYSCONFDIR} OPTFLAGS="${CFLAGS}"
CFLAGS=		-DHAVE_STRCASESTR

NO_TEST=	Yes

pre-configure:
	@perl -pi -e 's,@\$$\(CC\),\$$\(CC\),g' ${WRKSRC}/Makefile
	${SUBST_CMD} ${WRKSRC}/Makefile \
		${WRKSRC}/src/manpage/tuxpaint.1

.include <bsd.port.mk>
