COMMENT =		libre and portable reverse engineering framework

V =			5.7.6
SUBST_VARS +=		V

GH_PROJECT =		radare2
GH_TAGNAME =		${V}

# When updating, grep the sources for `ARCH_ARM64_COMMIT` and
# `ARCH_ARM7_COMMIT`.
VECTOR35_ARM64_COMMIT =	9ab2b0be
VECTOR35_ARMV7_COMMIT =	dde39f69
SITES.arm64 =	https://github.com/radareorg/vector35-arch-arm64/archive/
SITES.armv7 =	https://github.com/radareorg/vector35-arch-armv7/archive/
DISTFILES.arm64 = 	vector35-arch-arm64-{}${VECTOR35_ARM64_COMMIT}.tar.gz
DISTFILES.armv7 = 	vector35-arch-armv7-{}${VECTOR35_ARMV7_COMMIT}.tar.gz

# In radare, all libs have the same version.
LIBV =			9.0	# Upstream lib versions same as ${V}.
.for _lib in r_anal r_asm r_bin r_bp r_config r_cons r_core \
	r_crypto r_debug r_egg r_flag r_fs r_hash r_io r_lang \
	r_main r_magic r_parse r_reg r_search r_socket \
	r_syscall r_util r2
SHARED_LIBS+=		${_lib} ${LIBV}
.endfor

# uses pledge()
WANTLIB =		c capstone crypto kvm m pthread ssl uv z zip

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS =		archivers/libzip \
			devel/capstone/main>=3.0.4p0 \
			devel/libuv

# --with-sysmagic triggers build error
CONFIGURE_ARGS +=	--mandir=${PREFIX}/man \
			--with-libversion=${LIBV} \
			--with-openssl \
			--with-syscapstone \
			--with-syszip

CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib"
MAKE_ENV =		HOST_CC="${CC}" HOST_CFLAGS="${CFLAGS}"

# Requires network to download a number of test binaries.
# Test suite seems very broken, but we kind of expected *some* failures, as we
# use an older capstone than r2 embeds by default.
TEST_DEPENDS =		devel/git \
			textproc/jq \
			${BASE_PKGPATH}=${V}
TEST_IS_INTERACTIVE =	Yes
TEST_TARGET =		tests

post-extract:
	mv ${WRKDIR}/vector35-arch-arm64-${VECTOR35_ARM64_COMMIT}* \
		${WRKSRC}/libr/asm/arch/arm/v35arm64/arch-arm64
	mv ${WRKDIR}/vector35-arch-armv7-${VECTOR35_ARMV7_COMMIT}* \
		${WRKSRC}/libr/asm/arch/arm/v35arm64/arch-armv7

post-patch:
	sed -i 's/>mips/>mipsen/' ${WRKSRC}/libr/anal/p/anal_mips_cs.c

# https://github.com/radare/radare2/blob/master/doc/capstone.md
post-configure:
	sed -i 's|include/capstone|include|' ${WRKSRC}/config-user.mk

.include <bsd.port.mk>
