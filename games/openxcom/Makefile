# $OpenBSD: Makefile,v 1.15 2017/02/06 10:42:01 kirby Exp $

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
			yaml-cpp

MASTER_SITES =		${HOMEPAGE}/wp-content/uploads/downloads/2014/06/

MODULES =		devel/cmake gcc4
MODGCC4_LANGS +=	c++
MODGCC4_ARCHS = 	*

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
