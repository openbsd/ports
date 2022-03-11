COMMENT =	newlib for ${CONFIG} cross-development

VERSION =	4.0.0
DISTNAME =	newlib-${VERSION}
PKGNAME =	${CONFIG}-newlib-${VERSION}

GH_ACCOUNT =	earlephilhower
GH_PROJECT =	newlib-xtensa
GH_COMMIT =	85c33ba4523820f1525aa4045cb5d7393b7b1e79

BUILD_DEPENDS =	devel/${CONFIG}/binutils \
		devel/${CONFIG}/gcc-bootstrap
RUN_DEPENDS =	devel/${CONFIG}/binutils

USE_GROFF =	No

CONFIGURE_ENV +=	CC_FOR_TARGET="${INSTALLDIR}/bootstrap/bin/${CONFIG}-gcc" \
			AR_FOR_TARGET="${INSTALLDIR}/bin/${CONFIG}-ar" \
			RANLIB_FOR_TARGET="${INSTALLDIR}/bin/${CONFIG}-ranlib"
CONFIGURE_ARGS +=	--enable-multilib \
			--disable-newlib-io-c99-formats \
			--disable-newlib-supplied-syscalls \
			--enable-newlib-nano-formatted-io \
			--enable-newlib-reent-small \
			--enable-target-optspace \
			--disable-option-checking

.include <bsd.port.mk>
