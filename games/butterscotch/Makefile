COMMENT =	opensource runtime for GameMaker Studio's YoYo Runner

DISTNAME =	butterscotch-0.0.0.20260925
H =		04425ce9a36cba402240fb696a7b1ab82201415d

DIST_TUPLE +=	github ButterscotchRunner Butterscotch ${H} .

CATEGORIES =	games

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# AGPL-3.0
PERMIT_PACKAGE =	Yes

WANTLIB += SDL3 c m pthread

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl3

CONFIGURE_ARGS = -DBACKEND=sdl3

DEBUG_PACKAGES = ${BUILD_PACKAGES}

WRKDIST =	${WRKDIR}/Butterscotch-${H}

# no install target provided
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/butterscotch ${PREFIX}/bin/

.include <bsd.port.mk>
