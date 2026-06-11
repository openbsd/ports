COMMENT=	Talos II PNOR BOOTKERNEL firmware

V=		2.10
DISTNAME=	Talos-ii-pnor-v${V}-bundle
PKGNAME=	talos-ii-pnor-bootkernel-${V}
CATEGORIES=	sysutils

HOMEPAGE=	https://wiki.raptorcs.com/wiki/Talos_II/Firmware
SITES=		https://wiki.raptorcs.com/w/images/6/61/
EXTRACT_SUFX=	.tar
EXTRACT_ONLY=

# pnor.BOOTKERNEL: Linux kernel (GPL-2.0) with Buildroot/Skiroot
# initramfs containing GPL/LGPL/BSD/MIT/ISC licensed components.
PERMIT_PACKAGE=	Yes

PKG_ARCH=	*

BUILD_DEPENDS=	archivers/bzip2

NO_TEST=	Yes

PNOR_BZ2=	shell_upgrade/talos-ii-v${V}.pnor.bz2
PNOR=		${WRKSRC}/talos-ii-v${V}.pnor
BOOTKERNEL=	${WRKSRC}/pnor.BOOTKERNEL

post-extract:
	${INSTALL_DATA_DIR} ${WRKSRC}
	cd ${WRKSRC} && \
	    ${TAR} -xf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} -- ${PNOR_BZ2}
	${LOCALBASE}/bin/bzip2 -dc ${WRKSRC}/${PNOR_BZ2} > ${PNOR}

do-build:
	perl ${FILESDIR}/extract-pnor-bootkernel.pl ${PNOR} ${BOOTKERNEL}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/talos-ii-pnor
	${INSTALL_DATA} ${BOOTKERNEL} ${PREFIX}/share/talos-ii-pnor/

.include <bsd.port.mk>
