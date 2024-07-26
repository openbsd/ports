# XXX: Sync with devel/iaito when updating.

COMMENT =		libre and portable reverse engineering framework

V =			5.8.8
REVISION =		1
SUBST_VARS +=		V

GH_PROJECT =		radare2
GH_TAGNAME =		${V}

# When updating, grep the sources for `ARCH_ARM64_COMMIT` and
# `ARCH_ARMV7_COMMIT`.
VECTOR35_ARM64_COMMIT =	55d73c6b
VECTOR35_ARMV7_COMMIT =	f270a6cc
SITES.arm64 =	https://github.com/radareorg/vector35-arch-arm64/archive/
SITES.armv7 =	https://github.com/radareorg/vector35-arch-armv7/archive/
DISTFILES.arm64 = 	vector35-arch-arm64-{}${VECTOR35_ARM64_COMMIT}.tar.gz
DISTFILES.armv7 = 	vector35-arch-armv7-{}${VECTOR35_ARMV7_COMMIT}.tar.gz

# In radare, all libs have the same version.
LIBV =			9.0	# Upstream lib versions equal ${V}.
ALL_LIBS =		r2 r_anal r_arch r_asm r_bin r_bp r_config r_cons r_core r_crypto r_debug
ALL_LIBS +=		r_egg r_esil r_flag r_fs r_hash r_io r_lang r_magic r_main r_parse r_reg
ALL_LIBS +=		r_search r_socket r_syscall r_util
.for _lib in ${ALL_LIBS}
SHARED_LIBS+=		${_lib} ${LIBV}
.endfor

# uses pledge()
WANTLIB =		c capstone kvm m pthread

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS =		devel/capstone/main

# --with-sysmagic triggers build error
CONFIGURE_ARGS +=	--mandir=${PREFIX}/man \
			--with-libversion=${LIBV} \
			--with-syscapstone

CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib"
MAKE_ENV =		HOST_CC="${CC}" HOST_CFLAGS="${CFLAGS}"

# Requires network to download a number of test binaries.
TEST_DEPENDS =		devel/git \
			textproc/jq \
			${BASE_PKGPATH}=${V}
TEST_IS_INTERACTIVE =	Yes
TEST_TARGET =		tests

post-extract:
	mv ${WRKDIR}/vector35-arch-arm64-${VECTOR35_ARM64_COMMIT}* \
		${WRKSRC}/libr/arch/p/arm/v35/arch-arm64
	mv ${WRKDIR}/vector35-arch-armv7-${VECTOR35_ARMV7_COMMIT}* \
		${WRKSRC}/libr/arch/p/arm/v35/arch-armv7

post-patch:
	sed -i 's/>mips/>mipsen/' ${WRKSRC}/libr/anal/p/anal_mips_cs.c

# https://github.com/radare/radare2/blob/master/doc/capstone.md
post-configure:
	sed -i 's|include/capstone|include|' ${WRKSRC}/config-user.mk

.include <bsd.port.mk>
