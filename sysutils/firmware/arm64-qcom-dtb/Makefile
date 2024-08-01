FW_DRIVER=	arm64-qcom-dtb
FW_VER=		1.9

WRKDIST=	${WRKDIR}
DISTFILES=

# can be redistributed, but shouldn't be in normal packages directory as
# this is only meant for use with fw_update.
PERMIT_PACKAGE=	  firmware
PERMIT_DISTFILES= Yes

BUILD_DEPENDS=	sysutils/dtb>=6.10p1

DTBS=	sc8280xp-lenovo-thinkpad-x13s.dtb \
	x1e80100-asus-vivobook-s15.dtb \
	x1e80100-lenovo-yoga-slim7x.dtb \
	x1e80100-samsung-galaxy-book4-edge.dtb

do-install:
	mkdir -p ${PREFIX}/firmware/dtb/qcom
.for dtb in ${DTBS}
	cp ${LOCALBASE}/share/dtb/arm64/qcom/${dtb} ${PREFIX}/firmware/dtb/qcom
.endfor

.include <bsd.port.mk>
