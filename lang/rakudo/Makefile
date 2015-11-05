# $OpenBSD: Makefile,v 1.23 2015/11/05 11:52:32 pascal Exp $

SHARED_ONLY =		Yes

COMMENT =		Rakudo Perl 6 compiler

V =			2015.10
DISTNAME =		rakudo-$V

NQP_VERSION =		2015.10

CATEGORIES =		lang perl6

HOMEPAGE =		http://rakudo.org

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Artistic 2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atomic_ops ffi kvm m moar pthread

GH_ACCOUNT =		rakudo
GH_PROJECT =		rakudo
GH_TAGNAME =		$V
MASTER_SITES =		${MASTER_SITES_GITHUB}

BUILD_DEPENDS =	lang/nqp>=${NQP_VERSION} \
		math/libtommath
LIB_DEPENDS =	lang/moarvm
RUN_DEPENDS =	lang/nqp>=${NQP_VERSION}
LIB_DEPENDS =	lang/moarvm

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS +=	--prefix="${PREFIX}"

.include <bsd.port.mk>
