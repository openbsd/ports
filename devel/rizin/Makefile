# librz/debug/p/native/reg.c
# #error "Unsupported BSD architecture"
ONLY_FOR_ARCHS = amd64 i386

COMMENT =	free and open source reverse engineering framework

V =		0.4.1
DISTNAME =	rizin-src-v${V}
EXTRACT_SUFX =	.tar.xz
PKGNAME =	rizin-${V}

SITES =		https://github.com/rizinorg/rizin/releases/download/v${V}/

# Upstream shared lib versions are the same as the rizin release version.
LIBV =			0.0	# ${V}
.for _lib in rz_analysis rz_asm rz_bin rz_bp rz_config rz_cons rz_core \
	rz_crypto rz_debug rz_demangler rz_diff rz_egg rz_flag rz_hash \
	rz_il rz_io rz_lang rz_magic rz_main rz_parse rz_reg rz_search \
	rz_sign rz_socket rz_syscall rz_type rz_util
SHARED_LIBS+=		${_lib} ${LIBV}
.endfor

CATEGORIES =	devel

HOMEPAGE =	https://rizin.re/

# Many licenses. See ${WRKDIST}/LICENSES.
PERMIT_PACKAGE =	Yes

WANTLIB += c capstone crypto kvm lz4 m magic pthread ssl uv xxhash
WANTLIB += z zip

MODULES =		devel/meson \
			lang/python
MODPY_RUNDEP =		No

# Dependencies
LIB_DEPENDS =		devel/capstone/main \
			sysutils/xxhash \
			devel/libmagic \
			devel/libuv \
			archivers/lz4 \
			archivers/libzip

# Used during build if detected during configure time,
# so list as a BDEP to avoid DPB junking.
BUILD_DEPENDS =		textproc/py-yaml${MODPY_FLAVOR}

# The release tarball is vendored and has a lot of dependencies bundled. We
# "unbundle" them where possible with `-Duse_sys_*=enabled`. When updating, the
# port, check `meson.build` for new dependencies that cen be unbundled.
#
# We don't use the system treesitter, as upstream inform me that rizin is quite
# sensitive to treesitter versions.
CONFIGURE_ARGS =	-Dpackager="OpenBSD ports" \
			-Duse_sys_capstone=enabled \
			-Duse_sys_xxhash=enabled \
			-Duse_sys_magic=enabled \
			-Duse_sys_openssl=enabled \
			-Duse_sys_libuv=enabled \
			-Duse_sys_zlib=enabled \
			-Duse_sys_lz4=enabled \
			-Duse_sys_libzip=enabled

CFLAGS +=		-I${LOCALBASE}/include
WRKDIST =		${WRKDIR}/rizin-v${V}

# We run only the unit tests. The other tests would require downloading a load
# of test binaries. Upstream has OpenBSD in their CI pipeline, so unit testing
# should be sufficient for us.
do-test:
	exec ${SETENV} ${ALL_TEST_ENV} \
		${LOCALBASE}/bin/meson test --suite unit \
		--num-processes ${MAKE_JOBS} \
		--print-errorlogs -C ${WRKBUILD}

.include <bsd.port.mk>
