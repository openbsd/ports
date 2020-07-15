# $OpenBSD: Makefile,v 1.22 2020/07/15 08:23:50 sthen Exp $

ONLY_FOR_ARCHS=	amd64 i386

USE_LLD=	No
COMPILER=	ports-gcc
COMPILER_LANGS=	c

# XXX errors with clang - same with/without integrated assembler
# error: invalid output size for constraint '=Qi'
# error: invalid input size for constraint 'Q'
# etc. in various files, coming from __GET_VAR / __SET_VAR.
#
# XXX fails self-check with LLD -
# The version of LD on this system (ld -nopie -znorelro) does not properly handle
# alignments.  As a result, this project can not be built.

FW_DRIVER=	vmm
FW_VER=		1.11.0
SB_VER=		20100422
REVISION=	3
DISTNAME=	seabios-${FW_VER}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
	sgabios-20100422{23d474943dcd55d0550a3d20b3d30e9040a4f15b}.tar.gz:0

HOMEPAGE=	https://www.seabios.org/

MASTER_SITES=	https://www.seabios.org/downloads/
MASTER_SITES0=	https://github.com/qemu/sgabios/archive/

# LGPLv3 but distributed via fw_update/firmware.openbsd.org so disable
# normal packaging.
PERMIT_PACKAGE=   firmware
PERMIT_DISTFILES= Yes

NO_BUILD=	No

MODULES=	lang/python
CONFIGURE_STYLE= x # workaround python.port.mk
MODPY_RUNDEP=	No
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
USE_GMAKE=	Yes

.if defined(REVISION)
EXTRAVERSION=	p${REVISION}-OpenBSD-vmm
.else
EXTRAVERSION=	-OpenBSD-vmm
.endif

MAKE_FLAGS=	V=1 \
		EXTRAVERSION="${EXTRAVERSION}" \
		LD32BIT_FLAG=-melf_i386_obsd \
		LD="${LD} -nopie -znorelro" \
		PYTHON="${MODPY_BIN}"

post-extract:
	mv ${WRKDIR}/sgabios-* ${WRKDIR}/sgabios
	cp ${FILESDIR}/config ${WRKSRC}/.config

post-build:
	sed -i 's,^#define BUILD_CL.*,#define BUILD_CL "${SB_VER}",' \
	    ${WRKDIR}/sgabios/sgabios.S
	cd ${WRKDIR}/sgabios; env ${MAKE_ENV} ${MAKE_PROGRAM} \
	    BUILD_USER='\"_<vmm\"' BUILD_HOST='\"OpenBSD>\"'
	dd if=/dev/zero of=${WRKDIR}/space bs=1 count=196608
	cat ${WRKDIR}/sgabios/sgabios.bin ${WRKDIR}/space \
	    ${WRKSRC}/out/bios.bin > ${WRKDIR}/vmm-bios
	printf 'vmm-bios includes SeaBIOS (LGPLv3) and ' > ${WRKDIR}/vmm-bios-license
	printf 'SGABIOS (Apache License 2.0\\n-----\\n' >> ${WRKDIR}/vmm-bios-license
	cat ${WRKSRC}/COPYING.LESSER >> ${WRKDIR}/vmm-bios-license
	printf '-----\\n' >> ${WRKDIR}/vmm-bios-license
	cat ${WRKDIR}/sgabios/COPYING >> ${WRKDIR}/vmm-bios-license
	printf '-----\\n' >> ${WRKDIR}/vmm-bios-license

post-build:
	@if ! grep -q "\"${FW_VER}${EXTRAVERSION}\"" \
	    ${WRKSRC}/out/autoversion.h; then printf \
	    "\\nPort problem: 'cleanbuild' version string not used.\\n\\n"; \
	    tail -2 ${WRKSRC}/out/autoversion.h; echo; exit 1; fi

do-install:
	 ${INSTALL_DATA} ${WRKDIR}/vmm-bios{,-license} ${PREFIX}/firmware/

.include <bsd.port.mk>
