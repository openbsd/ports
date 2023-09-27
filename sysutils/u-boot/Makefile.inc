BROKEN-sparc64=	Error: the specified option is not accepted in ISB at operand 1 -- isb sy

# was added in 2020 while we used clang 8 so maybe obsolete now
#BROKEN-arm=	lib/time.c:187:1: internal compiler error: Bus error

DPB_PROPERTIES=	parallel

COMMENT=	U-Boot firmware
DISTNAME=	u-boot-${VERSION}
PKGNAME=	u-boot-${SOC}-${VERSION:S/-//}
FULLPKGNAME=	${PKGNAME}
CATEGORIES=	sysutils
HOMEPAGE=	https://www.denx.de/wiki/U-Boot

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=		https://ftp.denx.de/pub/u-boot/
EXTRACT_SUFX=	.tar.bz2
PKG_ARCH=	*

BUILD_DEPENDS+=	devel/bison \
		devel/dtc \
		devel/swig

# for pkg_resources used in tools/binman/control.py
BUILD_DEPENDS+=	devel/py-setuptools${MODPY_FLAVOR}

MODULES=	lang/python
MODPY_RUNDEP=	No

MAKE_ENV+=	KBUILD_VERBOSE=1 \
		PYTHON="${MODPY_BIN}"

USE_GMAKE=	Yes
NO_TEST=	Yes
.if ${USE_CCACHE:L} == yes
MAKE_ENV+=	CROSS_COMPILE="${COMPILER_WRAPPER} ${CROSS_COMPILE}"
.else
MAKE_ENV+=	CROSS_COMPILE="${CROSS_COMPILE}"
.endif

FILES=\
	MLO \
	SPL \
	u-boot \
	u-boot.img \
	u-boot.bin \
	u-boot-sunxi-with-spl.bin \
	u-boot.imx \
	u-boot-dtb.imx \
	u-boot-spl.kwb \
	u-boot-with-spl.bin \
	u-boot.itb \
	u-boot-rockchip.bin \
	idbloader.img \
	spl/sunxi-spl.bin \
	spl/u-boot-spl.bin

do-build:
.for BOARD in ${BOARDS}
	cd ${WRKSRC} && \
	    mkdir -p build/${BOARD} && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	        O="build/${BOARD}" \
	        -f ${MAKE_FILE} "${BOARD}"_defconfig
.if "${BOARD:M*-rk3399*}"
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} BL31=${RK3399_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.elif "${BOARD:M*-rk3328}"
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} BL31=${RK3328_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.elif "${BOARD:M*sifive_*}"
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} OPENSBI=${FW_DYNAMIC} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.else
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	        O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.endif
.if "${BOARD:M*-rk3288}"
	cd ${WRKSRC}/build/${BOARD} && \
	    tools/mkimage -n rk3288 -T rksd -d tpl/u-boot-tpl.bin \
	        idbloader.img && \
	    cat spl/u-boot-spl-dtb.bin >> idbloader.img
.endif
.endfor
.for BOARD in ${SUNXI64}
.if "${BOARD:M*_h64*}"
	cd ${WRKSRC} && \
	    mkdir -p build/${BOARD} && \
	    ${SETENV} ${MAKE_ENV} BL31=${SUNXI_H6_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} "${BOARD}"_defconfig && \
	    ${SETENV} ${MAKE_ENV} BL31=${SUNXI_H6_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.else
	cd ${WRKSRC} && \
	    mkdir -p build/${BOARD} && \
	    ${SETENV} ${MAKE_ENV} BL31=${SUNXI_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} "${BOARD}"_defconfig && \
	    ${SETENV} ${MAKE_ENV} BL31=${SUNXI_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
.endif
	if [[ -f ${WRKSRC}/build/${BOARD}/spl/sunxi-spl.bin && \
	      -f ${WRKSRC}/build/${BOARD}/u-boot.itb ]]; then \
		cd ${WRKSRC}/build/${BOARD} && \
		    cat spl/sunxi-spl.bin u-boot.itb > u-boot-sunxi-with-spl.bin ; \
	fi
.endfor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/u-boot
.for BOARD in ${BOARDS} ${SUNXI64}
	@[ -d ${WRKSRC}/build/${BOARD} ] && \
	echo ${INSTALL_DATA_DIR} ${PREFIX}/share/u-boot/${BOARD} && \
	${INSTALL_DATA_DIR} ${PREFIX}/share/u-boot/${BOARD} && \
	echo cd ${WRKSRC}/build/${BOARD} && \
	cd ${WRKSRC}/build/${BOARD} && \
	for i in ${FILES}; do \
		if [ -f $$i ]; then \
			echo ${INSTALL_DATA} $$i ${PREFIX}/share/u-boot/${BOARD}/; \
			${INSTALL_DATA} $$i ${PREFIX}/share/u-boot/${BOARD}/; \
		fi; \
	done
.endfor
