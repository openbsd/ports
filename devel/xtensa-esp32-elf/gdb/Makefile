# $OpenBSD: Makefile,v 1.1.1.1 2020/03/11 14:24:58 tracey Exp $

COMMENT =	gdb for ${CONFIG} cross-development

VERSION =	2.33.1.2019.2
PKGNAME =	${CONFIG}-gdb-${VERSION}

GH_ACCOUNT =	espressif
GH_PROJECT =	binutils-gdb
GH_TAGNAME =	esp-2019r2-gdb

WANTLIB = 	c curses expat ${COMPILER_LIBCXX} gmp m mpfr

COMPILER =	base-clang ports-gcc base-gcc

BUILD_DEPENDS =	devel/libtool \
		devel/bison \
		devel/xtensa-esp32-elf/binutils
RUN_DEPENDS +=	devel/xtensa-esp32-elf/binutils
LIB_DEPENDS =	devel/gmp \
		devel/mpfr

YACC =		bison -y

CONFIGURE_ARGS	+=	--enable-commonbfdlib=no \
			--with-cross-host=yes \
			--disable-werror \
			--without-guile \
			--without-lzma \
			--disable-binutils \
			--disable-ld \
			--disable-gas \
			--disable-gprof \
			--disable-install-libiberty \
			--enable-gdb \
			--enable-sim

.include <bsd.port.mk>
