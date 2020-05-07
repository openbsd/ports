# $OpenBSD: Makefile,v 1.4 2020/05/07 14:24:53 sthen Exp $

BROKEN-arm =	can't create dynamic relocation R_ARM_ABS32 against local symbol in readonly segment

COMMENT =	gdb for ${CONFIG} cross-development

VERSION =	8.2.1
PKGNAME =	${CONFIG}-gdb-${VERSION}

GH_ACCOUNT =	jcmvbkbc
GH_PROJECT =	binutils-gdb-xtensa
GH_TAGNAME =	gdb-8.2.1-release
REVISION =	0

WANTLIB +=	${COMPILER_LIBCXX} c curses expat m

COMPILER =	base-clang ports-gcc base-gcc

BUILD_DEPENDS = 	devel/libtool \
			devel/bison \
			devel/gmp \
			devel/mpfr \
			devel/xtensa-lx106-elf/binutils
RUN_DEPENDS +=		devel/xtensa-lx106-elf/binutils

SEPARATE_BUILD =	Yes
USE_GMAKE = 		Yes
YACC =			bison -y

CONFIGURE_ARGS +=	--enable-commonbfdlib=no \
			--with-cross-host=yes \
			--with-gmp=${LOCALBASE} \
			--with-mpfr=${LOCALBASE} \
			--disable-werror \
			--disable-nls \
			--without-guile \
			--without-lzma \
			--disable-binutils \
			--disable-ld \
			--disable-gas \
			--disable-gprof \
			--disable-install-libiberty \
			--enable-gdb \
			--enable-sim

CONFIGURE_ENV =		LDFLAGS="${LDFLAGS}"

.include <bsd.port.arch.mk>

# can't create dynamic relocation R_386_32 against local symbol in readonly segment
.if ${ARCH:Mi386}
CFLAGS += -fno-pie
LDFLAGS += -nopie
.endif

.include <bsd.port.mk>
