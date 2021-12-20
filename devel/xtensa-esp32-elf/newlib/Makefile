# $OpenBSD: Makefile,v 1.5 2021/12/20 12:57:45 naddy Exp $

COMMENT =	newlib for ${CONFIG} cross-development

VERSION =	2021.2
PKGNAME =	${CONFIG}-newlib-${VERSION}

GH_ACCOUNT =	espressif
GH_PROJECT =	newlib-esp32
GH_TAGNAME =	esp-2021r2

BUILD_DEPENDS =	devel/${CONFIG}/binutils \
		devel/${CONFIG}/gcc-bootstrap \
		lang/gawk
RUN_DEPENDS =	devel/${CONFIG}/binutils

USE_GROFF =	No

CONFIGURE_ENV =	CC_FOR_TARGET="${INSTALLDIR}/bootstrap/bin/${CONFIG}-gcc" \
		AR_FOR_TARGET="${INSTALLDIR}/bin/${CONFIG}-ar" \
		RANLIB_FOR_TARGET="${INSTALLDIR}/bin/${CONFIG}-ranlib"

CONFIGURE_ARGS +=	--enable-multilib \
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
