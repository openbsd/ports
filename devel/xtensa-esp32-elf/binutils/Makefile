# $OpenBSD: Makefile,v 1.5 2022/01/08 16:58:33 tracey Exp $

COMMENT =	binutils for ${CONFIG} cross-development
VERSION =	2.35.1.2020.1223
PKGNAME =	${CONFIG}-binutils-${VERSION}
REVISION =	0

GH_ACCOUNT =	espressif
GH_PROJECT =	binutils-gdb
GH_TAGNAME =	esp-2021r2-binutils

WANTLIB += c z

CONFIGURE_ARGS +=	--disable-multilib \
			--with-gnu-as \
			--with-gnu-ld \
			--disable-werror \
			--disable-gdb

.include <bsd.port.mk>
