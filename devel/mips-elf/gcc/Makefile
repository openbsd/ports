COMMENT=	gcc for mips-elf cross-development

VERSION=	16.1.0
DISTNAME=	gcc-${VERSION}
PKGNAME=	mips-elf-gcc-${VERSION}

SUBST_VARS+=	VERSION CONFIG

WANTLIB=	c m ${COMPILER_LIBCXX} gmp mpfr mpc pthread
DIST_SUBDIR=	gcc

COMPILER =	base-clang ports-gcc base-gcc

SITES=		${SITE_GCC:=releases/gcc-$(VERSION)/}

BUILD_DEPENDS+=	devel/bison		\
		textproc/gsed		\
		${RUN_DEPENDS}
LIB_DEPENDS=	devel/mpfr devel/libmpc

RUN_DEPENDS=	devel/mips-elf/binutils

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

# PICFLAG broke gcc build after
# https://gcc.gnu.org/cgit/gcc/commit/?id=b6cb10af12cf869c1ae348c0e5cb2d364ef0abce
PICFLAG=

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
