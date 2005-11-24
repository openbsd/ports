# $OpenBSD: Makefile,v 1.10 2005/11/24 22:22:56 steven Exp $

COMMENT=	"3D creation software"

DISTNAME=	blender-2.37a
CATEGORIES=	graphics

HOMEPAGE=	http://www.blender.org/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.cs.umn.edu/pub/blender.org/source/ \
		http://download.blender.org/source/ \
		http://public.planetmirror.com/pub/blender/source/

BUILD_DEPENDS=	:scons-*:devel/scons \
		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	png::graphics/png \
		jpeg::graphics/jpeg \
		SDL::devel/sdl \
		python2.3.0.0:python-2.3.*:lang/python/2.3

WANTLIB=	GL GLU X11 Xext c m pthread stdc++ usbhid util z

MODULES=	devel/gettext
USE_X11=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/blender

pre-build:
	@perl -pi -e 's#!!LOCALBASE!!#${LOCALBASE}#g' ${WRKSRC}/SConstruct
	@perl -pi -e 's#!!X11BASE!!#${X11BASE}#g' ${WRKSRC}/SConstruct

do-build:
	@${SETENV} ${MAKE_ENV} CC=${CC} CXX=${CXX} CXXFLAGS="${CXXFLAGS}" \
		scons -C ${WRKBUILD}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/blender ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/blender/scripts
	${INSTALL_DATA} ${WRKSRC}/release/scripts/*.py \
		${PREFIX}/share/blender/scripts
	${INSTALL_DATA_DIR} ${PREFIX}/share/blender/scripts/bpymodules
	${INSTALL_DATA} ${WRKSRC}/release/scripts/bpymodules/*.py \
		${PREFIX}/share/blender/scripts/bpymodules

.include <bsd.port.mk>
