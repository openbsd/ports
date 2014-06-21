# $OpenBSD: Makefile,v 1.16 2014/06/21 11:54:29 jasper Exp $

COMMENT=	city simulation game

DISTNAME=	lincity-ng-2.0
REVISION =	5
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	games x11

HOMEPAGE=	https://fedorahosted.org/LinCity-NG/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lincity-ng.berlios/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	GL SDL X11 c m pthread pthread-stubs stdc++ xcb z \
		SDL_gfx SDL_image SDL_mixer SDL_ttf physfs xml2

MODULES=	devel/gettext

LIB_DEPENDS=	devel/sdl-gfx \
		devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-ttf \
		devel/physfs \
		textproc/libxml
BUILD_DEPENDS=	devel/jam
RUN_DEPENDS=	devel/desktop-file-utils
NO_TEST=	Yes

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-liconv -pthread"
CONFIGURE_STYLE=gnu

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} jam -dx

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${ALL_FAKE_FLAGS} jam \
		install install_man

.include <bsd.port.mk>
