# $OpenBSD: Makefile,v 1.23 2019/07/12 20:47:20 sthen Exp $

ONLY_FOR_ARCHS =	aarch64 amd64 arm i386 mips64 mips64el powerpc sparc64
BROKEN-sparc64 =	undefined reference to `AO_fetch_compare_and_swap_full'

COMMENT =		virtual machine for nqp/rakudo

V =			2018.12
DISTNAME =		MoarVM-$V
PKGNAME =		moarvm-$V
REVISION =		0

SHARED_LIBS =		moar	9.0

CATEGORIES =		lang

HOMEPAGE =		http://moarvm.org/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Artistic2
PERMIT_PACKAGE =	Yes

WANTLIB =		atomic_ops c ffi kvm m pthread uv

MASTER_SITES =		http://moarvm.org/releases/

BUILD_DEPENDS =		math/libtommath
LIB_DEPENDS =		devel/libffi \
			devel/boehm-gc,-atomic \
			devel/libuv

MAKE_FLAGS =		NOISY=1

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS +=	--cc="${CC}" --ld="${CC}" \
			--prefix="${PREFIX}" \
			--has-libtommath \
			--has-libffi \
			--has-libatomic_ops \
			--has-libuv \
			--no-jit
CONFIGURE_ENV =		SO_VERSION="${LIBmoar_VERSION}" \
			CFLAGS="-I${LOCALBASE}/include"

NO_TEST =		Yes

.include <bsd.port.mk>
