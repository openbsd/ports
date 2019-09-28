# $OpenBSD: Makefile,v 1.16 2019/09/28 00:29:11 jsg Exp $

BROKEN-powerpc=	libgcc/libgcc2.c:1999:1: internal compiler error: in create_edge, at cgraph.c:850

COMMENT=	gcc for ${CONFIG} cross-development, Linaro version

VERSION=	7.4-2019.02
DISTNAME=	gcc-linaro-${VERSION}
EXTRACT_SUFX=	.tar.xz
PKGNAME=	${CONFIG}-gcc-linaro-${VERSION:S/-/./g}

FLAVORS=	aarch64 arm
FLAVOR?=	arm

.if "${FLAVOR}" == "aarch64"
CONFIG=		aarch64-none-elf
.elif "${FLAVOR}" == "arm"
CONFIG=		arm-none-eabi
.else
ERRORS+=	"either aarch64 or arm FLAVOR should be set"
.endif

GCC_VERSION=	7.4.1
SUBST_VARS+=	VERSION CONFIG GCC_VERSION

WANTLIB=	c m ${COMPILER_LIBCXX} gmp mpfr mpc
DIST_SUBDIR=	gcc

COMPILER =		base-clang ports-gcc base-gcc

MAKE_GXX=	No
MAKE_FORTRAN=	No
MAKE_OBJC=	No
MAKE_JAVA=	No
MAKE_ADA=	No

# The "base" prefix is somewhat arbitrary, and introduced mostly because
# portcheck complains about lines longer than 80 characters.
MASTER_SITE_BASE=https://releases.linaro.org/components
MASTER_SITES= 	${MASTER_SITE_BASE}/toolchain/gcc-linaro/${VERSION}/

BUILD_DEPENDS+=	devel/autoconf/2.13	\
		devel/bison				\
		devel/metaauto

LIB_DEPENDS=	devel/mpfr devel/libmpc

.if ${FLAVOR:Maarch64}
BUILD_DEPENDS+=	devel/arm-none-eabi/binutils,aarch64
RUN_DEPENDS=	devel/arm-none-eabi/binutils,aarch64
.elif ${FLAVOR:Marm}
BUILD_DEPENDS+=	devel/arm-none-eabi/binutils,arm
RUN_DEPENDS=	devel/arm-none-eabi/binutils,arm
.else
ERRORS+=	"either aarch64 or arm FLAVOR should be set"
.endif

LANGS=		c,c++
CFLAGS=		-O2 -g

CONFIGURE_ARGS+=--enable-languages=${LANGS}	\
		--enable-multilib		\
		--enable-interwork		\
		--with-gmp=${LOCALBASE}		\
		--with-newlib			\
		--disable-lto			\
		--enable-cpp			\
		--disable-plugin
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# cope with user settings in /etc/mk.conf
MAKE_FLAGS=	LANGUAGES="c c++" CFLAGS="-I${LOCALBASE}/include"
MAKE_ENV=	MACHINE_ARCH=arm-none-eabi

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
YACC=		bison

TEST_DEPENDS=devel/dejagnu

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/gcc/${CONFIG}/${VERSION}/

.include <bsd.port.mk>

# The preprocessed source exceeds the suggested implementation limit
# of 256 for nesting levels of parenthesized expressions within a
# full-expression as given in Annex B of the C++ standard.
.if ${PROPERTIES:Mclang}
CXXFLAGS+=	-fbracket-depth=512
.endif
