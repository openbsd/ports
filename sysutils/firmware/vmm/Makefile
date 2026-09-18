ONLY_FOR_ARCHS=	amd64
DPB_PROPERTIES=	parallel

COMMENT=	SeaBIOS and EDK II binary images for vmd(8)

FW_DRIVER=	vmm
FW_VER=		1.16.3
SB_VER=		20180715
EDK2_VER=	edk2-stable202605
EDK2_EPOCH=	1778208120
DISTNAME=	seabios-${FW_VER}
DIST_TUPLE=	github qemu sgabios 72f39d48bedf044e202fd51fecf3e2218fc2ae66 sgabios \
		github tianocore edk2 ${EDK2_VER} edk2 \
		github google brotli e230f474b87134e8c6c85b630084c612057f253e edk2/BaseTools/Source/C/BrotliCompress/brotli \
		github devicetree-org pylibfdt cfff805481bdea27f900c32698171286542b8d3c edk2/MdePkg/Library/BaseFdtLib/libfdt \
		github MIPI-Alliance public-mipi-sys-t 370b5944c046bab043dd8b133727b2135af7747a edk2/MdePkg/Library/MipiSysTLib/mipisyst \
		github openssl openssl aea7aaf2abb04789f5868cbabec406ea43aa84bf edk2/CryptoPkg/Library/OpensslLib/openssl \
		github ARMmbed mbedtls 0bebf8b8c7f07abe3571ded48a11aa907a1ffb20 edk2/CryptoPkg/Library/MbedTlsLib/mbedtls \
		github DMTF libspdm 1be116c7b7713fa9003e1bd53b53a34758549eb9 edk2/SecurityPkg/DeviceSecurity/SpdmLib/libspdm
REVISION=	12

HOMEPAGE=	https://www.seabios.org/

SITES=		https://www.seabios.org/downloads/

# LGPLv3 but distributed via fw_update/firmware.openbsd.org so disable
# normal packaging.
PERMIT_PACKAGE=   firmware
PERMIT_DISTFILES= Yes

NO_BUILD=	No
UPDATE_PLIST_ARGS= -i PERMIT_PACKAGE

MODULES=	lang/python
BUILD_DEPENDS=	devel/acpica \
		devel/nasm \
		devel/x86_64-elf/gcc \
		shells/bash
MODPY_RUNDEP=	No
USE_GMAKE=	Yes

EDK2_WRKSRC=	${WRKSRC}/edk2
EDK2_FV=	${EDK2_WRKSRC}/Build/OvmfX64/RELEASE_CLANGDWARF/FV
EDK2_TOOLBIN=	${WRKDIR}/edk2-bin
EDK2_BASETOOLS=	${EDK2_WRKSRC}/BaseTools
EDK2_PATH_A=	${EDK2_BASETOOLS}/BinWrappers/PosixLike
EDK2_PATH_B=	${EDK2_BASETOOLS}/Source/C/bin:${EDK2_TOOLBIN}
EDK2_PATH_C=	${LOCALBASE}/bin
EDK2_BUILD_PATH= ${WRKDIR}/bin:${EDK2_PATH_A}:${EDK2_PATH_B}:${EDK2_PATH_C}:/usr/bin:/bin
EDK2_BUILD_ENV=	WORKSPACE=${EDK2_WRKSRC} \
		EDK_TOOLS_PATH=${EDK2_WRKSRC}/BaseTools \
		BASE_TOOLS_PATH=${EDK2_WRKSRC}/BaseTools \
		CONF_PATH=${EDK2_WRKSRC}/Conf \
		PYTHON_COMMAND=${MODPY_BIN} \
		CLANG_BIN=/usr/bin/ \
		CLANG_HOST_BIN=${EDK2_TOOLBIN}/ \
		NASM_PREFIX=${EDK2_TOOLBIN}/ \
		IASL_PREFIX=${LOCALBASE}/bin/ \
		SOURCE_DATE_EPOCH=${EDK2_EPOCH} \
		PATH=${EDK2_BUILD_PATH}

FIX_CRLF_FILES=	edk2/BaseTools/Conf/tools_def.template \
		edk2/BaseTools/Source/C/GenFv/GenFvInternalLib.c \
		edk2/OvmfPkg/Include/OvmfPlatforms.h \
		edk2/OvmfPkg/AcpiPlatformDxe/AcpiPlatform.c \
		edk2/OvmfPkg/Library/PlatformBootManagerLib/BdsPlatform.c \
		edk2/OvmfPkg/Library/PlatformInitLib/MemDetect.c \
		edk2/OvmfPkg/Library/PlatformInitLib/Platform.c \
		edk2/OvmfPkg/Library/ResetSystemLib/BaseResetShutdown.c \
		edk2/OvmfPkg/Library/ResetSystemLib/DxeResetShutdown.c \
		edk2/OvmfPkg/QemuRamfbDxe/QemuRamfb.c \
		edk2/OvmfPkg/OvmfPkgX64.dsc \
		edk2/OvmfPkg/OvmfPkgX64.fdf

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

post-patch:
	sed -i 's,^#define BUILD_CL.*,#define BUILD_CL "${SB_VER}",' \
	    ${WRKSRC}/sgabios/sgabios.S{,${PATCHORIG}}
	cp -Rp ${EDK2_WRKSRC}/BaseTools/Source/C/BrotliCompress/brotli \
	    ${EDK2_WRKSRC}/MdeModulePkg/Library/BrotliCustomDecompressLib/
	mkdir -p ${EDK2_TOOLBIN}
	ln -s ${LOCALBASE}/bin/gmake ${EDK2_TOOLBIN}/make
	ln -s ${LOCALBASE}/bin/nasm ${EDK2_TOOLBIN}/nasm

	# pre-create, otherwise this happens too late for parallel builds
	cd ${WRKSRC}; mkdir -p out/src out/src/hw out/src/fw out/vgasrc

post-build:
	@echo '== Building EDK II'
	cd ${EDK2_WRKSRC} && env ${EDK2_BUILD_ENV} \
	    ${MAKE_PROGRAM} -C BaseTools -j${MAKE_JOBS} \
	    CC=${CC} CXX=${CXX}
	cd ${EDK2_WRKSRC} && env ${EDK2_BUILD_ENV} \
	    ${LOCALBASE}/bin/bash -c \
	    '. ./edksetup.sh BaseTools && build -n ${MAKE_JOBS} -a X64 \
	    -b RELEASE -t CLANGDWARF -p OvmfPkg/OvmfPkgX64.dsc \
	    -D FD_SIZE_4MB -D DEBUG_ON_SERIAL_PORT -D SMM_REQUIRE=FALSE \
	    -D SECURE_BOOT_ENABLE=FALSE'
	cp ${EDK2_FV}/OVMF.fd ${WRKDIR}/vmm-uefi
	cp ${EDK2_FV}/OVMF_CODE.fd ${WRKDIR}/vmm-uefi-code
	cp ${EDK2_FV}/OVMF_VARS.fd ${WRKDIR}/vmm-uefi-vars
	printf 'The vmm-uefi source distribution contains the software below.\n' \
	    > ${WRKDIR}/vmm-uefi-license
	printf '\n----- EDK II -----\n' >> ${WRKDIR}/vmm-uefi-license
	cat ${EDK2_WRKSRC}/License.txt >> ${WRKDIR}/vmm-uefi-license
	printf '\n----- Brotli -----\n' >> ${WRKDIR}/vmm-uefi-license
	cat ${EDK2_WRKSRC}/BaseTools/Source/C/BrotliCompress/brotli/LICENSE \
	    >> ${WRKDIR}/vmm-uefi-license
	printf '\n----- libfdt (BSD-2-Clause option) -----\n' \
	    >> ${WRKDIR}/vmm-uefi-license
	cat ${EDK2_WRKSRC}/MdePkg/Library/BaseFdtLib/libfdt/BSD-2-Clause \
	    >> ${WRKDIR}/vmm-uefi-license
	printf '\n----- MIPI Sys-T -----\n' >> ${WRKDIR}/vmm-uefi-license
	cat ${EDK2_WRKSRC}/MdePkg/Library/MipiSysTLib/mipisyst/LICENSE \
	    >> ${WRKDIR}/vmm-uefi-license
	printf '\n----- OpenSSL -----\n' >> ${WRKDIR}/vmm-uefi-license
	cat ${EDK2_WRKSRC}/CryptoPkg/Library/OpensslLib/openssl/LICENSE.txt \
	    >> ${WRKDIR}/vmm-uefi-license
	printf '\n----- Mbed TLS -----\n' >> ${WRKDIR}/vmm-uefi-license
	cat ${EDK2_WRKSRC}/CryptoPkg/Library/MbedTlsLib/mbedtls/LICENSE \
	    >> ${WRKDIR}/vmm-uefi-license
	printf '\n----- libspdm -----\n' >> ${WRKDIR}/vmm-uefi-license
	cat ${EDK2_WRKSRC}/SecurityPkg/DeviceSecurity/SpdmLib/libspdm/LICENSE.md \
	    >> ${WRKDIR}/vmm-uefi-license

	@echo '== Building SGABIOS'
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

	@if ! grep -q "\"${FW_VER}${EXTRAVERSION}\"" \
	    ${WRKSRC}/out/autoversion.h; then printf \
	    "\\nPort problem: 'cleanbuild' version string not used.\\n\\n"; \
	    tail -2 ${WRKSRC}/out/autoversion.h; echo; exit 1; fi

# ACPICA iasl, loaded at VM startup
#	cp ${FILESDIR}/vmm-dsdt.asl ${WRKDIR}/
#	cd ${WRKDIR} && iasl -we -tc -p vmm-dsdt vmm-dsdt.asl && \
#		iasl -d vmm-dsdt.aml && iasl -we -tc vmm-dsdt.dsl
	iasl -we -tc -p ${WRKDIR}/vmm-dsdt ${FILESDIR}/vmm-dsdt.asl
	iasl -d ${WRKDIR}/vmm-dsdt.aml
	iasl -we -tc ${WRKDIR}/vmm-dsdt.dsl

do-install:
	${INSTALL_DATA} ${WRKDIR}/vmm-bios{,-license} ${PREFIX}/firmware/
	${INSTALL_DATA} ${WRKDIR}/vmm-uefi \
	    ${WRKDIR}/vmm-uefi-code ${WRKDIR}/vmm-uefi-vars \
	    ${WRKDIR}/vmm-uefi-license ${PREFIX}/firmware/
	${INSTALL_DATA} ${WRKDIR}/vmm-dsdt.aml ${PREFIX}/firmware/vmm.dsdt

.include <bsd.port.mk>
