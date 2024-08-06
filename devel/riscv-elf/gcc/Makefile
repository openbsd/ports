BROKEN-powerpc64 = fails to apply patches/vecstep-*
BROKEN-arm =	spins CPU more than 12h building gcc-12.2.0/libgcc/libgcc2.c 

COMMENT=	gcc for riscv-elf cross-development

VERSION=	12.2.0
DISTNAME=	gcc-${VERSION}
PKGNAME=	riscv-elf-gcc-${VERSION}
REVISION=	1

SUBST_VARS+=	VERSION

WANTLIB=	c m ${COMPILER_LIBCXX} gmp mpfr mpc pthread
DIST_SUBDIR=	gcc

COMPILER =	base-clang ports-gcc base-gcc

SITES=		${SITE_GCC:=releases/gcc-$(VERSION)/}

.if ${MACHINE_ARCH} == "powerpc64"
PATCH_LIST =	patch-* vecstep-*
.endif

BUILD_DEPENDS+=	devel/bison		\
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
		--without-isl			\
		--without-zstd
CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# Avoid build failure when lang/gcc/8 is installed whose ansidecl.h misses these
CPPFLAGS +=	-DATTRIBUTE_NONSTRING= -DATTRIBUTE_RESULT_SIZE_1=
CPPFLAGS +=	-DATTRIBUTE_RESULT_SIZE_2= -DATTRIBUTE_RESULT_SIZE_1_2=
CPPFLAGS +=	-DATTRIBUTE_WARN_UNUSED_RESULT=

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
YACC=		bison

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/gcc/${CONFIG}/${VERSION}/

.include <bsd.port.mk>
