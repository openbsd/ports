# $OpenBSD: Makefile,v 1.17 2017/05/23 15:18:46 espie Exp $

BROKEN-alpha =	OOM on XcomRuleset.cpp
BROKEN-hppa =	OOM on Engine/Scalers/hq4x.cpp
COMMENT =		open source reimplementation of the original X-Com
DISTNAME =		openxcom-1.0.0
REVISION = 		4
EPOCH =			0
CATEGORIES =		games x11

HOMEPAGE =		http://openxcom.org

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		GL SDL SDL_gfx SDL_image SDL_mixer c m pthread \
			yaml-cpp ${LIBECXX}

MASTER_SITES =		${HOMEPAGE}/wp-content/uploads/downloads/2014/06/

MODULES =		devel/cmake

WANT_CXX =		base gcc

RUN_DEPENDS =		audio/timidity \
			devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		devel/sdl-gfx \
			devel/sdl-image \
			devel/sdl-mixer \
			devel/yaml-cpp>=0.5.1

CONFIGURE_ARGS =	-DDEV_BUILD=Off

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/Engine/CrossPlatform.cpp

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/openxcom
	cd ${WRKDIST}/bin/data && find . | pax -rw ${PREFIX}/share/openxcom

.include <bsd.port.mk>
