BROKEN-sparc64=	Error: the specified option is not accepted in ISB at operand 1 -- isb sy

# was added in 2020 while we used clang 8 so maybe obsolete now
#BROKEN-arm=	lib/time.c:187:1: internal compiler error: Bus error

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

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/u-boot
.for BOARD in ${BOARDS}
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
