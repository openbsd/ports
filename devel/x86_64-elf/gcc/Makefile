COMMENT=	gcc for ${CONFIG} cross-development

VERSION=	12.2.0
DISTNAME=	gcc-${VERSION}

USE_NOEXECONLY=	Yes

SUBST_VARS+=	VERSION CONFIG

WANTLIB=	c m ${COMPILER_LIBCXX} gmp mpfr mpc pthread
DIST_SUBDIR=	gcc

COMPILER =	base-clang ports-gcc base-gcc

SITES=		${SITE_GCC:=releases/gcc-$(VERSION)/}

.if ${MACHINE_ARCH} == "powerpc64"
PATCH_LIST =	patch-* vecstep-*
.endif

BUILD_DEPENDS+=	devel/bison		\
		${RUN_DEPENDS}
LIB_DEPENDS=	devel/mpfr devel/libmpc

BUILD_DEPENDS+=	devel/x86_64-elf/binutils
RUN_DEPENDS=	devel/x86_64-elf/binutils

LANGS=		c,c++

CONFIGURE_ARGS+=--enable-languages=${LANGS}	\
		--enable-multilib		\
		--enable-interwork		\
		--with-gmp=${LOCALBASE}		\
		--with-newlib			\
		--disable-libcc1		\
		--enable-cpp			\
		--without-isl			\
		--without-zstd
CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# Avoid build failure when lang/gcc is installed whose ansidecl.h misses these
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
