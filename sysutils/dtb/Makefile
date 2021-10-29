# $OpenBSD: Makefile,v 1.32 2021/10/29 11:13:06 patrick Exp $

ONLY_FOR_ARCHS=	${GCC4_ARCHS} ${CLANG_ARCHS}

COMMENT=	Device Tree Blobs
VERSION=	5.14
REVISION=	0
DISTNAME=	linux-${VERSION}
PKGNAME=	dtb-${VERSION:S/-//}
CATEGORIES=	sysutils
HOMEPAGE=	https://www.devicetree.org
MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# dual GPL/BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://cdn.kernel.org/pub/linux/kernel/v5.x/
EXTRACT_SUFX=	.tar.xz
#MASTER_SITES=	https://git.kernel.org/torvalds/t/
PKG_ARCH=	*

MODULES=	lang/clang
MODCLANG_ARCHS=	${GCC4_ARCHS}
BUILD_DEPENDS=	devel/dtc
NO_TEST=	Yes

ARCHS= arm arm64 mips powerpc riscv

EXTRACT_FILES=	${ARCHS:=${DISTNAME}/arch/%/boot/dts} \
		${DISTNAME}/{include,scripts/dtc/include-prefixes}

do-build:
.for ARCH in ${ARCHS}
	cd ${WRKSRC}/arch/${ARCH}/boot/dts ; \
        for vendor in `find . -type d ! -name include` ; do \
	    cd ${WRKSRC}/arch/${ARCH}/boot/dts/$$vendor ; \
	    for dts in `ls *.dts` ; do \
	        clang-cpp -nostdinc -I . -I include -I${WRKSRC}/include \
		    -I ${WRKSRC}/scripts/dtc/include-prefixes \
		    -undef -D__DTS__ -x assembler-with-cpp $$dts \
		    | dtc -I dts -O dtb -o $${dts%.dts}.dtb - ; \
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
