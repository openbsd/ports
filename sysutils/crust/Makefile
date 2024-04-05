PKG_ARCH=	*

COMMENT=	libre SCP firmware for Allwinner sunxi SoCs

GH_ACCOUNT=	crust-firmware
GH_PROJECT=	crust
GH_TAGNAME=	v0.6

CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE=	Yes

# C11
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

BUILD_DEPENDS=	devel/bison \
		devel/or1k-elf/gcc

MAKE_ENV=	CROSS_COMPILE="or1k-unknown-elf-"
MAKE_FLAGS=	V=1

NO_TEST=	Yes
USE_GMAKE=	Yes

BOARDS=\
	a64-olinuxino \
	nanopi_a64 \
	orangepi_pc2 \
	orangepi_win \
	orangepi_zero_plus \
	pine64-lts \
	pine64_plus \
	pine_h64 \
	pinebook

do-build:
.for BOARD in ${BOARDS}
	cd ${WRKSRC} && \
	    mkdir -p build/${BOARD} && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	        OBJ="build/${BOARD}" \
	        -f ${MAKE_FILE} "${BOARD}"_defconfig
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} OBJ="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.endfor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/crust
.for BOARD in ${BOARDS}
	@[ -d ${WRKSRC}/build/${BOARD}/scp ] && \
	echo ${INSTALL_DATA_DIR} ${PREFIX}/share/crust/${BOARD} && \
	${INSTALL_DATA_DIR} ${PREFIX}/share/crust/${BOARD} && \
	echo cd ${WRKSRC}/build/${BOARD}/scp && \
	cd ${WRKSRC}/build/${BOARD}/scp && \
	echo ${INSTALL_DATA} scp.bin ${PREFIX}/share/crust/${BOARD}/; \
	${INSTALL_DATA} scp.bin ${PREFIX}/share/crust/${BOARD}/
.endfor

.include <bsd.port.mk>
