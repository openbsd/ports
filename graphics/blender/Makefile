# $OpenBSD: Makefile,v 1.25 2009/08/10 06:31:44 kili Exp $

COMMENT=	3D creation software

DISTNAME=	blender-2.45
PKGNAME=	${DISTNAME}p3
CATEGORIES=	graphics

HOMEPAGE=	http://www.blender.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.blender.org/source/ \
		http://mirror.cs.umn.edu/blender.org/source/ \
		http://public.planetmirror.com/pub/blender/source/

PYTHON_VER=	2.5

MODULES=	devel/scons

RUN_DEPENDS=	::graphics/tiff
BUILD_DEPENDS=	::graphics/tiff
LIB_DEPENDS=	png::graphics/png \
		jpeg::graphics/jpeg \
		SDL::devel/sdl \
		python${PYTHON_VER}:python->=${PYTHON_VER},<2.6:lang/python/${PYTHON_VER}

WANTLIB=	GL GLU X11 Xi c m pthread pthread-stubs stdc++ util xcb z

SEPARATE_BUILD=	simple
USE_X11=	Yes
NO_REGRESS=	Yes

CFLAGS+=	-fPIC -funsigned-char -fno-strict-aliasing

post-extract:
	@cd ${WRKSRC}/config && cp openbsd3-config.py openbsd4-config.py

ALL_TARGET=	blendernogame

MODSCONS_ENV=	CC=${CC} CXX=${CXX} C_WARN="-Wall" \
		CFLAGS="${CFLAGS}" CCFLAGS="${CXXFLAGS}" \
		REL_CFLAGS= REL_CCFLAGS= \
		BF_BUILDDIR=${WRKBUILD} \
		BF_FANCY=0 \
		BF_QUIET=0 \
		BF_PYTHON=${LOCALBASE} BF_PYTHON_VERSION=${PYTHON_VER} \
		BF_JPEG=${LOCALBASE} \
		BF_PNG=${LOCALBASE} \
		BF_SDL_INC="${LOCALBASE}/include/SDL ${LOCALBASE}/include" \
		BF_TIFF=${LOCALBASE} \
		BF_OPENGL=${X11BASE} \
		BF_ZLIB=/usr \
		WITH_BF_INTERNATIONAL=false \
		WITH_BF_STATICOPENGL=false \
		WITH_BF_FTGL=false \
		WITH_BF_BULLET=false

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/blender ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/blender/scripts/bpymodules
	${INSTALL_DATA} ${WRKSRC}/release/scripts/*.py \
		${PREFIX}/share/blender/scripts
	${INSTALL_DATA} ${WRKSRC}/release/scripts/bpymodules/*.py \
		${PREFIX}/share/blender/scripts/bpymodules
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/blender
	${INSTALL_DATA} ${WRKSRC}/release/text/?lender* \
		${PREFIX}/share/doc/blender
	${INSTALL_DATA} ${WRKSRC}/release/text/*license* \
		${PREFIX}/share/doc/blender
	${INSTALL_DATA} ${WRKSRC}/release/text/copy* \
		${PREFIX}/share/doc/blender
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/release/freedesktop/icons/32x32/blender.png \
		${PREFIX}/share/pixmaps

.include <bsd.port.mk>
