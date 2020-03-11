# $OpenBSD: Makefile,v 1.1.1.1 2020/03/11 14:24:58 tracey Exp $

COMMENT =	newlib for ${CONFIG} cross-development

VERSION =	2019.2
PKGNAME =	${CONFIG}-newlib-${VERSION}

GH_ACCOUNT =	espressif
GH_PROJECT =	newlib-esp32
GH_TAGNAME =	esp-2019r2

BUILD_DEPENDS =	devel/${CONFIG}/binutils \
		${RUN_DEPENDS}
RUN_DEPENDS =	devel/${CONFIG}/gcc-bootstrap

USE_GROFF =	No

CONFIGURE_ENV =	CC_FOR_TARGET="${LOCALBASE}/${CONFIG}/bootstrap/bin/${CONFIG}-gcc"

CONFIGURE_ARGS +=	--with-system-zlib \
			--enable-newlib-io-float \
			--disable-newlib-io-long-double \
			--enable-newlib-io-pos-args \
			--enable-newlib-io-c99-formats \
			--enable-newlib-io-long-long \
			--disable-newlib-register-fini \
			--disable-newlib-nano-formatted-io \
			--disable-newlib-supplied-syscalls \
			--enable-newlib-atexit-dynamic-alloc \
			--disable-newlib-global-atexit \
			--disable-lite-exit \
			--enable-newlib-reent-small \
			--enable-newlib-multithread \
			--enable-newlib-wide-orient \
			--enable-newlib-unbuf-stream-opt \
			--enable-target-optspace \
			--enable-newlib-nano-malloc

.include <bsd.port.mk>
