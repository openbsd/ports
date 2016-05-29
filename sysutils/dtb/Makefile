# $OpenBSD: Makefile,v 1.1.1.1 2016/05/29 02:07:26 jsg Exp $

COMMENT=	Device Tree Blobs
DISTNAME=	linux-4.6
PKGNAME=	${DISTNAME:S/linux/dtb/}
CATEGORIES=	sysutils
HOMEPAGE=	http://www.devicetree.org
MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# dual GPL/BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://cdn.kernel.org/pub/linux/kernel/v4.x/
EXTRACT_SUFX=	.tar.xz
PKG_ARCH=	*

MODULES=	gcc4
MODGCC4_ARCHS=	*
BUILD_DEPENDS=	devel/dtc
NO_TEST=	Yes

ARCHS= arm arm64 mips powerpc

do-build:
.for ARCH in ${ARCHS}
	cd ${WRKSRC}/arch/${ARCH}/boot/dts ; \
        for vendor in `find . -type d ! -name include` ; do \
	    cd ${WRKSRC}/arch/${ARCH}/boot/dts/$$vendor ; \
	    for dts in `ls *.dts` ; do \
	        ecpp -nostdinc -I . -I include -I${WRKSRC}/include \
		    -undef -D__DTS__ -x assembler-with-cpp $$dts \
		    | dtc -I dts -O dtb -o `echo "$$dts" \
		    | sed -e 's/\.dts$$/\.dtb/'` - ; \
	    done ; \
	done
.endfor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/dtb
.for ARCH in ${ARCHS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/dtb/${ARCH}
	cd ${WRKSRC}/arch/${ARCH}/boot/dts ; \
	for vendor in `find . -type d ! -name include` ; do \
	    ${INSTALL_DATA_DIR} ${PREFIX}/share/dtb/${ARCH}/$$vendor ; \
	    cd ${WRKSRC}/arch/${ARCH}/boot/dts/$$vendor ; \
	    for dtb in `ls *.dtb` ; do \
		${INSTALL_DATA} ${WRKSRC}/arch/${ARCH}/boot/dts/$$vendor/$$dtb \
		    ${PREFIX}/share/dtb/${ARCH}/$$vendor ; \
	    done ; \
	done
.endfor

.include <bsd.port.mk>
