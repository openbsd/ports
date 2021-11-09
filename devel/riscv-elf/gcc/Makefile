# $OpenBSD: Makefile,v 1.6 2021/11/09 02:48:00 kevlo Exp $

COMMENT=	gcc for riscv-elf cross-development

VERSION=	8.1.0
DISTNAME=	gcc-${VERSION}
PKGNAME=	riscv-elf-gcc-${VERSION}
REVISION=	3

SUBST_VARS+=	VERSION

WANTLIB=	c m ${COMPILER_LIBCXX} gmp mpfr mpc pthread
DIST_SUBDIR=	gcc

COMPILER =	base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_GCC:=releases/gcc-$(VERSION)/}

.if ${MACHINE_ARCH} == "powerpc64"
PATCH_LIST =	patch-* vecstep-*
.endif

BUILD_DEPENDS+=	devel/autoconf/2.13	\
		devel/bison		\
		devel/metaauto		\
		${RUN_DEPENDS}
RUN_DEPENDS=	devel/riscv-elf/binutils
LIB_DEPENDS=	devel/mpfr devel/libmpc

LANGS=		c,c++

CONFIGURE_ARGS+=--enable-languages=${LANGS}	\
		--enable-multilib		\
		--enable-interwork		\
		--with-gmp=${LOCALBASE}		\
		--with-newlib			\
		--disable-libcc1		\
		--disable-lto			\
		--enable-cpp			\
		--without-isl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
YACC=		bison

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/gcc/${CONFIG}/${VERSION}/

.include <bsd.port.mk>
