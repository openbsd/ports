# $OpenBSD: Makefile,v 1.5 2021/12/14 13:26:12 naddy Exp $

COMMENT =	gdb for ${CONFIG} cross-development

VERSION =	2.35.1.2021.2
PKGNAME =	${CONFIG}-gdb-${VERSION}
REVISION =	0

GH_ACCOUNT =	espressif
GH_PROJECT =	binutils-gdb
GH_TAGNAME =	esp-2021r2-gdb

WANTLIB += ${COMPILER_LIBCXX} c curses expat m z

BUILD_DEPENDS =	devel/libtool \
		devel/bison \
		devel/xtensa-esp32-elf/binutils \
		lang/gawk \
		textproc/gsed
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
