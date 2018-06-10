# $OpenBSD: Makefile,v 1.2 2018/06/10 14:53:19 kevlo Exp $

COMMENT=	newlib for riscv-elf cross-development

VERSION=	3.0.0
DISTNAME=	newlib-${VERSION}
PKGNAME=	riscv-elf-newlib-${VERSION}

HOMEPAGE=	https://sourceware.org/newlib/

MASTER_SITES=	ftp://sourceware.org/pub/newlib/

EXTRACT_SUFX=	.tar.gz

BUILD_DEPENDS=	devel/riscv-elf/binutils \
		sysutils/coreutils \
		${RUN_DEPENDS}
RUN_DEPENDS=	devel/riscv-elf/gcc

USE_GMAKE=	Yes
CONFIGURE_ARGS+=--enable-interwork \
		--enable-multilib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/riscv-elf/newlib
	${INSTALL_DATA} ${WRKDIST}/COPYING.NEWLIB \
		${PREFIX}/share/doc/riscv-elf/newlib

.include <bsd.port.mk>
