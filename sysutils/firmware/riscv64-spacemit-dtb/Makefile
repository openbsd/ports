# if you update firmware ports, ask sthen to rebuild

FW_DRIVER=	riscv64-spacemit-dtb
FW_VER=		1.0

DISTNAME=	devicetree-rebasing-7.0-dts

# can be redistributed, but shouldn't be in normal packages directory as
# this is only meant for use with fw_update.
PERMIT_PACKAGE=	  firmware
PERMIT_DISTFILES= Yes

SITES=		https://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git/snapshot/

BUILD_DEPENDS=	devel/dtc
NO_BUILD=	No
NO_TEST=	Yes

USE_GMAKE=	Yes
MAKE_ENV +=	CPP=clang-cpp

DTBS=	k1-bananapi-f3.dtb \
	k1-milkv-jupiter.dtb \
	k1-orangepi-rv2.dtb

ALL_TARGET=
.for DTB in ${DTBS}
ALL_TARGET+=	src/riscv/spacemit/${DTB}
.endfor

do-install:
	mkdir -p ${PREFIX}/firmware/dtb/spacemit
.for dtb in ${DTBS}
	cp ${WRKSRC}/src/riscv/spacemit/${dtb} \
	    ${PREFIX}/firmware/dtb/spacemit
.endfor

.include <bsd.port.mk>
