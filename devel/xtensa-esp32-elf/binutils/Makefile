# $OpenBSD: Makefile,v 1.4 2021/11/28 14:53:44 tracey Exp $

COMMENT =	binutils for ${CONFIG} cross-development
VERSION =	2.35.1.2020.1223
PKGNAME =	${CONFIG}-binutils-${VERSION}
REVISION =	0

GH_ACCOUNT =	espressif
GH_PROJECT =	binutils-gdb
GH_TAGNAME =	esp-2021r2-binutils

WANTLIB += c z

BUILD_DEPENDS +=	lang/gawk

CONFIGURE_ARGS +=	--disable-multilib \
			--with-gnu-as \
			--with-gnu-ld \
			--disable-werror \
			--disable-gdb

.include <bsd.port.mk>
