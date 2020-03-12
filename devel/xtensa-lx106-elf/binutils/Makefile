# $OpenBSD: Makefile,v 1.1.1.1 2020/03/12 15:05:19 tracey Exp $

COMMENT =	binutils for ${CONFIG} cross-development

VERSION =	2.32
PKGNAME =	${CONFIG}-binutils-${VERSION}

GH_ACCOUNT =	jcmvbkbc
GH_PROJECT =	binutils-gdb-xtensa
GH_TAGNAME =	binutils-2_32

WANTLIB =	c z

USE_LIBTOOL =	No

CONFIGURE_ARGS +=	--disable-werror \
			--with-system-zlib \
			--enable-ld=yes \
			--enable-gold=no \
			--disable-multilib \
			--disable-sim \
			--disable-gdb \
			--disable-nls \
			--with-sysroot=${LOCALBASE}/${CONFIG} \
			--disable-option-checking

.include <bsd.port.mk>
