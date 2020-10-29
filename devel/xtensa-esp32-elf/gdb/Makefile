# $OpenBSD: Makefile,v 1.2 2020/10/29 14:10:52 tracey Exp $

COMMENT =	gdb for ${CONFIG} cross-development

VERSION =	2.33.1.2020.3
PKGNAME =	${CONFIG}-gdb-${VERSION}

GH_ACCOUNT =	espressif
GH_PROJECT =	binutils-gdb
GH_TAGNAME =	esp-2020r3-gdb

WANTLIB = 	c curses expat ${COMPILER_LIBCXX} gmp m mpfr

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
