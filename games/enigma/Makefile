# $OpenBSD: Makefile,v 1.38 2019/07/12 21:02:20 sthen Exp $

COMMENT=	Oxyd/Rock'n'Roll clone

V=		1.21
DISTNAME=	enigma-${V}
REVISION=	3

CATEGORIES=	games x11

HOMEPAGE=	https://www.nongnu.org/enigma/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL SDL_image SDL_mixer SDL_ttf
WANTLIB += c curl enet intl m png xerces-c z zipios

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enigma-game/}

WRKDIST=	${WRKDIR}/enigma-${V}

BUILD_DEPENDS =	graphics/ImageMagick
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS=	archivers/zipios \
		devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-ttf \
		graphics/png \
		net/curl \
		net/enet>=1.3.3 \
		textproc/xerces-c>=3.2.1

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-system-enet
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
