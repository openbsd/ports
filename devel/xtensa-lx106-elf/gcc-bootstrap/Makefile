BROKEN-powerpc64 = fails to apply patches/vecstep-*

COMMENT =	bootstrap compiler for ${CONFIG} cross-development

VERSION =	10.2.0
DISTNAME =	gcc-${VERSION}
PKGNAME =	${CONFIG}-gcc-bootstrap-${VERSION}
REVISION =	1

WANTLIB += ${COMPILER_LIBCXX} c gmp isl m mpc mpfr

SUBST_VARS +=	VERSION

SITES = 	${SITE_GCC:=releases/gcc-$(VERSION)/}
SITES.p =	https://raw.githubusercontent.com/earlephilhower/esp-quick-toolchain/master/patches/gcc10.2/
PATCHFILES.p = 	gcc-ctype-inline-pgmread.patch \
		gcc-eh-alloc.patch \
		gcc-enable-mforcel32-eh.patch \
		gcc-exception-what-to-pmem.patch \
		gcc-file-shortname.patch \
		gcc-func-sect.patch \
		gcc-mforce-l32.patch \
		gcc-regex-what-to-pmem.patch \
		gcc-stdcsupp-safe.patch \
		gcc-unwind-safe.patch \
		gcc-xtensa-add-optimizations-for-shift-operations.patch \
		gcc-xtensa-fix-PR-target-98285.patch \
		gcc-xtensa-implement-bswapsi2-bswapdi2-and-helpers.patch \
		gcc-xtensa-rearrange-DI-mode-constant-loading.patch
PATCH_DIST_STRIP = -p1

.if ${MACHINE_ARCH} == "powerpc64"
PATCH_LIST =	patch-* vecstep-*
.endif

BUILD_DEPENDS +=	devel/${CONFIG}/binutils
LIB_DEPENDS =		devel/gmp \
			devel/libmpc \
			devel/mpfr \
			math/isl

CONFIGURE_ARGS +=	--exec-prefix="${INSTALLDIR}/bootstrap" \
			--with-as="${INSTALLDIR}/bin/${CONFIG}-as" \
			--with-ld="${INSTALLDIR}/bin/${CONFIG}-ld" \
			--with-gmp="${LOCALBASE}" \
			--with-isl="${LOCALBASE}" \
			--disable-multilib

ALL_TARGET =		all-gcc
INSTALL_TARGET =	install-gcc

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/${CONFIG}/lib/gcc/${CONFIG}/${VERSION}/

.include <bsd.port.mk>
