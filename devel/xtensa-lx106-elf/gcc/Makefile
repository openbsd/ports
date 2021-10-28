# $OpenBSD: Makefile,v 1.6 2021/10/28 19:24:00 tracey Exp $

COMMENT =	gcc for ${CONFIG} cross-development

VERSION =	10.2.0
DISTNAME =	gcc-${VERSION}
PKGNAME =	${CONFIG}-gcc-${VERSION}

SHARED_LIBS +=  cc1plugin                 0.0 # 0.0
SHARED_LIBS +=  cp1plugin                 0.0 # 0.0
SHARED_LIBS +=  cc1                       0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} c gmp isl m mpc mpfr

SUBST_VARS +=	VERSION

MASTER_SITES = 	${MASTER_SITE_GCC:=releases/gcc-$(VERSION)/}
MASTER_SITES0 =	https://raw.githubusercontent.com/earlephilhower/esp-quick-toolchain/master/patches/gcc10.2/
PATCHFILES = 	gcc-ctype-inline-pgmread.patch:0 \
		gcc-eh-alloc.patch:0 \
		gcc-enable-mforcel32-eh.patch:0 \
		gcc-exception-what-to-pmem.patch:0 \
		gcc-file-shortname.patch:0 \
		gcc-func-sect.patch:0 \
		gcc-mforce-l32.patch:0 \
		gcc-regex-what-to-pmem.patch:0 \
		gcc-stdcsupp-safe.patch:0 \
		gcc-unwind-safe.patch:0 \
		gcc-xtensa-add-optimizations-for-shift-operations.patch:0 \
		gcc-xtensa-fix-PR-target-98285.patch:0 \
		gcc-xtensa-implement-bswapsi2-bswapdi2-and-helpers.patch:0 \
		gcc-xtensa-rearrange-DI-mode-constant-loading.patch:0
PATCH_DIST_STRIP = -p1

LIBELF =	libelf-0.8.13
MASTER_SITES1 =	https://github.com/earlephilhower/esp-quick-toolchain/raw/master/blobs/
DISTFILES =	${DISTNAME}${EXTRACT_SUFX}
DISTFILES +=	${LIBELF}${EXTRACT_SUFX}:1

.if ${MACHINE_ARCH} == "powerpc64"
PATCH_LIST =	patch-* vecstep-*
.endif

MODULES =	lang/python

BUILD_DEPENDS +=	devel/${CONFIG}/binutils \
			devel/${CONFIG}/newlib
RUN_DEPENDS =		devel/${CONFIG}/binutils \
			devel/${CONFIG}/newlib
LIB_DEPENDS =		devel/gmp \
			devel/libmpc \
			devel/mpfr \
			math/isl

CONFIGURE_ENV +=	AR_FOR_TARGET="${INSTALLDIR}/bin/${CONFIG}-ar" \
			RANLIB_FOR_TARGET="${INSTALLDIR}/bin/${CONFIG}-ranlib"
CONFIGURE_ARGS +=	--with-as="${INSTALLDIR}/bin/${CONFIG}-as" \
			--with-ld="${INSTALLDIR}/bin/${CONFIG}-ld" \
			--with-sysroot="${INSTALLDIR}/${CONFIG}" \
			--with-gmp="${LOCALBASE}" \
			--with-isl="${LOCALBASE}" \
			--disable-multilib

post-extract:
	mv ${WRKDIR}/${LIBELF} ${WRKSRC}/libelf

post-build:
.for OBJ in _divsi3.o _udivsi3.o _umodsi3.o _umulsidi3.o _addsubsf3.o \
	_mulsf3.o _fixunssfsi.o _floatsisf.o _addsubdf3.o _muldf3.o _divdf3.o \
	_fixdfsi.o _fixunsdfsi.o _floatsidf.o _truncdfsf2.o _extendsfdf2.o \
	_muldi3.o _divdi3.o _udivdi3.o _umoddi3.o
	${LOCALBASE}/${CONFIG}/bin/${CONFIG}-ar d \
		${WRKBUILD}/${CONFIG}/libgcc/libgcc.a ${OBJ}
.endfor

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/${CONFIG}/lib/gcc/${CONFIG}/${VERSION}/
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/${CONFIG}/
	@cd ${PREFIX}/${CONFIG}/bin && ln -s ${CONFIG}-gcc ${CONFIG}-cc

.include <bsd.port.mk>
