PKG_ARCH=	*

COMMENT=	RISC-V Supervisor Binary Interface

GH_ACCOUNT=	riscv
GH_PROJECT=	opensbi
GH_TAGNAME=	v0.9
REVISION=	0

CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS+= devel/riscv-elf/gcc

MAKE_ENV+= CROSS_COMPILE="riscv64-unknown-elf-"

NO_TEST=	Yes
USE_GMAKE=	Yes

# Disable passing CFLAGS to allow the build to use various
# optimization levels. Allowing ports to override CFLAGS
# causes the build to fail.
CFLAGS=

PLATFORMS=\
	generic

do-build:
.for P in ${PLATFORMS}
	cd ${WRKSRC} && \
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	    V=1 PLATFORM=${P}
.endfor

do-install:
.for P in ${PLATFORMS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/opensbi/${P}
	${INSTALL_DATA} \
	    ${WRKBUILD}/build/platform/${P}/firmware/fw_{jump,dynamic}.bin \
	    ${PREFIX}/share/opensbi/${P}
.endfor

.include <bsd.port.mk>
