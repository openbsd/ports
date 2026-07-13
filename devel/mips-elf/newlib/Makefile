COMMENT=	newlib for mips-elf cross-development

VERSION=	4.6.0.20260123
DISTNAME=	newlib-${VERSION}
PKGNAME=	mips-elf-newlib-${VERSION}

HOMEPAGE=	https://sourceware.org/newlib/

SITES=		ftp://sourceware.org/pub/newlib/

EXTRACT_SUFX=	.tar.gz

BUILD_DEPENDS=	devel/mips-elf/binutils \
		${RUN_DEPENDS}
RUN_DEPENDS=	devel/mips-elf/gcc

MAKE_FLAGS=	ac_cv_path_mkdir=/bin/mkdir

USE_GMAKE=	Yes
CONFIGURE_ARGS+=--enable-interwork \
		--enable-multilib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mips-elf/newlib
	${INSTALL_DATA} ${WRKDIST}/COPYING.NEWLIB \
		${PREFIX}/share/doc/mips-elf/newlib

.include <bsd.port.mk>
