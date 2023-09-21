COMMENT=	binutils for riscv-elf cross-development

V=		2.40
REVISION=	1
DISTNAME=	binutils-${V}

HOMEPAGE=	https://www.gnu.org/software/binutils/

WANTLIB=	c

SITES=		${SITE_GNU:=binutils/}
DIST_SUBDIR=	binutils

USE_GMAKE=	Yes
USE_LIBTOOL=	No

CONFIGURE_ARGS+=--enable-commonbfdlib=no \
		--enable-interwork	 \
		--enable-multilib	\
		--without-zstd

SUBST_VARS +=	CONFIG

.include <bsd.port.mk>
