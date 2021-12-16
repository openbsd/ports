# $OpenBSD: Makefile,v 1.8 2021/12/16 21:02:53 bcallah Exp $

ONLY_FOR_ARCHS =	amd64 arm64 armv7 i386 riscv64

COMMENT =	tiny C compiler
DISTNAME =	tcc-0.9.27.20211215
CATEGORIES =	lang

# 0.9.27 release pre-dates OpenBSD support; use GH_COMMIT
GH_ACCOUNT =	mirror
GH_PROJECT =	tinycc
GH_COMMIT =	027b8fb9b88fe137447fb8bb1b61079be9702472

HOMEPAGE =	https://bellard.org/tcc/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1+
# stdatomic.h: Apache 2.0 with LLVM exceptions
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread

# --with-selinux (misnomer for mmap/mprotect) required for -run
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--cc="${CC}" \
			--docdir="${PREFIX}/share/doc/tcc" \
			--extra-cflags="${CFLAGS} ${GIT_HASH}" \
			--infodir="${PREFIX}/info" \
			--mandir="${PREFIX}/man" \
			--with-selinux

USE_GMAKE =	Yes

GIT_HASH =	-DTCC_GITHASH='\\\"mob:`echo ${GH_COMMIT} | cut -c1-7`\\\"'

.include <bsd.port.mk>
