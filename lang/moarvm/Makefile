# $OpenBSD: Makefile,v 1.5 2015/02/03 13:24:19 pascal Exp $

ONLY_FOR_ARCHS =	amd64 arm i386 mips64el

SHARED_ONLY =		Yes
BROKEN-arm =		missing atomic ops

COMMENT =		virtual machine for nqp/rakudo

V =			2015.01
DISTNAME =		MoarVM-$V
PKGNAME =		moarvm-$V

SHARED_LIBS =		moar	1.0

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
