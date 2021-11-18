# $OpenBSD: Makefile,v 1.5 2021/11/18 15:54:27 tracey Exp $

COMMENT =	gcc for ${CONFIG} cross-development

V =		8.4.0
VERSION =	${V}.2021.2
PKGNAME =	${CONFIG}-gcc-${VERSION}

SHARED_LIBS +=  cc1plugin                 0.0 # 0.0
SHARED_LIBS +=  cp1plugin                 0.0 # 0.0
SHARED_LIBS +=  cc1                       0.0 # 0.0

GH_ACCOUNT =	espressif
GH_PROJECT =	gcc
GH_TAGNAME =	esp-2021r2

WANTLIB =	${COMPILER_LIBCXX} c gmp isl m mpc mpfr z

SUBST_VARS +=	V

LIBELF =	libelf-0.8.13
MASTER_SITES0 =	https://github.com/earlephilhower/esp-quick-toolchain/raw/master/blobs/
DISTFILES =	${DISTNAME}${EXTRACT_SUFX}
DISTFILES +=	${LIBELF}${EXTRACT_SUFX}:0

.if ${MACHINE_ARCH} == "powerpc64"
PATCH_LIST =	patch-* vecstep-*
.endif

MODULES =		lang/python

BUILD_DEPENDS +=	devel/${CONFIG}/binutils \
			devel/${CONFIG}/newlib \
			lang/gawk \
			textproc/gsed
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
			--enable-target-optspace \
			--enable-gcov-custom-rtio \
			--enable-libstdcxx-time=yes

post-extract:
	mv ${WRKDIR}/${LIBELF} ${WRKSRC}/libelf

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/lib/gcc/${CONFIG}/${V}/
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/${CONFIG}/
	@cd ${PREFIX}/${CONFIG}/bin && ln -s ${CONFIG}-gcc ${CONFIG}-cc

.include <bsd.port.mk>
