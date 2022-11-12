# if updated, sysutils/firmware/apple-boot must be updated too

COMMENT=	U-Boot firmware for Apple Silicon

VERSION=	2022.07-3
GH_ACCOUNT=	AsahiLinux
GH_PROJECT=	u-boot
GH_TAGNAME=	asahi-v${VERSION}
REVISION=	1

PKGNAME=	u-boot-asahi-${VERSION:S/-/./g}

CATEGORIES=	sysutils
HOMEPAGE=	https://github.com/AsahiLinux/u-boot

# GPLv2
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	devel/bison \
		devel/dtc \
		devel/arm-none-eabi/gcc-linaro,aarch64

MAKE_ENV+=	KBUILD_VERBOSE=1 \
		CROSS_COMPILE="aarch64-none-elf-"

USE_GMAKE=	Yes
NO_TEST=	Yes

FILES=\
	u-boot \
	u-boot.bin \
	u-boot-nodtb.bin \
	u-boot.dtb

LICENSE_FILES= \
	Licenses/*.txt \
	Licenses/Exceptions

do-build:
	cd ${WRKSRC} && \
	    mkdir -p build/ && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	        O="build/" -f ${MAKE_FILE} apple_m1_defconfig
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	         O="build/" -f ${MAKE_FILE} ${ALL_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/u-boot/apple_m1/dts
	cd ${WRKSRC}/build && \
	    ${INSTALL_DATA} ${FILES} ${PREFIX}/share/u-boot/apple_m1/ && \
	    ${INSTALL_DATA} arch/arm/dts/*.dtb ${PREFIX}/share/u-boot/apple_m1/dts/
	cd ${WRKSRC} && for f in ${LICENSE_FILES}; do \
	    (cat "$${f}"; echo) >> ${PREFIX}/share/u-boot/apple_m1/LICENSE; done

.include <bsd.port.mk>
