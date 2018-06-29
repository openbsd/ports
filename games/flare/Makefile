# $OpenBSD: Makefile,v 1.12 2018/06/29 22:16:12 espie Exp $

COMMENT-main =		free/libre action roleplaying engine
COMMENT-data =		free/libre action roleplaying engine data

V =			0.19
DISTNAME = 		flare.${V}
PKGNAME-main =		flare-${V}
PKGNAME-data =		flare-data-${V}
REVISION-main =		5

CATEGORIES =		games

HOMEPAGE =		http://flarerpg.org

# code GPLv3+, data CC BY-SA 3.0+
PERMIT_PACKAGE_CDROM =	Yes

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

WANTLIB-main +=		SDL SDL_image SDL_mixer SDL_ttf c m pthread ${COMPILER_LIBCXX}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=flare-game/}

MODULES =		devel/cmake
RUN_DEPENDS-main =	devel/desktop-file-utils \
			games/flare,-data \
			x11/gtk+3,-guic
LIB_DEPENDS-main =	devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf

CONFIGURE_ARGS =	-DBINDIR=bin \
			-DDATADIR=share/flare \
			-DMANDIR=man

MULTI_PACKAGES = 	-main -data
PKG_ARCH-data = 	*

NO_TEST =		Yes

post-extract:
	@sed -i -e "s,\@FLARE_EXECUTABLE_PATH@,flare,g" \
		${WRKSRC}/distribution/flare.desktop.in
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps/
	${INSTALL_DATA}  ${WRKSRC}/distribution/flare.desktop.in \
		${PREFIX}/share/applications/flare.desktop
	${INSTALL_DATA}  ${WRKSRC}/distribution/flare_logo.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps/flare.svg

.include <bsd.port.mk>
