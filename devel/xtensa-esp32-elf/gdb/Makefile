# $OpenBSD: Makefile,v 1.3 2021/11/18 15:54:27 tracey Exp $

COMMENT =	gdb for ${CONFIG} cross-development

VERSION =	2.35.1.2021.2
PKGNAME =	${CONFIG}-gdb-${VERSION}

GH_ACCOUNT =	espressif
GH_PROJECT =	binutils-gdb
GH_TAGNAME =	esp-2021r2-gdb

WANTLIB += ${COMPILER_LIBCXX} c curses expat m z

BUILD_DEPENDS =	devel/libtool \
		devel/bison \
		devel/xtensa-esp32-elf/binutils
RUN_DEPENDS +=	devel/xtensa-esp32-elf/binutils

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
