# $OpenBSD: Makefile,v 1.3 2021/11/18 15:54:27 tracey Exp $

COMMENT =	binutils for ${CONFIG} cross-development
VERSION =	2.35.1.2020.1223
PKGNAME =	${CONFIG}-binutils-${VERSION}

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
