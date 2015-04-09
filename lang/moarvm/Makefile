# $OpenBSD: Makefile,v 1.6 2015/04/09 17:20:50 pascal Exp $

# theoretically supported by dyncall; mips* doesn't have libatomic_ops
ONLY_FOR_ARCHS =	amd64 arm i386 mips64 mips64el powerpc sparc sparc64

BROKEN-arm =		missing atomic ops (both AO_* and gcc builtin)
BROKEN-sparc64 =	undefined reference to `AO_fetch_compare_and_swap_full'

COMMENT =		virtual machine for nqp/rakudo

V =			2015.03
DISTNAME =		MoarVM-$V
PKGNAME =		moarvm-$V

SHARED_LIBS =		moar	2.0

CATEGORIES =		lang

HOMEPAGE =		http://moarvm.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Artistic2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		atomic_ops c kvm m pthread

MASTER_SITES =		http://moarvm.org/releases/

LIB_DEPENDS =		devel/boehm-gc,-atomic

MAKE_FLAGS =		NOISY=1

CFLAGS +=		-I${LOCALBASE}/include

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS +=	--cc="${CC}" --optimize=0 --prefix="${PREFIX}" \
			--has-libatomic_ops
CONFIGURE_ENV =		SO_VERSION="${LIBmoar_VERSION}"

NO_TEST =		Yes

.include <bsd.port.mk>
