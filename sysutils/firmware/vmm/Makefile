# $OpenBSD: Makefile,v 1.4 2017/03/24 22:37:53 sthen Exp $

FW_DRIVER=	vmm
FW_VER=		1.10.2
REVISION=	1
DISTNAME=	seabios-${FW_VER}

HOMEPAGE=	https://www.seabios.org/

MASTER_SITES=	https://code.coreboot.org/p/seabios/downloads/get/

# LGPLv3 but distributed via fw_update/firmware.openbsd.org so disable
# normal packaging.
PERMIT_PACKAGE_CDROM=	firmware
PERMIT_PACKAGE_FTP=	firmware
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	No

MODULES=	lang/python
CONFIGURE_STYLE= x # workaround python.port.mk
MODPY_RUNDEP=	No
USE_GMAKE=	Yes

.if defined(REVISION)
EXTRAVERSION=	p${REVISION}-OpenBSD-vmm
.else
EXTRAVERSION=	-OpenBSD-vmm
.endif

MAKE_FLAGS=	PYTHON="${MODPY_BIN}" V=1 EXTRAVERSION="${EXTRAVERSION}" \
		LD32BIT_FLAG=-melf_i386_obsd LD="${LD} -nopie -znorelro" 

pre-build:
	cp ${FILESDIR}/config ${WRKSRC}/.config

do-install:
	 ${INSTALL_DATA} ${WRKSRC}/out/bios.bin ${PREFIX}/firmware/vmm-bios
	 ${INSTALL_DATA} ${WRKSRC}/COPYING.LESSER \
	    ${PREFIX}/firmware/vmm-bios-license

.include <bsd.port.mk>
