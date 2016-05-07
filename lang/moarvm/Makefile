# $OpenBSD: Makefile,v 1.12 2016/05/07 12:40:57 pascal Exp $

BROKEN-arm =		missing atomic ops (both AO_* and gcc builtin)
BROKEN-sparc64 =	undefined reference to `AO_fetch_compare_and_swap_full'
BROKEN-hppa =		dyncall_callvm.c:68:4: error: \#error unsupported platform

COMMENT =		virtual machine for nqp/rakudo

V =			2015.12
DISTNAME =		MoarVM-$V
PKGNAME =		moarvm-$V
REVISION =		0

SHARED_LIBS =		moar	5.0

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
CONFIGURE_ARGS +=	--cc="${CC}" --ld="${CC}" --optimize=0 \
			--prefix="${PREFIX}" \
			--has-libtommath \
			--has-libffi \
			--has-libatomic_ops
CONFIGURE_ENV =		SO_VERSION="${LIBmoar_VERSION}" \
			CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

.include <bsd.port.mk>
