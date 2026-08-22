COMMENT=	bitstream documentation and tools for GateMate FPGAs
CATEGORIES=	cad
V=		1.13

GH_ACCOUNT=	YosysHQ
GH_PROJECT=	prjpeppercorn
GH_TAGNAME=	v${V}

HOMEPAGE=	https://github.com/YosysHQ/prjpeppercorn
MAINTAINER=	Thomas Dettbarn <dettus@dettus.net>

# ISC
PERMIT_PACKAGE=	yes

WANTLIB += ${COMPILER_LIBCXX} boost_container-mt boost_program_options-mt
WANTLIB += m

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake
CONFIGURE_ARGS=	-DSTATIC_BUILD=OFF

LIB_DEPENDS=	devel/boost
WRKSRC=		${WRKDIST}/libgm
SHAREDIR=	share/prjpeppercorn/${V}
SUBST_VARS=	SHAREDIR

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/gmpack ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKBUILD}/gmunpack  ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/${SHAREDIR}/{delay,gatemate}
	${INSTALL_DATA} ${WRKDIST}/gatemate/* ${PREFIX}/${SHAREDIR}/gatemate/
	${INSTALL_DATA} ${WRKDIST}/delay.sh ${PREFIX}/${SHAREDIR}/
	${INSTALL_DATA} ${WRKDIST}/delay/* ${PREFIX}/${SHAREDIR}/delay/
	${INSTALL_DATA} ${WRKDIST}/decompress.py ${PREFIX}/${SHAREDIR}/

.include <bsd.port.mk>
