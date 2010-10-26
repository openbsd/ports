# $OpenBSD: Makefile,v 1.1.1.1 2010/10/26 16:59:53 steven Exp $

COMMENT=	constrained approximate minimum degree 

VERSION=	2.2.1
DISTNAME=	CAMD-${VERSION}
PKGNAME=	${DISTNAME:L}
SHARED_LIBS=	camd	0.0

CATEGORIES=	math

HOMEPAGE=	http://www.cise.ufl.edu/research/sparse/camd/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/
MASTER_SITES0=	${HOMEPAGE}../UFconfig/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} UFconfig-3.0.0.tar.gz:0
WRKDIST=	${WRKDIR}/CAMD
WRKSRC=		${WRKDIST}/Source

MAKE_FILE=	${FILESDIR}/Makefile
MAKE_ENV=	SHLIB_MAJOR=${LIBcamd_VERSION:R} \
		SHLIB_MINOR=${LIBcamd_VERSION:E}
MAKE_FLAGS=	CSRC="${CSRC}"
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no
CFLAGS+=	-I${WRKDIST}/Include -I${WRKDIR}/UFconfig

CSRC=	aat 1 2 dump postorder defaults order control info valid preprocess

# See bsd.lib.mk:162
.if ${MACHINE_ARCH:Mmips64*}
PKG_ARGS+=	-Dno_mips64=0
.else
PKG_ARGS+=	-Dno_mips64=1
.endif

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
	${INSTALL_DATA} ${WRKDIR}/UFconfig/UFconfig.h ${PREFIX}/include/camd

.include <bsd.port.mk>
