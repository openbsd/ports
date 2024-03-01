ONLY_FOR_ARCHS =	aarch64 amd64 arm i386 mips64 mips64el powerpc powerpc64 riscv64 sparc64

COMMENT =		virtual machine for nqp/rakudo

V =			2024.01
DISTNAME =		MoarVM-$V
PKGNAME =		moarvm-$V

SHARED_LIBS =		moar	14.0

CATEGORIES =		lang

HOMEPAGE =		https://moarvm.org/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Artistic2
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB =		atomic_ops c ffi kvm m pthread uv zstd

SITES =			https://moarvm.org/releases/

BUILD_DEPENDS =		math/libtommath>=1.2.0
LIB_DEPENDS =		devel/libffi \
			devel/boehm-gc,-atomic \
			devel/libuv \
			archivers/zstd

MAKE_FLAGS =		NOISY=1

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS +=	--cc="${CC}" --ld="${CC}" --no-optimize \
			--prefix="${PREFIX}" \
			--has-libtommath \
			--has-libffi \
			--has-libatomic_ops \
			--has-libuv \
			--no-jit \
			--no-mimalloc \
			--no-c11-atomics
CONFIGURE_ENV =		SO_VERSION="${LIBmoar_VERSION}" \
			CFLAGS="-std=gnu99 ${CFLAGS}"
.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ENV+=		LDFLAGS="-lc++abi"
WANTLIB+=		c++abi
.endif

NO_TEST =		Yes

.include <bsd.port.mk>
