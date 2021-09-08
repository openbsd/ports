# $OpenBSD: Makefile,v 1.37 2021/09/08 06:02:59 martin Exp $

COMMENT=	Atmel AVR 8-bit RISC microcontrollers' XGCC #'

V=		8.5.0
DISTNAME =	gcc-$V
PKGNAME=	avr-gcc-${V}

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB=		c gmp mpfr ${COMPILER_LIBCXX} m mpc

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES= 	${MASTER_SITE_GCC:=releases/gcc-$(V)/}
EXTRACT_SUFX=	.tar.xz
DIST_SUBDIR=	gcc

.if ${MACHINE_ARCH} == "powerpc64"
PATCH_LIST =	patch-* vecstep-*
.endif

BUILD_DEPENDS+=		devel/autoconf/2.13 \
			devel/bison		\
			devel/metaauto		\
			devel/avr/binutils>=2.30

LIB_DEPENDS=		devel/libmpc

# dear autoconf, why do you suck so hard?
CONFIGURE_ENV=	INSTALL="install -c" \
		INSTALL_DATA="install -c -m 444" \
		INSTALL_SCRIPT="install -c -m 555"

CONFIGURE_ARGS+= --disable-libssp \
		--enable-languages="c,c++" \
		--enable-cpp \
		--disable-libcc1 \
		--with-gmp=${LOCALBASE} \
		--with-mpfr=${LOCALBASE}

MAKE_FLAGS=	LANGUAGES="c c++" CFLAGS="-I${LOCALBASE}/include"
MAKE_ENV=	MACHINE_ARCH=avr

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
YACC=		bison

TEST_DEPENDS=	devel/dejagnu

SUBST_VARS=	V

# Fix build with clang in c++11 mode
post-patch:
	find ${WRKSRC} -type f \( -name '*.[ch]' -o -name '*.cc' \) \
		-exec egrep -l '"(HOST_WIDE|PLUGIN_COND|PRId64)' {} + | \
		xargs sed -i -E -e 's/"(HOST_WIDE|PLUGIN_COND|PRId64)/" \1/g'

# XXX
post-install:
	mv -f ${PREFIX}/libexec/gcc/avr/$V/liblto_plugin.so.* \
		${PREFIX}/libexec/gcc/avr/$V/liblto_plugin.so

.include <bsd.port.mk>
