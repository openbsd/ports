ONLY_FOR_ARCHS=	amd64

FW_DRIVER=	vmm
FW_VER=		1.16.3
SB_VER=		20180715
DISTNAME=	seabios-${FW_VER}
DIST_TUPLE=	github qemu sgabios 72f39d48bedf044e202fd51fecf3e2218fc2ae66 sgabios
REVISION=	1

HOMEPAGE=	https://www.seabios.org/

SITES=		https://www.seabios.org/downloads/

# LGPLv3 but distributed via fw_update/firmware.openbsd.org so disable
# normal packaging.
PERMIT_PACKAGE=   firmware
PERMIT_DISTFILES= Yes

NO_BUILD=	No
UPDATE_PLIST_ARGS= -i PERMIT_PACKAGE

MODULES=	lang/python
BUILD_DEPENDS=	devel/x86_64-elf/gcc
MODPY_RUNDEP=	No
USE_GMAKE=	Yes

.if defined(REVISION)
EXTRAVERSION=	p${REVISION}-OpenBSD-vmm
.else
EXTRAVERSION=	-OpenBSD-vmm
.endif

MAKE_FLAGS=	V=1 \
		EXTRAVERSION="${EXTRAVERSION}" \
		HOSTCC="${CC}" \
		CROSS_PREFIX=x86_64-none-elf- \
		PYTHON="${MODPY_BIN}"

post-extract:
	cp ${FILESDIR}/config ${WRKSRC}/.config

post-build:
	sed -i 's,^#define BUILD_CL.*,#define BUILD_CL "${SB_VER}",' \
	    ${WRKSRC}/sgabios/sgabios.S
	cd ${WRKSRC}/sgabios; env ${MAKE_ENV} ${MAKE_PROGRAM} \
	    BUILD_USER='\"_<vmm\"' BUILD_HOST='\"OpenBSD>\"' \
	    CC="x86_64-none-elf-gcc -Wa,--divide" LD=x86_64-none-elf-ld \
	    AS="x86_64-none-elf-as --divide" OBJCOPY=x86_64-none-elf-objcopy \
	    HOSTCC="${CC}"
	dd if=/dev/zero of=${WRKDIR}/space bs=1 count=196608
	cat ${WRKSRC}/sgabios/sgabios.bin ${WRKDIR}/space \
	    ${WRKSRC}/out/bios.bin > ${WRKDIR}/vmm-bios
	printf 'vmm-bios includes SeaBIOS (LGPLv3) and ' > ${WRKDIR}/vmm-bios-license
	printf 'SGABIOS (Apache License 2.0\\n-----\\n' >> ${WRKDIR}/vmm-bios-license
	cat ${WRKSRC}/COPYING.LESSER >> ${WRKDIR}/vmm-bios-license
	printf '-----\\n' >> ${WRKDIR}/vmm-bios-license
	cat ${WRKSRC}/sgabios/COPYING >> ${WRKDIR}/vmm-bios-license
	printf '-----\\n' >> ${WRKDIR}/vmm-bios-license

post-build:
	@if ! grep -q "\"${FW_VER}${EXTRAVERSION}\"" \
	    ${WRKSRC}/out/autoversion.h; then printf \
	    "\\nPort problem: 'cleanbuild' version string not used.\\n\\n"; \
	    tail -2 ${WRKSRC}/out/autoversion.h; echo; exit 1; fi

do-install:
	 ${INSTALL_DATA} ${WRKDIR}/vmm-bios{,-license} ${PREFIX}/firmware/

.include <bsd.port.mk>
