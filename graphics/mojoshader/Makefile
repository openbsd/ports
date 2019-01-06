# $OpenBSD: Makefile,v 1.2 2019/01/06 21:26:03 thfr Exp $

COMMENT =	library to move calls to Direct3D shaders to OpenGL

# HG_CHANGESET and HG_COMMIT must be kept in sync.
HG_CHANGESET =	1181
HG_COMMIT = 	b873f3b0f838

DISTNAME =	mojoshader-${HG_COMMIT}{${HG_COMMIT}}
PKGNAME =	mojoshader-${HG_CHANGESET}
REVISION =	0
CATEGORIES =	graphics
MASTER_SITES =	https://hg.icculus.org/icculus/mojoshader/archive/

SHARED_LIBS +=	mojoshader		0.0	# Changeset 1181

HOMEPAGE =	https://icculus.org/mojoshader/

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# zlib
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/re2c \
		devel/sdl2

TEST_DEPENDS =	security/p5-Digest-SHA1

# FLIP_VIEWPORT is needed by some FNA games (FEZ if I recall correctly)
CONFIGURE_ARGS =	-DBUILD_SHARED=1 -DFLIP_VIEWPORT=1

WRKDIST =	${WRKDIR}/mojoshader-${HG_COMMIT}

pre-configure:
	sed -i -e 's,$${HG_CHANGESET},${HG_CHANGESET},g' \
		-e 's,$${HG_COMMIT},${HG_COMMIT},g' ${WRKSRC}/CMakeLists.txt

# No upstream install target
do-install:
	${INSTALL_DATA} ${WRKSRC}/mojoshader*.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKBUILD}/libmojoshader.so.${LIBmojoshader_VERSION} \
		${PREFIX}/lib

.include <bsd.port.mk>
