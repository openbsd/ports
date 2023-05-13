ONLY_FOR_ARCHS =	amd64 arm64 armv7 i386 riscv64

COMMENT =	tiny C compiler
DISTNAME =	tcc-0.9.27.20230425
CATEGORIES =	lang

# 0.9.27 release pre-dates OpenBSD support; use GH_COMMIT
GH_ACCOUNT =	TinyCC
GH_PROJECT =	tinycc
GH_COMMIT =	0ec3a40dfd9513f3e803450eaa1ed7833f89568c

HOMEPAGE =	https://bellard.org/tcc/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1+
# stdatomic.h: Apache 2.0 with LLVM exceptions
# dwarf.h: LGPLv3+ or GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread

# --with-selinux (misnomer for mmap/mprotect) required for -run
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--cc="${CC}" \
			--config-pie \
			--docdir="${PREFIX}/share/doc/tcc" \
			--dwarf=5 \
			--extra-cflags="${CFLAGS} ${GIT_HASH}" \
			--infodir="${PREFIX}/info" \
			--mandir="${PREFIX}/man" \
			--with-selinux

USE_GMAKE =	Yes

GIT_HASH =	-DTCC_GITHASH='\\\"2023-04-25 mob@`echo ${GH_COMMIT} | cut -c1-7`\\\"'

.include <bsd.port.mk>
