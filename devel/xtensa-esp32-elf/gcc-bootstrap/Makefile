COMMENT =	bootstrap compiler for ${CONFIG} cross-development

V =		8.4.0
VERSION =	${V}.2021.2
PKGNAME =	${CONFIG}-gcc-bootstrap-${VERSION}

GH_ACCOUNT =	espressif
GH_PROJECT =	gcc
GH_TAGNAME =	esp-2021r2

WANTLIB += ${COMPILER_LIBCXX} c gmp isl m mpc mpfr z

SUBST_VARS +=	V

.if ${MACHINE_ARCH} == "powerpc64"
PATCH_LIST =	patch-* vecstep-*
.endif

BUILD_DEPENDS +=	devel/${CONFIG}/binutils
LIB_DEPENDS =		devel/gmp \
			devel/mpfr \
			devel/libmpc \
			math/isl

CONFIGURE_ARGS +=	--exec-prefix="${INSTALLDIR}/bootstrap" \
			--with-as="${INSTALLDIR}/bin/${CONFIG}-as" \
			--with-ld="${INSTALLDIR}/bin/${CONFIG}-ld" \
			--with-gmp="${LOCALBASE}" \
			--with-isl="${LOCALBASE}"

ALL_TARGET =		all-gcc
INSTALL_TARGET =	install-gcc

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/${CONFIG}/lib/gcc/${CONFIG}/${VERSION}/

.include <bsd.port.mk>
