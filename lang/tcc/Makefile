# $OpenBSD: Makefile,v 1.3 2021/03/11 23:07:32 bcallah Exp $

# Also has a riscv target
ONLY_FOR_ARCHS =	amd64 arm64 armv7 i386

COMMENT =	tiny C compiler
DISTNAME =	tcc-0.9.27.20210221
CATEGORIES =	lang

# 0.9.27 release pre-dates OpenBSD support; use GH_COMMIT
GH_ACCOUNT =	TinyCC
GH_PROJECT =	tinycc
GH_COMMIT =	d0d0c8b688366ca9dccddcfbacb5e33c8b1790bb

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
			--infodir="${PREFIX}/info" \
			--mandir="${PREFIX}/man" \
			--with-selinux

USE_GMAKE =	Yes

.include <bsd.port.mk>
