# $OpenBSD: Makefile,v 1.8 2013/03/11 11:23:54 espie Exp $

COMMENT=	constrained approximate minimum degree

VERSION=	2.2.1
DISTNAME=	CAMD-${VERSION}
PKGNAME=	${DISTNAME:L}
REVISION=	1
SHARED_LIBS=	camd	0.0

CATEGORIES=	math

HOMEPAGE=	http://www.cise.ufl.edu/research/sparse/camd/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/
WRKDIST=	${WRKDIR}/CAMD
WRKSRC=		${WRKDIST}/Source

BUILD_DEPENDS=	math/ufconfig
RUN_DEPENDS=	math/ufconfig

MAKE_FILE=	${FILESDIR}/Makefile
MAKE_ENV=	SHLIB_MAJOR=${LIBcamd_VERSION:R} \
		SHLIB_MINOR=${LIBcamd_VERSION:E}
MAKE_FLAGS=	CSRC="${CSRC}"
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no
CFLAGS+=	-I${WRKDIST}/Include -I${LOCALBASE}/include

CSRC=	aat 1 2 dump postorder defaults order control info valid preprocess

pre-configure:
	@echo "#define DINT 1"  > ${WRKSRC}/di.c
	@echo "#define DLONG 1" > ${WRKSRC}/dl.c
.for s in ${CSRC}
	@cd ${WRKSRC} && cat di.c camd_${s}.c > camd_i_${s}.c
	@cd ${WRKSRC} && cat dl.c camd_${s}.c > camd_l_${s}.c
.endfor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/camd
	${INSTALL_DATA} ${WRKDIST}/Include/camd.h ${PREFIX}/include/camd

.include <bsd.port.mk>
