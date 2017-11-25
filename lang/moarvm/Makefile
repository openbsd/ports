# $OpenBSD: Makefile,v 1.16 2017/11/25 21:50:50 afresh1 Exp $

ONLY_FOR_ARCHS =	amd64 arm i386 mips64 mips64el powerpc sparc64
BROKEN-arm =		missing atomic ops (both AO_* and gcc builtin)
BROKEN-sparc64 =	undefined reference to `AO_fetch_compare_and_swap_full'

COMMENT =		virtual machine for nqp/rakudo

V =			2017.10
DISTNAME =		MoarVM-$V
PKGNAME =		moarvm-$V

SHARED_LIBS =		moar	8.0

CATEGORIES =		lang

HOMEPAGE =		http://moarvm.org/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Artistic2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		atomic_ops c ffi kvm m pthread

MASTER_SITES =		http://moarvm.org/releases/

BUILD_DEPENDS =		math/libtommath
LIB_DEPENDS =		devel/libffi \
			devel/boehm-gc,-atomic

MAKE_FLAGS =		NOISY=1

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS +=	--cc="${CC}" --ld="${CC}" \
			--prefix="${PREFIX}" \
			--has-libtommath \
			--has-libffi \
			--has-libatomic_ops
CONFIGURE_ENV =		SO_VERSION="${LIBmoar_VERSION}" \
			CFLAGS="-I${LOCALBASE}/include"

NO_TEST =		Yes

.include <bsd.port.mk>
