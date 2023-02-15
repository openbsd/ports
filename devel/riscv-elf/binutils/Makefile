COMMENT=	binutils for riscv-elf cross-development

V=		2.40
REVISION=	0
DISTNAME=	binutils-${V}

HOMEPAGE=	https://www.gnu.org/software/binutils/

WANTLIB=	c

MASTER_SITES=	${MASTER_SITE_GNU:=binutils/}
DIST_SUBDIR=	binutils

USE_GMAKE=	Yes
USE_LIBTOOL=	No

CONFIGURE_ARGS+=--enable-commonbfdlib=no \
		--enable-interwork	 \
		--enable-multilib	\
		--without-zstd

SUBST_VARS +=	CONFIG

.include <bsd.port.mk>
