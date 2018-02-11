#	$OpenBSD: Makefile,v 1.1.1.1 2018/02/11 00:42:57 phessler Exp $

BROKEN-sparc64=	Error: the specified option is not accepted in ISB at operand 1 -- isb sy

COMMENT=	U-Boot firmware for Pine64 Pinebook
V=		0.0.20180206
DISTNAME=	u-boot-pinebook-${V}
CATEGORIES=	sysutils
HOMEPAGE=	http://www.denx.de/wiki/U-Boot

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

# from branch pinebook-wip-20180206
GH_ACCOUNT=	anarsoul
GH_PROJECT=	u-boot-pine64
GH_COMMIT=	603ea3339298bdef845a7108fb1203ce32f230c4

PATCHFILES=		u-boot-pinebook-efi_status_t.patch:1
MASTER_SITES1=		https://patchwork.ozlabs.org/patch/871561/mbox/?/
PATCH_DIST_STRIP=	-p1

PKG_ARCH=	*

BUILD_DEPENDS=	devel/dtc \
		devel/swig \
		textproc/gsed

MODULES=	lang/python
MODPY_RUNDEP=	No
MODPY_ADJ_FILES=	tools/binman/binman.py \
			lib/libfdt/pylibfdt/setup.py \
			tools/dtoc/dtoc.py

MAKE_ENV=	KBUILD_VERBOSE=1 \
		PYTHON="${MODPY_BIN}"

BUILD_DEPENDS+=	devel/arm-none-eabi/gcc-linaro,aarch64 \
		sysutils/atf-allwinner
MAKE_ENV+=	CROSS_COMPILE="aarch64-none-elf-"
SUNXI_BL31=	"${LOCALBASE}/share/atf-allwinner/bl31.bin"

USE_GMAKE=	Yes
NO_TEST=	Yes

SUNXI64=\
	pinebook

FILES=\
	MLO \
	SPL \
	u-boot \
	u-boot.img \
	u-boot.bin \
	u-boot-sunxi-with-spl.bin \
	u-boot.imx \
	u-boot-spl.kwb \
	u-boot-with-spl.bin \
	u-boot.itb \
	spl/sunxi-spl.bin

pre-build:
.for f in ${MODPY_ADJ_FILES}
	${MODPY_BIN_ADJ} ${WRKSRC}/${f}
.endfor

do-build:
.for BOARD in ${SUNXI64}
	cd ${WRKSRC} && \
	    mkdir -p build/${BOARD} && \
	    ${SETENV} ${MAKE_ENV} BL31=${SUNXI_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} "${BOARD}"_defconfig && \
	    ${SETENV} ${MAKE_ENV} BL31=${SUNXI_BL31} ${MAKE_PROGRAM} \
	        ${MAKE_FLAGS} O="build/${BOARD}" \
	        -f ${MAKE_FILE} ${ALL_TARGET}
	if [[ -f ${WRKSRC}/build/${BOARD}/spl/sunxi-spl.bin && \
	      -f ${WRKSRC}/build/${BOARD}/u-boot.itb ]]; then \
		cd ${WRKSRC}/build/${BOARD} && \
		    cat spl/sunxi-spl.bin u-boot.itb > u-boot-sunxi-with-spl.bin ; \
	fi
.endfor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/u-boot
.for BOARD in ${SUNXI64}
	${INSTALL_DATA_DIR} ${PREFIX}/share/u-boot/${BOARD}
	-cd ${WRKSRC}/build/${BOARD} && \
	    cp ${FILES} ${PREFIX}/share/u-boot/${BOARD}/
.endfor

.include <bsd.port.mk>
