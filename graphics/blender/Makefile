# $OpenBSD: Makefile,v 1.14 2006/07/30 07:29:13 steven Exp $

COMMENT=	"3D creation software"

DISTNAME=	blender-2.42
CATEGORIES=	graphics

HOMEPAGE=	http://www.blender.org/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.blender.org/source/ \
		http://mirror.cs.umn.edu/blender.org/source/ \
		http://public.planetmirror.com/pub/blender/source/

PYTHON_VER=	2.4

RUN_DEPENDS=	::graphics/tiff
BUILD_DEPENDS=	:scons-*:devel/scons \
		:pkgconfig-*:devel/pkgconfig \
		::graphics/tiff
LIB_DEPENDS=	png::graphics/png \
		jpeg::graphics/jpeg \
		SDL::devel/sdl \
		python${PYTHON_VER}.0.0:python-${PYTHON_VER}.*:lang/python/${PYTHON_VER}

WANTLIB=	GL GLU X11 Xi c m pthread stdc++ util z

SEPARATE_BUILD=	simple
USE_X11=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME:S/-//}

CFLAGS+=	-fPIC -funsigned-char -fno-strict-aliasing

post-extract:
	@cd ${WRKSRC}/config && cp openbsd3-config.py openbsd4-config.py

do-build:
	@${SETENV} ${MAKE_ENV} scons -C ${WRKSRC} blendernogame \
		CC=${CC} CXX=${CXX} \
		CFLAGS="${CFLAGS}" CCFLAGS="${CXXFLAGS}" \
		REL_CFLAGS= REL_CCFLAGS= \
		BF_BUILDDIR=${WRKBUILD} \
		BF_FANCY=0 \
		BF_QUIET=0 \
		BF_PYTHON=${LOCALBASE} BF_PYTHON_VERSION=${PYTHON_VER} \
		BF_JPEG=${LOCALBASE} \
		BF_PNG=${LOCALBASE} \
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

.include <bsd.port.mk>
