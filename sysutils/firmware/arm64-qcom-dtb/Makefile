FW_DRIVER=	arm64-qcom-dtb
FW_VER=		2.0

DISTNAME=	devicetree-rebasing-6.10-dts

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

DTBS=	sc8280xp-lenovo-thinkpad-x13s.dtb \
	x1e78100-lenovo-thinkpad-t14s.dtb \
	x1e80100-asus-vivobook-s15.dtb \
	x1e80100-lenovo-yoga-slim7x.dtb \
	x1e80100-samsung-galaxy-book4-edge.dtb

ALL_TARGET=
.for DTB in ${DTBS}
ALL_TARGET+=	src/arm64/qcom/${DTB}
.endfor

do-install:
	mkdir -p ${PREFIX}/firmware/dtb/qcom
.for dtb in ${DTBS}
	cp ${WRKSRC}/src/arm64/qcom/${dtb} ${PREFIX}/firmware/dtb/qcom
.endfor

.include <bsd.port.mk>
