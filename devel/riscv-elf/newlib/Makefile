COMMENT=	newlib for riscv-elf cross-development

VERSION=	3.0.0
DISTNAME=	newlib-${VERSION}
PKGNAME=	riscv-elf-newlib-${VERSION}

HOMEPAGE=	https://sourceware.org/newlib/

MASTER_SITES=	ftp://sourceware.org/pub/newlib/

EXTRACT_SUFX=	.tar.gz

BUILD_DEPENDS=	devel/riscv-elf/binutils \
		${RUN_DEPENDS}
RUN_DEPENDS=	devel/riscv-elf/gcc

MAKE_FLAGS=	ac_cv_path_mkdir=/bin/mkdir

USE_GMAKE=	Yes
CONFIGURE_ARGS+=--enable-interwork \
		--enable-multilib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/riscv-elf/newlib
	${INSTALL_DATA} ${WRKDIST}/COPYING.NEWLIB \
		${PREFIX}/share/doc/riscv-elf/newlib

.include <bsd.port.mk>
