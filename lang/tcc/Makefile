# $OpenBSD: Makefile,v 1.1.1.1 2021/01/13 21:52:03 bcallah Exp $

# armv7 backend unfinished
# Also has a riscv target
ONLY_FOR_ARCHS =	amd64 arm64 i386

COMMENT =	tiny C compiler
DISTNAME =	tcc-0.9.27.20210112
CATEGORIES =	lang

# 0.9.27 release pre-dates OpenBSD support; use GH_COMMIT
GH_ACCOUNT =	TinyCC
GH_PROJECT =	tinycc
GH_COMMIT =	56f74f2eeb62107de736cca0c2aa38040de3333a

HOMEPAGE =	https://bellard.org/tcc/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1+
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
