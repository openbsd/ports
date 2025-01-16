ONLY_FOR_ARCHS=	${GCC4_ARCHS} ${CLANG_ARCHS}

COMMENT=	Device Tree Blobs
VERSION=	6.12

# XXX Updating this port has a high chance of breaking drivers as breaking
# XXX changes are frequently made to device trees in linux. See commit log
# XXX for Makefile r1.33.

DISTNAME=	devicetree-rebasing-${VERSION}-dts
PKGNAME=	dtb-${VERSION:S/-//}
CATEGORIES=	sysutils
HOMEPAGE=	https://www.devicetree.org

# dual GPL/BSD
PERMIT_PACKAGE=	Yes

SITES=		https://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git/snapshot/
PKG_ARCH=	*

MODULES=	lang/clang
MODCLANG_ARCHS=	${GCC4_ARCHS}
BUILD_DEPENDS=	devel/dtc
NO_TEST=	Yes

USE_GMAKE=	Yes
MAKE_ENV +=	CPP=clang-cpp

DTB_ARCHS= arm arm64 mips powerpc riscv

ALL_TARGET=
.for DTB_ARCH in ${DTB_ARCHS}
ALL_TARGET+=	all_${DTB_ARCH}
.endfor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/dtb
.for DTB_ARCH in ${DTB_ARCHS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/dtb/${DTB_ARCH}
	cd ${WRKSRC}/src/${DTB_ARCH} ; \
	for vendor in `find . -type d ! -name include` ; do \
	    ${INSTALL_DATA_DIR} ${PREFIX}/share/dtb/${DTB_ARCH}/$$vendor ; \
	    cd ${WRKSRC}/src/${DTB_ARCH}/$$vendor ; \
	    for dtb in `ls *.dtb` ; do \
		${INSTALL_DATA} ${WRKSRC}/src/${DTB_ARCH}/$$vendor/$$dtb \
		    ${PREFIX}/share/dtb/${DTB_ARCH}/$$vendor ; \
	    done ; \
	done
.endfor

.include <bsd.port.mk>
