# $OpenBSD: Makefile,v 1.2 2020/03/18 13:51:25 sthen Exp $

COMMENT =	gdb for ${CONFIG} cross-development

VERSION =	8.2.1
PKGNAME =	${CONFIG}-gdb-${VERSION}

GH_ACCOUNT =	jcmvbkbc
GH_PROJECT =	binutils-gdb-xtensa
GH_TAGNAME =	gdb-8.2.1-release

WANTLIB +=	${COMPILER_LIBCXX} c curses expat m

COMPILER =	base-clang ports-gcc base-gcc

BUILD_DEPENDS = 	devel/libtool \
			devel/bison \
			devel/xtensa-lx106-elf/binutils
RUN_DEPENDS +=		devel/xtensa-lx106-elf/binutils

SEPARATE_BUILD =	Yes
USE_GMAKE = 		Yes
YACC =			bison -y

CONFIGURE_ARGS +=	--enable-commonbfdlib=no \
			--with-cross-host=yes \
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
