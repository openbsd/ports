# $OpenBSD: Makefile,v 1.22 2015/08/25 14:21:25 sthen Exp $

SHARED_ONLY =		Yes

COMMENT =		Rakudo Perl 6 compiler

V =			2015.03
REVISION =		0
DISTNAME =		rakudo-$V

NQP_VERSION =		2015.03

CATEGORIES =		lang perl6

HOMEPAGE =		http://rakudo.org

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Artistic 2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atomic_ops kvm m moar pthread

GH_ACCOUNT =		rakudo
GH_PROJECT =		rakudo
GH_TAGNAME =		$V
MASTER_SITES =		${MASTER_SITES_GITHUB}

BUILD_DEPENDS =	lang/nqp>=${NQP_VERSION}
RUN_DEPENDS =	lang/nqp>=${NQP_VERSION}
LIB_DEPENDS =	lang/moarvm

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	/usr/bin/perl Configure.pl
CONFIGURE_ARGS +=	--prefix="${PREFIX}"

.include <bsd.port.mk>
