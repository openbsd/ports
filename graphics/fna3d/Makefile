# $OpenBSD: Makefile,v 1.1.1.1 2020/10/05 16:05:26 thfr Exp $

# versions are in sync with FNA versions
V =		20.09
COMMENT =	3D graphics library for FNA
DISTNAME =	fna-${V:S/.//g}
PKGNAME =	fna3d-${V}

SHARED_LIBS =	FNA3D		0.0	# 20.09

CATEGORIES =	graphics
HOMEPAGE =	https://github.com/FNA-XNA/FNA3D
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB +=	SDL2 mojoshader

MASTER_SITES =	https://github.com/FNA-XNA/FNA/releases/download/${V}/
EXTRACT_SUFX =	.zip

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2 \
		graphics/mojoshader

USE_GMAKE =	Yes

NO_TEST =	Yes
WRKDIST =	${WRKDIR}/FNA/lib/FNA3D
SUBST_VARS +=	LIBFNA3D_VERSION

do-gen:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

do-install:
	${INSTALL_DATA} ${WRKSRC}/include/*.h ${PREFIX}/include/
	${INSTALL_DATA} ${WRKBUILD}/libFNA3D.so.${LIBFNA3D_VERSION} ${PREFIX}/lib/

.include <bsd.port.mk>
