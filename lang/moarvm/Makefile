# $OpenBSD: Makefile,v 1.1.1.1 2014/05/25 21:49:55 pascal Exp $

# note about 3rdparty libs: there's another copy of libatomic_ops at
# devel/boehm-gc which this port will be able to use if that is updated.

SHARED_ONLY =		Yes
BROKEN-arm =		missing atomic ops

COMMENT =		virtual machine for nqp/rakudo

V =			2014.05
DISTNAME =		MoarVM-$V
PKGNAME =		moarvm-$V

SHARED_LIBS =		moar	0.0

CATEGORIES =		lang

HOMEPAGE =		http://moarvm.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Artistic2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c kvm m pthread

MASTER_SITES =		http://moarvm.org/releases/

MAKE_FLAGS =		NOISY=1

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS +=	--cc="${CC}" --optimize=0 --prefix="${PREFIX}"
CONFIGURE_ENV =		SO_VERSION="${LIBmoar_VERSION}"

NO_TEST =		Yes

.include <bsd.port.mk>
